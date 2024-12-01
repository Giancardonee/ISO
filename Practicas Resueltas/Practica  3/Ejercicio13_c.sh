#!/bin/bash
# Cree un script que reciba como parametro el nombre de un archivo e informe si existe o no. 
# En caso de que exista, informe si es un directorio o un archivo. 
# En caso de que no exista,cree un directorio con el nombre recibido por parametro. 

# Chequeamos si recibimos un parametro

if [ $# -ne 1 ]; then
	echo "Se debe recibir un parametro"
	exit 1
fi 

# Evaluamos si existe el parametro recibido
if [ -e $1 ]; then 
	echo "El parametro existe. "
	if [ -d $1 ]; then
		echo "El parametro es un directorio"
	elif [ -f $1 ]; then 
		echo "El parametro es un archivo"
	fi 
else # Debemos crear el directorio
	echo "Creando el directorio... $1"
	mkdir $1
	echo "Directorio creado exitosamente!"
fi 
