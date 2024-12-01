#!/bin/bash
# Realizar un script que reciba 2 numeros
# e imprima la multiplicacion,suma,resta y cual es el numero mayor. 
# debemos chequear que recibamos dos parametros. 
# Con $# obtenemos la cantidad de parametros recibidos del script 

if [ $# -ne 2 ]; then 
	echo "Se deben recibir dos parametros."
	exit 1
fi 

suma=$((numero1 + numero2))
echo "La suma entre $numero1 y $numero2 es: $suma"

resta=$((numero1 - numero2))
echo "La resta entre $numero1 y $numero2 es: $resta"

multiplicacion=$((numero1 * numero2))
echo "La multiplicacion entre $numero1 y $numero2 es: $multiplicacion"

# Informarmos el numero mas grande entre los dos (si es que hay)
if [ $numero1 -gt $numero2 ]; then
	echo "$numero1 es mas grande que $numero2"
elif [ $numero2 -gt $numero1 ]; then
	echo ":$numero2 es mas grande que $numero1"
else
	echo "Los numeros son iguales"
fi

