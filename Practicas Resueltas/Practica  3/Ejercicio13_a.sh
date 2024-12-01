#!/bin/bash
# Realizar un script que visualice por pantalla los numeros del 1 al 100 asi como sus cuadrados. 


# Opcion 1 de for: 
for i in {1..100};  do
     echo "Numero: $i ^ 2 = $(($i * $i)) "
done 

# Opcion 1 de for: 
for ((i=1;i<=100;i++)); do
	echo "Numero: $i ^ 2 = $(($i * $i))"
done 
