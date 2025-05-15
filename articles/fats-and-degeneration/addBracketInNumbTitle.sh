#!/bin/bash

for file in *.pdf; do
    if [[ $file =~ ^([0-9]+)\ (.+)\.pdf$ ]]; then
        number="${BASH_REMATCH[1]}"
        rest="${BASH_REMATCH[2]}"
        new_name="[${number}] ${rest}.pdf"
        mv "$file" "$new_name"
        echo "Renamed: $file -> $new_name"
    fi
done

