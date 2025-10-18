#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Find and rank NTLM-like hashes in memory dumps (ASCII + UTF-16LE), with validation, context checks, dedup, and scoring.

What it finds:
- ASCII and UTF-16LE (wide) forms of:
  - single 32-hex tokens (MD4-length)
  - LM:NT pairs (32-hex:32-hex)
  - SAM-like lines: user:RID:LM:NT:
Validation & ranking:
- Score by structure: SAM (5) > LM:NT (3) > single (1)
- +3 if LM == aad3b435b51404eeaad3b435b51404ee (empty LM)
- +2 if NT != 31d6cfe0d16ae931b73c59d7e0c089c0 (не «пустой»)
- +2 if sensible RID (>= 500) in SAM
- +1 per matched context keyword near the hit (within +/- 256 bytes): ntlm, sam, lsa, user, domain, lsass, cached, hash, sec, account
- +2 if file path (when scanning a directory) contains lsass or SAM/SYSTEM

Dedup/grouping:
- Keys by normalized ASCII token (for single) or full pair/SAM line.
- Keeps count, best score, first N example offsets.

Output:
- Prints top N hits sorted by score desc, then count desc.
- Optional JSON/CSV with full data.
- Shows a short ASCII context snippet around first occurrence.

Usage:
  python3 find_ntlm_ranked.py dump.mem --top 50
  python3 find_ntlm_ranked.py dumps_dir --recursive --top 100 --json out.json
  python3 find_ntlm_ranked.py dump.mem --exclude-empty --min-score 5

Python 3.6+.
"""
import argparse, mmap, re, os, json, csv
from pathlib import Path
from typing import Dict, List

# Regexes
RX_ASC_SINGLE = re.compile(rb'(?<![0-9A-Fa-f])[0-9A-Fa-f]{32}(?![0-9A-Fa-f])')
RX_ASC_PAIR   = re.compile(rb'(?<![0-9A-Fa-f])[0-9A-Fa-f]{32}:[0-9A-Fa-f]{32}(?![0-9A-Fa-f])')
RX_ASC_SAM    = re.compile(rb'([^:\r\n]{1,64}):([0-9]{1,7}):([0-9A-Fa-f]{32}):([0-9A-Fa-f]{32}):')
RX_WIDE_SINGLE= re.compile(rb'(?:[0-9A-Fa-f]\x00){32}')
RX_WIDE_PAIR  = re.compile(rb'(?:[0-9A-Fa-f]\x00){32}:\x00(?:[0-9A-Fa-f]\x00){32}')
RX_WIDE_SAM   = re.compile(rb'((?:[^:\r\n]\x00){1,64}):\x00((?:[0-9]\x00){1,7}):\x00((?:[0-9A-Fa-f]\x00){32}):\x00((?:[0-9A-Fa-f]\x00){32}):\x00')

EMPTY_LM = b'aad3b435b51404eeaad3b435b51404ee'
EMPTY_NT = b'31d6cfe0d16ae931b73c59d7e0c089c0'

CONTEXT_KEYWORDS = [b'ntlm', b'sam', b'lsa', b'user', b'domain', b'lsass', b'cached', b'hash', b'sec', b'account']

def collapse_wide(bs: bytes) -> bytes:
    return bs[0:len(bs):2]

def ascii_preview(b: bytes, limit=160) -> str:
    s = b.decode('latin1', 'ignore')
    s = ''.join(ch if 32 <= ord(ch) < 127 or ch in '\r\n\t' else '.' for ch in s)
    s = s.replace('\r\n', '\n').replace('\r', '\n')
    return (s[:limit] + (' ...' if len(s) > limit else ''))

def score_hit(kind: str, payload: Dict, ctx_bytes: bytes, file_hint: str, exclude_empty: bool) -> int:
    score = 0
    if kind == 'SAM':
        score += 5
        rid = payload.get('rid')
        try:
            rid_i = int(rid) if rid is not None else 0
            if rid_i >= 500:
                score += 2
        except Exception:
            pass
        lm = payload.get('lm', b'').lower()
        nt = payload.get('nt', b'').lower()
        if lm == EMPTY_LM:
            score += 3
        if nt != EMPTY_NT:
            score += 2
        if exclude_empty and (lm == EMPTY_LM and nt == EMPTY_NT):
            return -9999
    elif kind == 'PAIR':
        score += 3
        lm, nt = payload.get('lm', b'').lower(), payload.get('nt', b'').lower()
        if lm == EMPTY_LM: score += 3
        if nt != EMPTY_NT: score += 2
        if exclude_empty and (lm == EMPTY_LM and nt == EMPTY_NT):
            return -9999
    else:  # SINGLE
        score += 1

    # context keywords around
    ctx_low = ctx_bytes.lower()
    for kw in CONTEXT_KEYWORDS:
        if kw in ctx_low:
            score += 1

    # file name hints
    if file_hint:
        fl = file_hint.lower()
        if 'lsass' in fl: score += 2
        if 'sam' in fl or 'system' in fl: score += 2

    return score

def add_hit(groups: Dict, key: str, record: Dict):
    g = groups.get(key)
    if not g:
        groups[key] = {
            'key': key,
            'kind': record['kind'],
            'count': 1,
            'best_score': record['score'],
            'examples': [record],
        }
    else:
        g['count'] += 1
        if record['score'] > g['best_score']:
            g['best_score'] = record['score']
        if len(g['examples']) < 3:
            g['examples'].append(record)

def scan_file(path: Path, args, groups: Dict):
    file_hint = str(path)
    with path.open('rb') as f, mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_READ) as mm:
        size = len(mm)
        # helper to grab context bytes around offset
        def ctx(off, radius=256):
            beg = max(0, off - radius)
            end = min(size, off + radius)
            return mm[beg:end]

        # SAM ASCII
        if not args.no_sam:
            for m in RX_ASC_SAM.finditer(mm):
                user, rid, lm, nt = m.group(1), m.group(2), m.group(3), m.group(4)
                off = m.start()
                sc = score_hit('SAM', {'rid': rid.decode('ascii','ignore'), 'lm': lm, 'nt': nt}, ctx(off), file_hint, args.exclude_empty)
                if sc <= 0: continue
                key = f"SAM|{user.decode('latin1','ignore')}|{rid.decode('ascii','ignore')}|{lm.decode('ascii','ignore')}|{nt.decode('ascii','ignore')}"
                add_hit(groups, key, {
                    'kind':'SAM','score':sc,'offset':off,'file':str(path),
                    'user':user.decode('latin1','ignore'),'rid':rid.decode('ascii','ignore'),
                    'lm':lm.decode('ascii','ignore'),'nt':nt.decode('ascii','ignore'),
                    'preview': ascii_preview(ctx(off))
                })

        # SAM WIDE
        if not args.no_sam:
            for m in RX_WIDE_SAM.finditer(mm):
                user = collapse_wide(m.group(1)).decode('latin1','ignore')
                rid  = collapse_wide(m.group(2)).decode('ascii','ignore')
                lm   = collapse_wide(m.group(3)).decode('ascii','ignore')
                nt   = collapse_wide(m.group(4)).decode('ascii','ignore')
                off = m.start()
                sc = score_hit('SAM', {'rid': rid, 'lm': lm.encode(), 'nt': nt.encode()}, ctx(off), file_hint, args.exclude_empty)
                if sc <= 0: continue
                key = f"SAM|{user}|{rid}|{lm}|{nt}"
                add_hit(groups, key, {
                    'kind':'SAM','score':sc,'offset':off,'file':str(path),
                    'user':user,'rid':rid,'lm':lm,'nt':nt,'preview': ascii_preview(ctx(off))
                })

        # PAIR ASCII
        if not args.no_pair:
            for m in RX_ASC_PAIR.finditer(mm):
                lm, nt = m.group(0).split(b':', 1)
                off = m.start()
                sc = score_hit('PAIR', {'lm': lm, 'nt': nt}, ctx(off), file_hint, args.exclude_empty)
                if sc <= 0: continue
                key = f"PAIR|{lm.decode('ascii','ignore')}|{nt.decode('ascii','ignore')}"
                add_hit(groups, key, {
                    'kind':'PAIR','score':sc,'offset':off,'file':str(path),
                    'lm':lm.decode('ascii','ignore'),'nt':nt.decode('ascii','ignore'),
                    'preview': ascii_preview(ctx(off))
                })

        # PAIR WIDE
        if not args.no_pair:
            for m in RX_WIDE_PAIR.finditer(mm):
                asc = collapse_wide(m.group(0)).decode('ascii','ignore')
                lm, nt = asc.split(':', 1)
                off = m.start()
                sc = score_hit('PAIR', {'lm': lm.encode(), 'nt': nt.encode()}, ctx(off), file_hint, args.exclude_empty)
                if sc <= 0: continue
                key = f"PAIR|{lm}|{nt}"
                add_hit(groups, key, {
                    'kind':'PAIR','score':sc,'offset':off,'file':str(path),
                    'lm':lm,'nt':nt,'preview': ascii_preview(ctx(off))
                })

        # SINGLE ASCII
        if not args.no_single:
            for m in RX_ASC_SINGLE.finditer(mm):
                token = m.group(0).decode('ascii','ignore')
                off = m.start()
                sc = score_hit('SINGLE', {}, ctx(off), file_hint, args.exclude_empty)
                if sc <= 0: continue
                key = f"SINGLE|{token}"
                add_hit(groups, key, {
                    'kind':'SINGLE','score':sc,'offset':off,'file':str(path),
                    'hash':token,'preview': ascii_preview(ctx(off))
                })

        # SINGLE WIDE
        if not args.no_single:
            for m in RX_WIDE_SINGLE.finditer(mm):
                token = collapse_wide(m.group(0)).decode('ascii','ignore')
                off = m.start()
                sc = score_hit('SINGLE', {}, ctx(off), file_hint, args.exclude_empty)
                if sc <= 0: continue
                key = f"SINGLE|{token}"
                add_hit(groups, key, {
                    'kind':'SINGLE','score':sc,'offset':off,'file':str(path),
                    'hash':token,'preview': ascii_preview(ctx(off))
                })

def main():
    p = argparse.ArgumentParser(description="Find, validate, and rank NTLM-like hashes in memory dumps.")
    p.add_argument("path", type=Path, help="Dump file or directory")
    p.add_argument("--recursive", action="store_true", help="Recurse into subdirectories (when path is a directory)")
    p.add_argument("--top", type=int, default=50, help="Show top N results (default 50)")
    p.add_argument("--min-score", type=int, default=0, help="Only display results with score >= MIN")
    p.add_argument("--exclude-empty", action="store_true", help="Exclude entries with both LM and NT empty defaults")
    p.add_argument("--no-single", action="store_true", help="Skip single 32-hex tokens")
    p.add_argument("--no-pair", action="store_true", help="Skip LM:NT pairs")
    p.add_argument("--no-sam", action="store_true", help="Skip SAM-like lines")
    p.add_argument("--json", type=Path, default=None, help="Write full results to JSON file")
    p.add_argument("--csv", type=Path, default=None, help="Write full results to CSV file")
    args = p.parse_args()

    # Collect files
    files: List[Path] = []
    if args.path.is_dir():
        if args.recursive:
            for root, _, fns in os.walk(args.path):
                for fn in fns:
                    files.append(Path(root) / fn)
        else:
            files = [args.path / f for f in os.listdir(args.path) if (args.path / f).is_file()]
    else:
        files = [args.path]

    groups: Dict[str, dict] = {}
    for f in files:
        try:
            scan_file(f, args, groups)
        except Exception as e:
            print(f"[WARN] Failed {f}: {e}")

    # Filter by min score, sort
    items = []
    for k, g in groups.items():
        if g['best_score'] >= args.min_score:
            items.append(g)
    items.sort(key=lambda x: (x['best_score'], x['count']), reverse=True)

    # Print top
    print(f"\nResults (top {min(args.top, len(items))} of {len(items)} total, min_score={args.min_score}):")
    for i, g in enumerate(items[:args.top], 1):
        ex = g['examples'][0]
        line = f"{i:3d}. kind={g['kind']:6s} score={g['best_score']:2d} count={g['count']:3d} key={g['key'][:100]}"
        print(line)
        print(f"     file={ex.get('file')} off=0x{ex.get('offset'):x}")
        if g['kind'] == 'SAM':
            print(f"     user={ex.get('user')} rid={ex.get('rid')} lm={ex.get('lm')} nt={ex.get('nt')}")
        elif g['kind'] == 'PAIR':
            print(f"     lm={ex.get('lm')} nt={ex.get('nt')}")
        elif g['kind'] == 'SINGLE':
            print(f"     hash={ex.get('hash')}")
        print(f"     ctx: {ex.get('preview')}\n")

    # JSON/CSV full dump
    if args.json:
        with args.json.open('w', encoding='utf-8') as jf:
            json.dump(items, jf, ensure_ascii=False, indent=2)
        print(f"Wrote JSON: {args.json}")
    if args.csv:
        with args.csv.open('w', newline='', encoding='utf-8') as cf:
            w = csv.writer(cf)
            w.writerow(['kind','key','best_score','count','file','offset','user','rid','lm','nt','hash','preview'])
            for g in items:
                for ex in g['examples']:
                    w.writerow([g['kind'], g['key'], g['best_score'], g['count'],
                                ex.get('file'), ex.get('offset'),
                                ex.get('user'), ex.get('rid'), ex.get('lm'), ex.get('nt'), ex.get('hash'), ex.get('preview')])
        print(f"Wrote CSV: {args.csv}")

if __name__ == "__main__":
    main()
