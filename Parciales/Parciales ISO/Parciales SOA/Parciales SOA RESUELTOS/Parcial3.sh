#!/bin/bash


encontreAlguno="false"

# Recorro cada linea del /etc/passwd. Me quedo con el nombre de usuario y el home de cada usuario
# y chequeo si el home es distinto de vacio y si es un directorio existente. Imprimo en pantalla el nombre
# Y si es necesario pongo encontreAlguno en true

for linea in $(cat /etc/passwd); do
    nombreUsuario=$(echo "$linea" | cut -d":" -f1)
    homeUsuario=$(echo "$linea" | cut -d":" -f6)

    if [[ ! -z $homeUsuario  && -d $homeUsuario ]]; then
	echo "== > $nombreUsuario tiene un directorio personal configurado y existe en el filesystem."
	encontreAlguno="true"
    fi

done

if [ $encontreAlguno == "false" ]; then 
	exit 1
fi 
