#!/bin/bash

function dsiplayHelp {
    echo -e "\nPOMOC"
    echo "Program kopiuje pliki o podanym rozszeżeniu z bierzącego katalogu do wskazanego podkatalogu"
    echo -e "\nUŻYCIE:"
    echo "skrypt.sh <rozszżenie> <nazwa katalogu>"
    echo -e "\nUWAGI:"
    echo "W przypadku gdy katalog o wskazanej nazwie nie istnieje zostanie on utworzony"
    exit 1
}

# Nie ma 1. lub 2. argumentu
if [[ $# -ne 2 ]]; then
    echo Nieprawidłowa liczba argumentów
    echo Spodziewane 2
    dsiplayHelp
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

exit