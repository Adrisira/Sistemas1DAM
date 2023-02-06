function menu ([string]$fichero){
    $opcion =""
    while (($opcion.Length -ne 1) -or ($opcion.ToLower() -lt 'a') -or ($opcion.ToLower() -gt 'c')){
       Write-Host "**** ATRIBUTO DE OCULTO – ARCHIVO: NOMBRE.EXT ****"
       Write-Host "A. QUITAR ATRIBUTO DE SOLO LECTURA"
       Write-Host "B. PONER ATRIBUTO DE SOLO LECTURA"
       Write-Host "C. SALIR"

       $opcion = Read-Host "Escoge una opción [A,B,C]?"

    }
    return $opcion.ToLower()
}

if ($args.Count -ne 1){
    Write-host "NUMERO INCORRECTO DE PARAMETROS"
    exit
} elseif ( -not (Test-Path $args[0])){
    Write-host "NO EXISTE EL FICHERO" $args[0]
    exit
}



do {
    $opcion = menu($args[0])
    switch($opcion){
        'a' {
            attrib -r $args[0]
            Write-Host "AHORA EL ARCHIVO " $args[0] " NO ES DE SOLO LECTURA"
            Read-Host "PULSA ENTER PARA CONTINUAR"
        }
        'b' {
            attrib +r $args[0]
            Write-Host "AHORA EL ARCHIVO " $args[0] " ES DE SOLO LECTURA"
            Read-Host "PULSA ENTER PARA CONTINUAR"
        }
    }

}while($opcion -ne 'c')