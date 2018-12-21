#!/bin/bash

function dsiplayHelp {
    echo -e "\nPOMOC"
    echo "Program kopiuje pliki o podanym rozszerzeniu z bierzącego katalogu do wskazanego podkatalogu"
    echo -e "\nUŻYCIE:"
    echo "skrypt.sh <rozszerzenie> <nazwa katalogu>"
    echo -e "\nUWAGI:"
    echo "W przypadku gdy katalog o wskazanej nazwie nie istnieje zostanie on utworzony"
    exit 1
}

# Sprawdzenie czy liczba argumentów jest prawidłowa
if [[ $# -ne 2 ]]; then
    echo Nieprawidłowa liczba argumentów
    echo Spodziewane 2
    dsiplayHelp
fi

# Przygotowanie katalogu
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

# Kopiowanie plików
for file in ./*.$extention
do
    if [[ -f $file ]]; then
        cp $file $destynationCatalog/$file
    fi
done

exit