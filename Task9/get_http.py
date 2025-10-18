#!/usr/bin/env python3
import argparse
import mmap
from pathlib import Path

def w(s):
    # widen ASCII -> UTF-16LE
    return b"".join(bytes((c, 0)) for c in s)

TOK_ASCI = [b"GET ", b"POST ", b"PUT ", b"HEAD ", b"HTTP/1."]
TOK_WIDE = [w(t) for t in TOK_ASCI]
END_ASCI = b"\r\n\r\n"
END_WIDE = w(b"\r\n\r\n")

def carve_headers(mm, needle, start_tokens, end_token, outdir, tag, back_limit=8192):
    hits = 0
    pos = 0
    nlen = len(needle)
    outdir.mkdir(parents=True, exist_ok=True)

    while True:
        k = mm.find(needle, pos)
        if k == -1:
            break

        window_beg = k - back_limit if k > back_limit else 0
        start = -1
        for tok in start_tokens:
            tpos = mm.rfind(tok, window_beg, k + 1)
            if tpos != -1 and tpos > start:
                start = tpos
        if start == -1:
            pos = k + nlen
            continue

        end = mm.find(end_token, start)
        if end == -1:
            pos = k + nlen
            continue
        end += len(end_token)

        blob = mm[start:end]
        out = outdir / f"http_hdr_{tag}_off_0x{start:x}_to_0x{end:x}.bin"
        with out.open("wb") as f:
            f.write(blob)
        print(f"saved {out.name} (start=0x{start:x}, end=0x{end:x}, len={len(blob)})")
        hits += 1

        pos = k + nlen

    return hits

def main():
    ap = argparse.ArgumentParser(description="Carve HTTP headers containing a given host (ASCII and UTF-16LE) from a memory dump.")
    ap.add_argument("memdump", type=Path, help="Path to memory dump (e.g., 'Task 9.mem')")
    ap.add_argument("-o", "--outdir", type=Path, required=True, help="Output directory")
    ap.add_argument("--host", required=True, help="Host to search (e.g., 192.168.50.105)")
    ap.add_argument("--back-bytes", type=int, default=8192, help="Max bytes to look back from hit for header start")
    args = ap.parse_args()

    host_ascii = args.host.encode("ascii", "ignore")
    host_wide = args.host.encode("utf-16le", "ignore")

    with args.memdump.open("rb") as f, mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_READ) as mm:
        total = 0
        total += carve_headers(mm, host_ascii, TOK_ASCI, END_ASCI, args.outdir, "ascii", args.back_bytes)
        total += carve_headers(mm, host_wide, TOK_WIDE, END_WIDE, args.outdir, "wide", args.back_bytes)
        print(f"Done. Total headers carved: {total}")

if __name__ == "__main__":
    main()
