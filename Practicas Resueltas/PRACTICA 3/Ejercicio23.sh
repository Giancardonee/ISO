#!/bin/bash

# Este script recorre un arreglo compuesto por numeros. E imprime en pantalla solo los numeros pares
# Y cuenta los numeros impares,luego los informa en pantalla al finalizar el recorrido.


array=(1 2 3 4 5 6 7 8 9 10)

Recorrer_e_Informar () 
{
  cantImpares=0
  for numero in ${array[*]}; do
    if [ $((numero % 2)) -eq 0 ]; then
	    echo "Numero par: $numero"
    else ((cantImpares++))
    fi 
  done

  echo "La cantidad de numeros impares son: $cantImpares"
}

Recorrer_e_Informar
