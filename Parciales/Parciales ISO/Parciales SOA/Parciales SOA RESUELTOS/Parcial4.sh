#!/bin/bash

ImprimirArreglo ()
{
 vector=$1	
 echo "${vector[*]}"
 echo "cantidad de elementos: ${#vector[*]}"
}

arreglo1=($(cat /etc/passwd | cut -d: -f1))
ImprimirArreglo $arreglo1

arreglo2=($(cut -d: -f1 /etc/passwd))
ImprimirArreglo $arreglo2



