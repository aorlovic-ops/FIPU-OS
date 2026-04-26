#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Potrebno je proslijediti samo jedan argument."
    exit 1
fi

direktorij="$1"
putanja_skripte="$(cd "$(dirname "$0")" && pwd)"
ciljni_direktorij="$putanja_skripte/$direktorij"

if [ ! -d "$ciljni_direktorij" ]; then
    echo "Direktorij ne postoji."
    exit 1
fi

cd "$ciljni_direktorij" || exit 1
zip svi_zapisi.zip *

echo "Datoteke su komprimirane u svi_zapisi.zip."
