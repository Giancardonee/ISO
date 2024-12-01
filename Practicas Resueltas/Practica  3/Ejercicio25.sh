#!/bin/bash

# Este script agrega en un arreglo todos los nombres de los usuarios del sistema, que pertenecen al grupo "users"

# El script puede recibir como parametro: 
# "-b n": Retorna el elemento de la posicion n del arreglo si el mismo existe. Caso contrario, un mensaje de error
# "-l" : Devuelve la longitud del arreglo
# "-i" : Imprime todos los elementos del arreglo en pantalla

# Funcion "-l" : Devuelve la longitud 
DevolverLongitud () 
{
  echo ${#arrayUsuarios[*]}
}

# Funcion "-b n" : Retorna el elemento de la posicion n (si existe)
RetornarSegunPosicion() 
{
posicion=$1
Longitud=$(DevolverLongitud)
if [ $posicion -lt $Longitud ]; then
	echo "El elemento en la posicion $posicion es: ${arrayUsuarios[$posicion]}"
else echo "Se ingreso una longitud fuera de rango."
fi 
}
# Funcion "-i" : Imprime los elementos del array
ImprimirElementos() 
{
echo ${arrayUsuarios[*]}
}

if [ $# -eq 0 ]; then
    echo "Se debe proporcionar al menos un parametro."
    exit 1 
fi 

# Obtenemos los nombres de los usuarios que pertenecen al grupo "users" ( esto nos devuelve un string separados por ',')
usuarios=$(getent group "users" | cut -d: -f4 | tr ',' ' ')

# Convertimos el string $usuarios a un array.
# read -a: indica que los valores leidos deben ser almacnados en un array 
# <<< Sirve para pasar el contenido de una cadena como entrada estandar a otro comando. 
read -a arrayUsuarios <<< "$usuarios"

opcion=$1
case $opcion in 
    "-b") RetornarSegunPosicion $2 ;; # $2 hace referencia a la pos a buscar
    "-l") DevolverLongitud  ;;
    "-i") ImprimirElementos  ;;
       *) echo "Se ingreso una opcion no valida.";;
esac 
