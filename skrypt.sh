#!/bin/bash

wd=$(pwd)
# echo $wd

# Nie ma 1. lub 2. argumentu
if [[ -z $1 || -z $2 ]]; then
    echo Nieprawidłowe argumenty
    exit 1
fi

extention=$1
destynationCatalog=$2

for file in ./*.$extention
do
    if [[ -f $file ]]; then
        echo $file
    fi
done