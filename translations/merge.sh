#!/usr/bin/env bash

dir="$(dirname "$0")"

echo location,source,target > "$dir/source.csv"
echo loc_keys,english,ukrainian >> "$dir/source.csv"
echo LANGUAGE_UK,Українська,Українська >> "$dir/source.csv"
for file in "$dir/source/"*; do
  tail -n+3 "$file" >> "$dir/source.csv"
done
