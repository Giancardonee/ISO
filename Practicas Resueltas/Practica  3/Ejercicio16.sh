#!/bin/bash

# Este script recibe como parametro una extension y hace un reporte con 2 columnas: 
# El nombre de usuario y la cantidad de arrchivos con esa extension. Se guarda el resultado en un archivo llamado reporte.txt


# Verificamos si se paso la extension como parametro
if [ $# -ne 1 ]; then 
	echo "Se debe proporcionar un solo parametro: La extension"
	exit 1
fi 

# Para mejor legibilidad
extension=$1

# Archivo reporte
reporte="Reporte.txt"

# Sobreescribimos el reporte.txt , dejandolo vacio.
echo > "$reporte"

# Recorremos todos los usuarios en el sistema 
for linea in $(cat /etc/passwd); do 
   	# Nos quedamos con el usuario 
	usuario=$(echo "$linea" | cut -f1 -d:)
	# Nos quedamos con el home del usuario
	home=$(echo "$linea" | cut -f6 -d:)
	
	# Si existe el directori home. Contamos los archivos con la extension recibida y lo mandamos al reporte
	# En reporte vamos a tener: <Usuario> <cantidad>
	if [ -d "$home" ]; then 
		echo "$user $(find  "$home" -name "*.$extension" | wc -l)" >> Reporte.txt 
	fi 
done 
