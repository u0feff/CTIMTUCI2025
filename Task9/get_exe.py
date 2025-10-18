#!/usr/bin/env python3
import argparse
import mmap
from pathlib import Path

HTTP_START = b"HTTP/1."
HDR_END = b"\r\n\r\n"
CL_PREFIX = b"Content-Length:"

def main():
    ap = argparse.ArgumentParser(description="Carve raw HTTP bodies from a memory dump (no checks).")
    ap.add_argument("memdump", type=Path, help="Path to memory dump file")
    ap.add_argument("-o", "--outdir", type=Path, required=True, help="Output directory")
    ap.add_argument("-l", "--length", type=int, default=None, help="Only carve bodies with this exact Content-Length (optional)")
    args = ap.parse_args()

    args.outdir.mkdir(parents=True, exist_ok=True)

    with args.memdump.open("rb") as f, mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_READ) as mm:
        pos = 0
        hit = 0
        while True:
            # Find next "Content-Length:"
            k = mm.find(CL_PREFIX, pos)
            if k == -1:
                break

            # Find header start (HTTP/1.x) before it
            hdr_start = mm.rfind(HTTP_START, 0, k)
            if hdr_start == -1:
                pos = k + 1
                continue

            # Find end of headers
            hdr_end = mm.find(HDR_END, hdr_start)
            if hdr_end == -1 or hdr_end < k:
                pos = k + 1
                continue

            # Parse Content-Length (digits until end of the line)
            line_end = mm.find(b"\r\n", k)
            if line_end == -1:
                pos = hdr_end + 4
                continue

            clen_raw = mm[k + len(CL_PREFIX):line_end].strip()
            try:
                clen = int(clen_raw)
            except ValueError:
                pos = hdr_end + 4
                continue

            # Optional filter by --length
            if args.length is not None and clen != args.length:
                pos = hdr_end + 4
                continue

            # Body starts right after \r\n\r\n
            body_off = hdr_end + 4
            body = mm[body_off: body_off + clen]  # write whatever is available

            out_name = f"body_{hit:03d}_off_0x{body_off:x}_len_{len(body)}.bin"
            out_path = args.outdir / out_name
            with out_path.open("wb") as o:
                o.write(body)

            print(f"saved {out_name}")
            hit += 1

            # Move forward
            pos = hdr_end + 4

        print(f"Done. Saved: {hit}")

if __name__ == "__main__":
    main()
