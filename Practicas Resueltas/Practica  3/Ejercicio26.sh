#!/bin/bash

# Este script debe recibir al momento de su invocacion, una cantidad desconocida de parametros.
# Cada parametro representa la ruta absoluta de un archivo o directorio en el sistema. 
# El script itera sobre todos los parametros y solo para aquellos que se encuentran en posiciones impares, verifica si el archivo o directorio
# Eciste en el sistema. Imprimiendo por pantalla si es un Directorio o un Archivo. Ademas debera informar la cantidad de archivos o directorios inexistentes. 




if [ $# -eq 0 ]; then 
	echo "ERROR: Se debe recibir al menos un parametro"
	exit 1
fi 

# Iteramos sobre todos los parametros, y solo para aquellos que son impares verificamos
inexistentes=0
cantParametros=$#
for ((i=1;i<=$cantParametros;i++)); do
    # Evaluamos si el indice es impar
    if (( i % 2 == 1 ));then 
    	ruta=${!i}
	if [ -e $ruta ]; then
		if [ -f $ruta ]; then
			echo "$ruta es un archivo."
		elif [ -d $ruta ]; then
			echo "Es un directorio"
		fi
	else ((inexistentes++))
	fi 
    fi
done 

echo "La cantidad de archivos inexistentes son: $inexistentes"
