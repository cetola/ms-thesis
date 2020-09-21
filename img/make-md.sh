#!/bin/bash
for doc in *.docx
do
    fname=$(basename -- "$doc")
    name="${fname%.*}"
    pandoc -f docx -t markdown -o "$name.md" "$doc"
done
