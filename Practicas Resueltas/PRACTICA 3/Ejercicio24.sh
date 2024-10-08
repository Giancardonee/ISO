#!/bin/bash# Este script suma las posiciones de los dos vectores y lo informa en pantalla
# DATO: los vectores pueden no coincidir en longitud. 

Recorrer_y_Sumar() { 
	# Declaramos vector1 
	vec1=(2 2 5 5 10 1 5)
	# Declaramos vector2
	vec2=(2 2 10 5 7)
	# Guardamos las longitudes de cada vector
	longVec1=${vec1[@]}
	longVec2=${vec2[@]}
	# Nos quedamos con la longitud maxima
	longMax=$((longVec1 > longVec2 ? longVec1 : longVec2)) 
	# Iteramos sobre los vectores
	for ((i=0; i<longMax; i++)); do 
	# Si la posicion actual, esta entre las posiciones del vector, nos traemos el valor en esa posicion
	# Si la posicion actual, esta fuera del rango de posiciones del vector, nos traemos un 0
		valorVec1=$(( i < longVec1 ? "${vec1[i]}" : 0 ))
		valorVec2=$(( i < longVec2 ? "${vec2[i]}" : 0 ))
		resultado=$(( valorVec1 + valorVec2)) 
	# Mostramos el resultado de la suma en esa posicion.
	echo "La suma de los elementos en la posicion $i es: $resultado"
	done
}

Recorrer_y_Sumar
