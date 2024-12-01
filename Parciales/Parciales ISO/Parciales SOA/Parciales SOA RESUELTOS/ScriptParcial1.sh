#!/bin/bash

arreglo=()

AgregarArchivosRegulares()
{
  ruta=$1 # Para que quede mas legible
  
  # Si no existe la ruta. Informamos. 
  if [ ! -e $ruta ]; then 
	  echo "La ruta proporcionada ( $ruta ) a la funcion AgregarArchivosRegulares, no existe."
	return 1 
  fi 
 # Recorremos cada elementos del directorio recibido 
  for elemento in "$ruta"/* ; do 
     # Verificamos que el elemento sea un archivo
     if [ -f $elemento ]; then 
	arreglo+=("$elemento")
    fi 
  done 
}

EliminarDelArreglo () 
{
  patron=$1
  borrarFileSystem="false"

  if [[ $# -eq 2 && "$2" == "-f" ]]; then 
          borrarFileSystem="true"
  fi 

  cantElementosArreglo=${#arreglo[*]}
  # Recorremos el arreglo y vamos borrando 
  for ((i=0; i<$cantElementosArreglo;i++)); do
   # Verificamos si el archivo coindice con el patron recibido
    if [[ ${arreglo[$i]} == *"$patron" ]]; then 
        tmp=${arreglo[$i]} # me guardo a una variable temporal antes de borrar.
	unset arreglo[$i]
	arreglo=("${arreglo[@]}") # Reindexea el array
       if [[ $borrarFileSystem == "true" ]]; then 
	  rm "$tmp"       
       fi 
    fi 
  done 
}

# Programa Principal
cantParametros=$#
if [[ $cantParametros -lt 3 ||  $cantParametros -gt 4 ]]; then 
   echo "El script debe recibir entre 3 y 4 parametros."
   exit 1
fi 

directorio=$1
opcion=$2

AgregarArchivosRegulares $directorio 

case $opcion in 
     "-a") AgregarArchivosRegulares $3;;
     "-d") 
	     if [ $cantParametros -eq 3 ]; then
		EliminarDelArreglo #3
	     else
		EliminarDelArreglo $3 $4
	     fi
	     ;; 
	*) echo "Opcion incorrecta."
esac 

# Imprimimos el arreglo.
echo "${arreglo[*]}"

