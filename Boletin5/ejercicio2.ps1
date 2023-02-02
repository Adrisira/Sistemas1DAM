if ($args.Count -lt 2) {
    Write-Host "Hay que introducir mas datos"
} else {

    $mayor = $args[0]
    for ($index = 0; $index -lt $args.count; $index++){
        if ($args[$index] -gt $mayor){
            $mayor = $args[$index]
        }
    }
    Write-Host $mayor
}