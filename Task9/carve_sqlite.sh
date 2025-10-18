#!/bin/bash

MEMDUMP="Task 9.mem"
OUTDIR="sqlite_carves"
SIZE=$((5*1024*1024)) # 5MB

mkdir -p "$OUTDIR"

# Find all hex offsets of "SQLite format 3"
strings -a -t x "$MEMDUMP" | grep 'SQLite format 3' | while read HEXOFFSET rest; do
  # Remove any "@" that may appear before SQLite format
  HEXOFFSET="${HEXOFFSET//@/}"
  # Convert hex to decimal
  DECOFFSET=$((0x$HEXOFFSET))
  # Create output filename
  OUTFILE="$OUTDIR/carve_${DECOFFSET}.sqlite"
  echo "Carving offset 0x$HEXOFFSET ($DECOFFSET) to $OUTFILE"
  dd if="$MEMDUMP" of="$OUTFILE" bs=1 skip=$DECOFFSET count=$SIZE status=none
done
