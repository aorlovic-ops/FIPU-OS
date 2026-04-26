#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Potrebno je proslijediti točno 2 argumenta."
    exit 1
fi

direktorij="$1"
nastavak="$2"

pronadeno=false

for datoteka in "$direktorij"/*; do
    if [ -f "$datoteka" ] && [[ "$(basename "$datoteka")" == *"$nastavak" ]]; then
        echo "$(basename "$datoteka")"
        pronadeno=true
    fi
done

if [ "$pronadeno" = false ]; then
    echo "Nema datoteka s nastavkom $nastavak."
fi