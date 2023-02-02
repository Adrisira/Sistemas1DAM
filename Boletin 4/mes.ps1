if ($args.Count -ne 1){
    Write-Host "Numero incorrecto de parametros. Hay " $args.Count " y se esperaban 1"
} elseif ($args[0].length -ne 1) {
    Write-Host "Se esperaba un solo caracter y se ha introducido" $args[0]
} elseif((([String]$args[0]).ToLower() -lt 'a') -or (([String]$args[0]).ToLower() -gt 'z')) {
    Write-Host "Se esperaba una letra y se ha introducido" $args[0]
} else {
    switch($args[0].ToLower()){
        'o'{
            Write-Host "Enero, Febrero, Marzo, Junio, Julio, Agosto"
            break
        }
    }
}