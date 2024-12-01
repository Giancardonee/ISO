#!/bin/bash
# Este script recibe como parametro el nombre de un directorio. Valida si el mismo existe y de no existir se termina el script 
# con codigo de error 4. Si el directorio existe debera contar por separado la la cantidad de archivos que se encuentra en el directorio
# para los cuales el usuario que lo ejecuta tiene permiso de lectura y de escritura. 
# Al finalizar el script informa estos valores en pantalla.
# Los subdirectorios no deben procesarse ni ser tenidos en cuenta para el calculo 


# Primero verificamos si recibimos la ruta como parametro
if [ $# -ne 1 ]; then 
	echo "ERROR: El script debe recibir un parametro"
	exit 1
fi 

# Evaluamos si existe el directorio recibido por parametro
directorio=$1
if ! [ -d "$directorio" ]; then  # si no existe. Informamos y terminamos el script con codigo 4
	echo "El directorio no existe."
	exit 4
fi 

# Recorremos el directorio recibido
cantLectura=0
cantEscritura=0
for elemento in "$directorio"/* ;do
     # Verificamos si el elemento es un archivo
	if [ -f $elemento ]; then 
		# Verificamos si el usuario tiene permiso de lectura
		if [ -r $elemento ]; then
			((cantLectura++))
		fi
		# Verificamos si el usuario tiene permiso de escritura
		if [ -w $elemento ]; then
			((cantEscritura++))
		fi
		
	fi
done 

# Informamos: 
echo "Cantidad de archivos del directorio $directorio , para los cuales el usuario tiene permiso de lectura son: $cantLectura"
echo "Cantidad de archivos del directorio $directorio , para los cuales el usuario tiene permiso de escritura son: $cantEscritura"
