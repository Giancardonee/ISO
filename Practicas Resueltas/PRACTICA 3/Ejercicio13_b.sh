#!/bin/bash
# Crear un script que muestre 3 opciones: Listar, DondeEstoy y QuienEsta
# Seguna la opcion que elegida, se debra mostrar:

# Listar: Lista el contenido del directorio actual
# DondeEstoy: Muestra el directorio donde me encuentro ubicado
# QuienEsta Muestra los usuarios conectados al sistema



select opcion in "Listar" "DondeEstoy" "QuienEsta" "Salir" ; do
	case $opcion in 
	   "Listar") ls;;
	   "DondeEstoy") pwd;;
	   "QuienEsta") who;;
	   "Salir") exit 1;;
	esac 
done 
