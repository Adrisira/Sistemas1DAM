#Repaso boletin 4
#Las rutas son simbolicas no estan bien

if (Test-Path 'C:\Users\Usuario\Documents\Sistemas\Sistemas1DAM\Boletin3'){
    Remove-Item 'C:\Users\Usuario\Documents\Sistemas\Sistemas1DAM\Boletin3' -Recurse
}

mkdir 'C:\Users\Usuario\Documents\Sistemas\Sistemas1DAM\Boletin3/EJER1'
mkdir 'C:\Users\Usuario\Documents\Sistemas\Sistemas1DAM\Boletin3/EJER2'
mkdir 'C:\Users\Usuario\Documents\Sistemas\Sistemas1DAM\Boletin3/EJER3'

#Nos situamos
cd 'C:\Users\Usuario\Documents'

copy 'C:\Users\Usuario\Documents\1º DMA\Sistemas\Tema 8\Repaso\Comparav2.ps1' './Boletin3/EJER1'
copy 'C:\Users\Usuario\Documents\1º DMA\Sistemas\Tema 8\Repaso\Comparav2.ps1' './Boletin3/EJER2'
copy 'C:\Users\Usuario\Documents\1º DMA\Sistemas\Tema 8\Repaso\Comparav2.ps1' './Boletin3/EJER3'

Rename-Item './Boletin3/EJER1/Comparav2.ps1' Ej1.ps1
Rename-Item './Boletin3/EJER2/Comparav2.ps1' Ej2.ps1
Rename-Item './Boletin3/EJER2/Comparav2.ps1' Ej3.ps1