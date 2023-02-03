if ($args.Count -ne 1){
    Write-Host "Un solo parametro"
} elseif ( -not (Test-Path $args[0])){
    Write-Host "La ruta especificada no existe: " $args[0]
} else {
    $env:Path = $env:Path + ";" + $args[0]
    $ruta = $args[0] + "/*.exe"
    $ruta2 = $args[0] + "/*.ps1"

    ls $ruta
    ls $ruta2
}