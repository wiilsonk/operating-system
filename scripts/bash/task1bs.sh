#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

file="$1"

if [ ! -f "$file" ]; then
  echo "File does not exist."
  exit 1
fi

size=$(stat -c%s "$file")

if [ "$size" -gt 1048576 ]; then
  echo "Warning: File is too large"
else
  echo "File size is within limits."
fi
