#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Сканирует дамп на base64 (ASCII и UTF-16LE), но перед декодированием
разделяет склеенные base64-блоки (..==)(..==)(..=) на отдельные сегменты.
Декодирует каждый сегмент и выводит/сохраняет ТОЛЬКО совпадения по ключевым паттернам:
- cmd/powershell
- потенциальные пароли/логины
- 'denis'

Примеры:
  python3 scan_dump_b64_hits_split.py "Task 9.mem"
  python3 scan_dump_b64_hits_split.py "Task 9.mem" -o hits_b64 --min-b64 24
  python3 scan_dump_b64_hits_split.py "Task 9.mem" --only-wide
"""

import argparse
import base64
import mmap
import re
from pathlib import Path

B64_ASCII = set(b"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=")
WS = set(b" \t\r\n")

# Ключевые паттерны (без учёта регистра)
DEFAULT_PATTERNS = [
    # cmd / консоль
    br"\bcmd\.exe\b",
    br"\bC:\\Windows\\System32\\cmd\.exe\b",
    br"[A-Za-z]:\\[^>\r\n]{0,120}>\s",     # приглашение вида C:\path>
    br"\bnet\s+use\b",
    br"\brunas\b",
    br"\bcmdkey\b",
    # PowerShell
    br"\bpowershell(\.exe)?\b",
    br"\bWindows PowerShell\b",
    br"\bEncodedCommand\b",
    br"\bFromBase64String\b",
    br"\bInvoke-(Expression|WebRequest)\b",
    br"\bIEX\b",
    # Учетные данные
    br"\bpasswords?\b",
    br"\bpasswd\b",
    br"\bpassphrase\b",
    br"\bDefaultPassword\b",
    br"\bAutoAdminLogon\b",
    br"\blogin\b",
    br"\buser(name)?\b",
    br"\bpwd\b",
    br"\bpwd\s*=",
    br"\bPassword\s*=",
    # Пользователь Denis
    br"\bdenis\b",
    br"[A-Za-z]:\\Users\\Denis\\",
]

# Регэксп для вырезания подряд идущих base64-сегментов, оканчивающихся на '=' или '=='
SEG_RE = re.compile(
    rb'(?:[A-Za-z0-9+/]{4})*'          # любые полные кванты по 4
    rb'(?:[A-Za-z0-9+/]{2}==|'         # ... затем 2 и '=='
    rb'[A-Za-z0-9+/]{3}=)'             # ... или 3 и '='
)

def is_printable_ascii(c: int) -> bool:
    return (0x20 <= c <= 0x7E) or (c in (0x09, 0x0A, 0x0D))

def text_ratio(data: bytes, thresh: float = 0.80) -> float:
    if not data:
        return 0.0
    printable = sum(1 for c in data if is_printable_ascii(c))
    return printable / float(len(data))

def clean_b64_ascii(b: bytes) -> bytes:
    return b.translate(None, b" \t\r\n")

def clean_b64_wide(b: bytes) -> bytes:
    # схлопнуть UTF-16LE в ASCII (чётные байты), затем убрать пробелы/CR/LF
    ascii_bytes = b[0:len(b):2]
    return clean_b64_ascii(ascii_bytes)

def split_b64_segments_ascii(cleaned: bytes):
    """
    Разделяет склеенную base64-строку на сегменты по паддингу (= или ==).
    Возвращает список байтовых сегментов (без пробелов/CRLF).
    """
    segs = [m.group(0) for m in SEG_RE.finditer(cleaned)]
    # Хвост без '=': если длина % 4 == 0 и не пусто — тоже добавить как сегмент
    end = segs[-1].__len__() if segs else 0
    if segs:
        last_end = list(SEG_RE.finditer(cleaned))[-1].end()
        tail = cleaned[last_end:]
    else:
        tail = cleaned
    if tail and len(tail) % 4 == 0:
        segs.append(tail)
    # фильтруем пустые
    return [s for s in segs if s]

def b64_decode_ascii_segment(seg: bytes) -> bytes:
    try:
        return base64.b64decode(seg, validate=False)
    except Exception:
        pad = (-len(seg)) % 4
        try:
            return base64.b64decode(seg + b"=" * pad, validate=False)
        except Exception:
            return b""

def b64_decode_wide_segment(seg_wide: bytes) -> bytes:
    asc = clean_b64_wide(seg_wide)
    return b64_decode_ascii_segment(asc)

def scan_b64_runs_ascii(buf, min_len):
    n = len(buf)
    i = 0
    while i < n:
        # пропуск до допустимого символа
        while i < n and (buf[i] not in B64_ASCII and buf[i] not in WS):
            i += 1
        if i >= n:
            break
        start = i
        # накапливаем подряд base64 + пробелы/CRLF
        while i < n and (buf[i] in B64_ASCII or buf[i] in WS):
            i += 1
        run = buf[start:i]
        cleaned = clean_b64_ascii(run)
        if len(cleaned) >= min_len:
            yield (start, cleaned)

def scan_b64_runs_wide(buf, min_len):
    n = len(buf)
    i = 0
    def is_wide_pair(idx):
        if idx + 1 >= n:
            return False
        c = buf[idx]
        z = buf[idx + 1]
        return z == 0x00 and (c in B64_ASCII or c in WS)
    while i < n:
        while i < n and not is_wide_pair(i):
            i += 1
        if i >= n:
            break
        start = i
        while i < n and is_wide_pair(i):
            i += 2
        run = buf[start:i]
        cleaned = clean_b64_wide(run)
        if len(cleaned) >= min_len:
            # вернём wide-кусок, но декодить будем по сегментам после схлопывания
            yield (start, run)

def compile_patterns(extra):
    pats = list(DEFAULT_PATTERNS)
    for s in extra:
        try:
            pats.append(s.encode("utf-8"))
        except Exception:
            pass
    return [re.compile(p, re.IGNORECASE) for p in pats]

def find_matches(decoded: bytes, patterns):
    for rx in patterns:
        if rx.search(decoded):
            return rx
    return None

def save_hit(outdir: Path, kind: str, idx: int, abs_off: int, seg_idx: int, raw_seg: bytes, decoded: bytes):
    if outdir is None:
        return
    d = outdir / kind
    d.mkdir(parents=True, exist_ok=True)
    base = f"hit_{idx:06d}_seg_{seg_idx:02d}_off_0x{abs_off:x}"
    (d / (base + ".b64")).write_bytes(raw_seg)
    (d / (base + ".decoded.bin")).write_bytes(decoded)
    if text_ratio(decoded) >= 0.80:
        (d / (base + ".decoded.txt")).write_bytes(decoded)

def print_context(decoded: bytes, width: int = 240):
    try:
        s = decoded.decode("utf-8", "ignore")
    except Exception:
        s = decoded.decode("latin1", "ignore")
    s = s.replace("\r\n", "\n").replace("\r", "\n")
    if len(s) > width:
        s = s[:width] + " ..."
    print(s.strip("\n"))

def main():
    ap = argparse.ArgumentParser(description="Scan dump for base64, split concatenated tokens before decode, and print/save only interesting hits.")
    ap.add_argument("file", type=Path, help="Path to memory dump")
    ap.add_argument("-o", "--outdir", type=Path, default=None, help="Directory to save ONLY matching samples")
    ap.add_argument("--min-b64", type=int, default=24, help="Minimum base64 length (after whitespace removal)")
    ap.add_argument("--max-hits", type=int, default=None, help="Stop after N total matching segments")
    ap.add_argument("--only-ascii", action="store_true", help="Scan only ASCII base64")
    ap.add_argument("--only-wide", action="store_true", help="Scan only UTF-16LE base64")
    ap.add_argument("--extra-pattern", action="append", default=[], help="Add extra regex (UTF-8) to match in decoded")
    args = ap.parse_args()

    patterns = compile_patterns(args.extra_pattern)
    saved = 0
    seg_counter = 0

    with args.file.open("rb") as f, mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_READ) as mm:
        # ASCII
        if not args.only_wide:
            for off, cleaned in scan_b64_runs_ascii(mm, args.min_b64):
                # режем на сегменты
                segs = split_b64_segments_ascii(cleaned)
                for j, seg in enumerate(segs):
                    dec = b64_decode_ascii_segment(seg)
                    if not dec:
                        continue
                    rx = find_matches(dec, patterns)
                    if rx:
                        saved += 1
                        seg_counter += 1
                        print(f"\n[ASCII] MATCH #{saved} off=0x{off:x} seg={j} dec_len={len(dec)} pattern=/{rx.pattern.decode('utf-8','ignore')}/")
                        print("----- decoded context -----")
                        print_context(dec)
                        print("---------------------------")
                        save_hit(args.outdir, "ascii", saved, off, j, seg, dec)
                        if args.max_hits and saved >= args.max_hits:
                            print(f"\nDone. Total matching segments: {saved}")
                            return

        # WIDE
        if (args.max_hits is None or saved < args.max_hits) and not args.only_ascii:
            for off, run_wide in scan_b64_runs_wide(mm, args.min_b64):
                cleaned_ascii = clean_b64_wide(run_wide)
                segs = split_b64_segments_ascii(cleaned_ascii)
                for j, seg in enumerate(segs):
                    dec = b64_decode_ascii_segment(seg)
                    if not dec:
                        continue
                    rx = find_matches(dec, patterns)
                    if rx:
                        saved += 1
                        seg_counter += 1
                        print(f"\n[WIDE ] MATCH #{saved} off=0x{off:x} seg={j} dec_len={len(dec)} pattern=/{rx.pattern.decode('utf-8','ignore')}/")
                        print("----- decoded context -----")
                        print_context(dec)
                        print("---------------------------")
                        save_hit(args.outdir, "wide", saved, off, j, seg, dec)
                        if args.max_hits and saved >= args.max_hits:
                            print(f"\nDone. Total matching segments: {saved}")
                            return

    if saved == 0:
        print("No matching base64-decoded segments found (cmd/powershell/credentials/denis).")
    else:
        print(f"\nDone. Total matching segments: {saved}")

if __name__ == "__main__":
    main()
