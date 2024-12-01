#!/bin/bash

# Este script recorre un vector multiplica todos los numeros del arreglo y los informa.

num=(10 3 5 7 9 3 5 4)
productoria ()
{
  resultado=1
  for numero in ${num[*]}; do 
	resultado=$(( resultado * numero ))
  done 
  echo "El resultado de multiplicar todo el arreglo es: $resultado"
}

productoria
