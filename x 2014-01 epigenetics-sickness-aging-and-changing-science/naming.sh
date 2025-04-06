#!/bin/bash

for file in *.pdf *.Pdf *.PDF; do
    if [ -f "$file" ]; then
        base_name="${file%.*}"
        new_name=$(echo "$base_name" | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2))}1')
        mv "$file" "${new_name}.pdf"
        echo "Renamed: $file -> ${new_name}.pdf"
    fi
done

