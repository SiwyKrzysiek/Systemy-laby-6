#!/bin/bash

wd=$(pwd)
# echo $wd

[[ 5 -gt 2 || 10 -gt 0 ]] && echo Tak

if [[ -z $1 || -z $2 ]]; then
    echo Nieprawidłowe argumenty
fi

extention=$1
destynationCatalog=$2

for file in ./*.$extention
do
    if [[ -f $file ]]; then
        echo $file
    fi
done