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

if [[ ! -e $destynationCatalog ]]; then
    # Katalog nie istnieje
    mkdir $destynationCatalog
else
    if [[ ! -d $destynationCatalog ]]; then
        echo "Istnieje już plik o nazwie wskazanej przez drugi argument!"
        exit 1
    fi
fi

for file in ./*.$extention
do
    if [[ -f $file ]]; then
        cp $file $destynationCatalog/$file
    fi
done