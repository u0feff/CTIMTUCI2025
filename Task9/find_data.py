#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Carve request-like records around keys (ASCII + UTF-16LE) from a memory dump.
- Searches for multiple keys (inboundData, outboundData, headers, ip pairs, etc.)
- For each hit, extracts a pre/post window and saves:
  - raw chunk (.bin)
  - normalized text (.txt): ASCII preserved; UTF-16LE collapsed to ASCII (every even byte)
  - summary (.summary.txt): attempts to extract i0/i1, id, Host header, headers, inbound/outbound base64 decoded

Usage:
  python3 carve_requests.py "Task 9.mem" -o finds \
    --keys inboundData outboundData '"Head":{"headers"' ipAddress '"i0":"' '"i1":"' responseTime requestTime \
    --pre 65536 --post 262144

Tested on Python 3.6+
"""
import argparse
import base64
import json
import mmap
import os
import re
from pathlib import Path

DEFAULT_KEYS = [
    'inboundData',
    'outboundData',
    '"Head":{"headers"',
    'ipAddress',
    '"i0":"',
    '"i1":"',
    'responseTime',
    'requestTime',
]

PRINTABLE = set(range(0x20, 0x7F)) | {0x09, 0x0A, 0x0D}

def to_utf16le(bs):
    out = bytearray()
    for b in bs:
        out.append(b)
        out.append(0)
    return bytes(out)

def normalize_ascii(b):
    # keep printable ASCII; replace others with space
    return bytes([c if c in PRINTABLE else 0x20 for c in b])

def normalize_wide(b):
    # collapse UTF-16LE to ASCII by taking even bytes
    ascii_bytes = b[0:len(b):2]
    return normalize_ascii(ascii_bytes)

def b64_clean_ascii(b):
    return b.replace(b"\r", b"").replace(b"\n", b"").replace(b"\t", b" ").replace(b" ", b"")

def b64_decode_loose_ascii(b):
    x = b64_clean_ascii(b)
    if not x:
        return b""
    try:
        return base64.b64decode(x, validate=False)
    except Exception:
        pad = (-len(x)) % 4
        try:
            return base64.b64decode(x + b'=' * pad, validate=False)
        except Exception:
            return b""

def extract_summary(norm_text):
    """
    Try to extract interesting fields from normalized ASCII text.
    Returns dict with best-effort keys.
    """
    txt = norm_text.decode('latin1', errors='ignore')

    # i0/i1 and id
    i0 = re.findall(r'"i0"\s*:\s*"([^"]+)"', txt)
    i1 = re.findall(r'"i1"\s*:\s*"([^"]+)"', txt)
    ids = re.findall(r'"id"\s*:\s*([0-9]+)', txt)

    # Host header
    host = re.findall(r'"key"\s*:\s*"Host"\s*,\s*"value"\s*:\s*"([^"]+)"', txt)
    if not host:
        # иногда как Host: 192.168...
        host2 = re.findall(r'Host["\s:]*([0-9a-zA-Z\.\-:_/]+)', txt)
        host = host2

    # headers (best effort)
    headers = re.findall(r'"key"\s*:\s*"([^"]+)"\s*,\s*"value"\s*:\s*"([^"]*)"', txt)

    # inbound/outbound base64 (в JSON-подобной форме)
    inbound_b64 = re.findall(r'inboundData"\s*:\s*"([A-Za-z0-9+/=\r\n]+)"', txt)
    outbound_b64 = re.findall(r'outboundData"\s*:\s*"([A-Za-z0-9+/=\r\n]+)"', txt)

    # Декод
    inbound_dec = []
    for b in inbound_b64:
        dec = b64_decode_loose_ascii(b.encode('ascii', 'ignore'))
        inbound_dec.append(dec.decode('latin1', 'ignore'))

    outbound_dec = []
    for b in outbound_b64:
        dec = b64_decode_loose_ascii(b.encode('ascii', 'ignore'))
        outbound_dec.append(dec.decode('latin1', 'ignore'))

    return {
        'i0': i0,
        'i1': i1,
        'id': ids,
        'Host': host,
        'headers': headers,
        'inbound_b64_count': len(inbound_b64),
        'outbound_b64_count': len(outbound_b64),
        'inbound_decoded_samples': inbound_dec[:3],   # ограничим для краткости
        'outbound_decoded_samples': outbound_dec[:3],
    }

def carve_hits(mm, size, needle, outdir, tag, pre, post, dedupe_radius):
    pos = 0
    hits = 0
    saved_starts = []

    while True:
        k = mm.find(needle, pos)
        if k == -1:
            break

        beg = k - pre if k > pre else 0
        end = k + len(needle) + post
        if end > size:
            end = size

        # dedupe: если близко к уже сохраненному началу, пропустим
        skip = False
        for s in saved_starts:
            if abs(s - beg) <= dedupe_radius:
                skip = True
                break
        if skip:
            pos = k + len(needle)
            continue

        raw = mm[beg:end]
        # Определяем wide ли блок эвристикой: много нулей на нечетных позициях?
        is_wide_guess = False
        sample = raw[:2048]
        if len(sample) >= 128:
            zeros = sum(1 for i in range(1, min(len(sample), 1024), 2) if sample[i] == 0)
            if zeros > 200:  # грубая эвристика
                is_wide_guess = True

        # Нормализация
        if is_wide_guess:
            norm = normalize_wide(raw)
        else:
            norm = normalize_ascii(raw)

        # Сохранение
        base = f"{tag}_off_0x{beg:x}_to_0x{end:x}"
        (outdir / "raw").mkdir(parents=True, exist_ok=True)
        (outdir / "txt").mkdir(parents=True, exist_ok=True)
        (outdir / "sum").mkdir(parents=True, exist_ok=True)

        with (outdir / "raw" / (base + ".bin")).open("wb") as f:
            f.write(raw)
        with (outdir / "txt" / (base + ".txt")).open("wb") as f:
            f.write(norm)

        # Summary
        summary = extract_summary(norm)
        with (outdir / "sum" / (base + ".summary.txt")).open("w", encoding="utf-8", errors="ignore") as f:
            f.write(json.dumps(summary, ensure_ascii=False, indent=2))

        print(f"[{tag}] saved window {base} (len={end-beg}, wide={is_wide_guess})")
        saved_starts.append(beg)
        hits += 1
        pos = k + len(needle)

    return hits

def main():
    ap = argparse.ArgumentParser(description="Carve request-like records around keys (ASCII+UTF-16LE) from a memory dump.")
    ap.add_argument("memdump", type=Path, help="Path to memory dump, e.g., 'Task 9.mem'")
    ap.add_argument("-o", "--outdir", type=Path, required=True, help="Output directory")
    ap.add_argument("--keys", nargs="+", default=DEFAULT_KEYS, help="Keys to search (space-separated)")
    ap.add_argument("--pre", type=int, default=65536, help="Bytes to include before hit (default: 65536)")
    ap.add_argument("--post", type=int, default=262144, help="Bytes to include after hit (default: 262144)")
    ap.add_argument("--dedupe-radius", type=int, default=32768, help="Do not save if a window start is within this many bytes of a previous one")
    args = ap.parse_args()

    outdir = args.outdir
    outdir.mkdir(parents=True, exist_ok=True)

    keys_ascii = [k.encode("ascii", "ignore") for k in args.keys]
    keys_wide  = [to_utf16le(k) for k in keys_ascii]

    with args.memdump.open("rb") as f, mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_READ) as mm:
        size = len(mm)
        total = 0
        # ASCII
        for k in keys_ascii:
            total += carve_hits(mm, size, k, outdir, "ascii", args.pre, args.post, args.dedupe_radius)
        # WIDE
        for k in keys_wide:
            total += carve_hits(mm, size, k, outdir, "wide", args.pre, args.post, args.dedupe_radius)
        print(f"Done. Total windows saved: {total}")

if __name__ == "__main__":
    main()
