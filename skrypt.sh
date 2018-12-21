#!/bin/bash

wd=$(pwd)
# echo $wd

# Nie ma 1. lub 2. argumentu
if [[ -z $1 || -z $2 ]]; then
    echo Nieprawidłowe argumenty
    exit 1
fi

# DODO Sprawdzenie czy 2. argument jest katalogiem jeśli istnieje

extention=$1
destynationCatalog=$2

for file in ./*.$extention
do
    if [[ -f $file ]]; then
        echo $file

        if [[ ! -e $destynationCatalog ]]; then
            echo "Katalog nie istnieje"
        fi
    fi
done