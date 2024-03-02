#!/bin/bash
for file in *; do
    if [ -f "$file" ]; then
        size=$(ls -l "$file" | awk '{print $5}')
        words=$(wc -w "$file" | cut -d' ' -f1)
        echo "File: $file - Size: $size bytes - Words: $words"
    fi
done
