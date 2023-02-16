if (($args.Count -lt 2) -or ($args.Count -gt 2)){
    Write-Host "Numero incorrecto de parametros. Hay " $args.Count " y se esperaban 2"
} else {
    if ($args[0] -lt $args[1]){
        Write-Host $args[0] "Es menor que " $args[1]
    } elseif ($args[0] -eq $args[1]){
        Write-Host $args[0] "Es igual que " $args[1]
    } else {
         Write-Host $args[0] "Es mayor que " $args[1]
    }

}

