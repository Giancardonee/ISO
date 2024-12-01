#!/bin/bash

arreglo=()

cantidad ()
{
	echo "Cantidad de archivos del directorio /var/log que contengan access en su nombre: ${#arreglo[*]}"
}

listar () 
{
 echo "${arreglo[*]}"
}

eliminar ()
{
  indiceBorrar=$1 
  cadena=$2
  indicesVector=$((${#arreglo[*]} -1 ))# Se le resta 1 porque ${#vector[*]} devuelve la cant de elementos, y el array comienza en indice 0 
  if [ $indiceBorrar -le $indicesVector ]; then
  	if [ "$cadena" == "logico" ]; then 
		unset ${arreglo[$indiceBorrar]}
	elif [ "$cadena" == "fisico" ]; then
		rm ${arreglo[$indiceBorrar]}   # Borrado fisico (filesystem)
		unset ${arreglo[$indiceBorrar]}# Borrado logico (vector) 
	fi 
  else 
      echo "No es posible borrar el indice $indiceBorrar, por que vector tiene hasta $indicesVector indices."
	  return 1
  fi
}

# Recorremos los elementos del /var/log y agregamos solo aquellos archivos que tengan el texto "access"
for elemento in /var/log/* ; do
	if [[ -f "$elemento" && "$elemento" == *"access"* ]]; then 
		arreglo+=("$elemento")
	fi 
done 

if [ ${#arreglo[*]} -eq 0 ]; then 
	echo "No es posible aplicar las funciones al arreglo por que el arreglo no contiene elementos que cumplan con la condicion."
	exit 1
fi 

select opcion in "Cantidad" "Listar" "Eliminar" "Salir"; do
	case $opcion in 
		"Cantidad") cantidad;;
		"Listar") listar;;
		"Eliminar")
			read -p "Ingrese primero el indice del arreglo. Luego ingrese tipo de borrado ( logico / fisico )" indice borrado 
	        eliminar $indice $borrado;;
	         "Salir") exit 0;;
		esac 

done 
