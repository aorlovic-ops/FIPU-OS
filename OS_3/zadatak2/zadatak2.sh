#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Potrebno je proslijediti točno 1 argument."
    exit 1
fi

broj=$1

if ! [[ "$broj" =~ ^[0-9]+$ ]] || [ "$broj" -lt 1 ] || [ "$broj" -gt 10 ]; then
    echo "Argument mora biti broj između 1 i 10."
    exit 1
fi
a
> brojevi.txt  

for ((i=1; i<=broj; i++))
do
    echo "$i" >> brojevi.txt
done

echo "Datoteka brojevi.txt uspješno kreirana."
