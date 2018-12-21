#!/bin/bash

wd=$(pwd)
# echo $wd

extention=sh

for file in ./*.$extention
do
    if [[ -f $file ]]; then
        echo $file
    fi
done