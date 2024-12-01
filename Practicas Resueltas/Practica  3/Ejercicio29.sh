#!/bin/bash

# Obtengo todos los archivos del directorio /home que terminen en .doc,y los almaceno en un arreglo

archivosHome=($(find /home/gianca/Practica3 -type f -name "*.txt"))

#VerArchivo: Busca el archivo, si existe lo imprime en pantalla. Si no existe retorna 5

verArchivo()
{
  # Chequeamos si se recibio un parametro ( el archivo a mostrar )
  if [ $# -eq 0 ]; then 
       echo "Se debe recibir un parametro."
       exit 0
  fi
  # Buscamos el archivo en el array
  encontre="false"
  pos=0
  cantElementosArray=${#archivosHome[@]}
  nombreArchivo=$1 # para hacerlo mas legible
  while [[ "$encontre" == "false" && $pos -lt $cantElementosArray ]]; do 
  	if [ "$nombreArchivo" == ${archivosHome[$pos]} ]; then 
		encontre=true
	else 
		((pos++))
     	fi 
  done

  # Si lo encontre. Muestro el archivo
  if [ "$encontre" == "true" ]; then 
	  cat ${archivosHome[$pos]}
  else 
	echo "Archivo no encontrado"
	return 5
  fi 
}

 # Muestro la cantidad de archivos en el /home que terminan con .doc
 # Como voy a tener los archivos en el vector, imprimo la cantidad de elementos del vector
 cantidadArchivos () 
 {
   echo "La cantidad de archivos que terminan en .doc son: ${#archivosHome[@]}"
   echo "Nombre del primer archivo: ${archivosHome[0]}"
}


 borrarArchivo ()
 {
 	# Chequeamos si recibimos un parametro ( el archivo a borrar )
	if [ $# -eq 0 ]; then 
		echo "Se debe proporcionar un parametro"
		exit 0
	fi 

	nombreArchivo=$1
	pos=0
	encontre="false"
	cantidadElementosArray=${#archivosHome[@]}
	while [[ "$encontre" == "false" && $pos -lt $cantidadElementosArray ]]; do
		if [ "$nombreArchivo" == ${archivosHome[$pos]} ]; then 
			encontre="true"
		else 
			((pos++))
		fi
	done 

	# Si no encontre el archivo, muestro mensaje de error y retorno 10
	if [ "$encontre" == "false" ]; then 
		echo "Archivo no encontrado"
		return 10
	fi

	# Si entra aca es porque el archivo se encontro. 
	echo "Desea borrar el archivo logicamente? ( SI o NO ):  "
	read opcion
	if [ "$opcion" == "SI" ]; then 
		unset archivosHome[$pos]
		echo "Se borro logicamente"
		echo "Cantidad de elementos actuales: ${#archivosHome[@]}"
	elif [ "$opcion" == "NO" ]; then 
		rm ${archivosHome[$pos]}
		unset archivosHome[$pos]
		echo "Se borro logica y fisicamente"
	else 
		echo "Ingrse en mayuscula SI o NO"
	fi
}	

  # = = = = = = = = = = = = = = = = =
  if [ $# -eq 0 ]; then
	  cantidadArchivos
	  exit 0
  fi 
  if [ $# -eq 2 ]; then 
	case $1 in 
	   "verArchivo") verArchivo $2 ;; 
	   "borrarArchivo") borrarArchivo $2 ;;
	   *) echo "Ingresa verArchivo o borrarArchivo"
	esac 
  fi 


