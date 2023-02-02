if ($args.count -eq 2){
    if ($args[0] -eq $args[1]){
        write-host "Son iguales"
    } elseif ($args[0] -ne $args[1]){
	    write-host "Son distintos"
    }     
} else { 
    write-host "Numero erroneo de parametros"
}