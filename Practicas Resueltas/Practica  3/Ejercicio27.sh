#!/bin/bash

array=() 

iniciarArreglo()
{
 array=()
 echo "Arreglo iniciado"
}

agregarElemento ()
{ 
   # Evaluamos que se reciba un parametro
   if [ $# -ne 1 ]; then 
	   echo "Se debe recibir un parametro."
	   return 1
   fi 

   # Agregamos el parametro al final del arreglo
   array+=($1) 
   echo "Elemento $1 agregado al final del vector "
}

# Elimina del arreglo el elemento que se encuentra en la posicion recibida por parametro. 
# Se debe validar que el parametro sea un parametro valido
# Es decir, que el indice sea menor a la cantidad de elementos que tenemos en el arrayi
eliminarElemento()
{
	# Evaluamos si la cantidad de parametro es 1. 
	if [ $# -ne 1 ];then 
		echo "Se debe ingresar un parametro."
		return 2
	fi 
	
	# Evaluamos si el parametro recibido esta dentro del rango del array
	if [ $1 -ge ${#array[*]} ];then 
		echo "Posicion fuera del rango."
		return 3
	fi 

	unset array[$1] # Borramos la el elemento de la posicion que recibimos.
	echo "Elemento $1 fue eliminado"
}

imprimirLongitud()
{
	echo ${#array[*]}
}


imprimirElementos() 
{
	echo ${array[*]}
}

# Esta funcion recibe dos parametros: Crea un arreglo con longitud parametro1 
# y en todas las posiciones asigna el valor parametro2
inicializarConValores() 
{
	# chequeamos que se reciban dos parametros
	if [$# -ne 2]; then
		echo "Se deben recibir dos parametros"
		exit 1
	fi

	iniciarArreglo
	for ((i=0; i < $1; i++)); do
		agregarElemento $2
	done

	echo "Se creo el arreglo con longitud $1 y en cada posicion tiene el valor $2"
}



# Generamos un menu para probar las funciones que creamos

echo "Seleccione una opcion"
select action in iniciarArreglo agregarElemento eliminarElemento imprimirLongitud imprimirElementos inicializarConValores terminar
do 
	case $action in 
		"iniciarArreglo")
			iniciarArreglo;;
		"agregarElemento")
			echo "Ingrese un elemento"
			read elemento 
			agregarElemento $elemento;;
		"eliminarElemento")
			echo "Indique posicion a eliminar"
			read posicion
			eliminarElemento $posicion;;
		"imprimirLongitud")
			echo "El arreglo tiene $(imprimirLongitud) elementos";;
		"imprimirElementos")
			echo "Arreglo: $(imprimirElementos)";;
		"inicializarConValores")
			echo "Ingrese la cantidad de elementos"
			read cantElementos
			echo "Ingrese el valor"
			read valor 
			inicializarConValores $cantElementos $valor;;
		"terminar")
			echo "Finalizando Ejecucion..."
			exit 0;; 
	esac
done
