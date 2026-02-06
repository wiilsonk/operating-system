#!/bin/bash

for f in *.txt; do
  if [ -f "$f" ]; then
    mv "$f" "OLD_$f"
  fi
done
