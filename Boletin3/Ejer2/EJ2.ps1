if (Test-Path './Boletin3/' ){
    rm './Boletin3/' -Recurse
}

mkdir ./Boletin3/Ejer1 
mkdir ./Boletin3/Ejer2 
mkdir ./Boletin3/Ejer3 

copy .\Compara.ps1 ./Boletin3/Ejer1/
copy .\copia.ps1 ./Boletin3/Ejer2/
copy .\Compara.ps1 ./Boletin3/Ejer3/

Rename-Item ./Boletin3/Ejer1/Compara.ps1 EJ1.ps1
Rename-Item ./Boletin3/Ejer2/copia.ps1 EJ2.ps1
Rename-Item ./Boletin3/Ejer3/Compara.ps1 EJ1.ps1