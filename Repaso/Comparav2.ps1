#Conversion numero entero

function test-numero {
    param([string] $cadena)
    try{
    [int] $entero = $cadena
    return $true
    } catch {
        return $false
    }

}


if ($args.Count -ne 2){
    write-host "Numero de parametros incorrecto"
    exit
}

if ((test-numero $args[0]) -eq $false){
    Write-Host "El primer argumento no es un numero: " $args[0]
    exit
}

if ((test-numero $args[1]) -eq $false){
    Write-Host "El primer argumento no es un numero: " $args[1]
    exit
}

[int] $num1 = $args[0]
[int] $num2 = $args[1]

if ($num1 -gt $num2){
    Write-Host "El primer numeroes mayor: " $num1 ">" $num2
} elseif  ($num1 -lt $num2){
    Write-Host "El segundo numeroes mayor: " $num1 "<" $num2
} else {
     Write-Host "Los dos numeros son iguales: " $num1 "=" $num2
}

