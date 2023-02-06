function menu ([string]$fichero){
    $opcion =""
    while (($opcion.Length -ne 1) -or ($opcion.ToLower() -lt 'a') -or ($opcion.ToLower() -gt 'c')){
       Write-Host "**** ATRIBUTO DE OCULTO – ARCHIVO: NOMBRE.EXT ****"
       Write-Host "A. QUITAR ATRIBUTO DE OCULTO"
       Write-Host "B. PONER ATRIBUTO DE OCULTO"
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
            attrib -h $args[0]
            Write-Host "AHORA EL ARCHIVO " $args[0] " NO ES OCULTO"
            Read-Host "PULSA ENTER PARA CONTINUAR"
        }
        'b' {
            attrib +h $args[0]
            Write-Host "AHORA EL ARCHIVO " $args[0] " ES OCULTO"
            Read-Host "PULSA ENTER PARA CONTINUAR"
        }
    }

}while($opcion -ne 'c')