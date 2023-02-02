if ($args.Count -ne 2){
    Write-Host "Numero erroneo de parametros"
} else {
    $fichero = $args[0]
    $nombreNuevo = $args[1]

    if ( -not (Test-Path $fichero) ){
        Write-Host "ERROR: No existe el fichero" $fichero
    }elseif (Test-Path $nombreNuevo) {
        Write-Host "ERROR: Existe el fichero" $nombreNuevo
    }else{
        Rename-Item $fichero $nombreNuevo
     }
 }


