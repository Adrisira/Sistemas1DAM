if ($args.count -eq 2){
write-host "Se ha introducido un parametro"
	write-host "Este:" $args[0] ", y este: " $args[1] 
	
} else {
	write-host "Numero erroneo de parametros"
}
