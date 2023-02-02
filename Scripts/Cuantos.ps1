if ($args.count -lt 1 -or $args.count -gt 2){
	write-host "Numero erroneo de parametros"
} elseif ($args.count -eq 1){
	write-host "Se ha introducido un parametro"
	write-host "Este:" $args[0]
} else {
	write-host "Se ha introducido un parametro"
	write-host "Este:" $args[0] ", y este: " $args[1] 
}