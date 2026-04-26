#!/bin/bash

direktorij="screenshots"
brojac=1

if [ ! -d "$direktorij" ]; then
    echo "Direktorij screenshots ne postoji."
    exit 1
fi

for datoteka in "$direktorij"/*; do
    if [ -f "$datoteka" ]; then
        ime=$(basename "$datoteka")
        novo_ime="screenshot_${brojac}_${ime}"

        mv "$datoteka" "$direktorij/$novo_ime"

        echo "$novo_ime"
        brojac=$((brojac + 1))
    fi
done

echo "Preimenovane datoteke:"
ls "$direktorij"
