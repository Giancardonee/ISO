#!/bin/bash
# Este es un script para el ejercicio 14
# Este scipt, si se ingresa "-a CADENA", renombra los archivos del directorio concatenando la cadena al final del archivo
# Si se ingresa "-b CADENA" renombra los archivos del directorio concatenando la cadena al principio del archivo 
# IMPORTANTE: SOLO DEBE RENOMBRAR ARCHIVOS 

# Este metodo recibe 3 parametros: 1) opcion [-a o -b] 2) cadena a agregar 3) directorio donde realizar las operaciones

AgregarCadenaAlFinal() {
	cadena=$1
	directorio=$2
	echo "Estamos agregando $cadena al final de los archivos del directorio $directorio"
	# para cada elemento del directorio 
	for archivo in *; do 
	    if [ -f "$archivo" ]; then # Si es archivo
		# Debemos renombrar el archivo agregando la cadena al final
	        mv "$archivo" "${archivo}_${cadena}"
		echo "Antes: $archivo, ahora -> ${archivo}${cadena} "
	    fi 
	done
}

AgregarCadenaAlPrincipio() {
    cadena=$1
    directorio=$2
    echo "Estamos agregando $cadena al principio de los archivos del directorio $directorio"
    # para cada elemento del directorio
    for archivo in *; do 
	if [ -f "$archivo" ]; then # Si es archivo
	    # Debemos renombrar el archivo agregando la cadena al principio
	    mv "$archivo" "${cadena}_${archivo}"
	    echo "Antes: $archivo, ahora -> ${cadena}${archivo}"
	fi 
    done 
}


Procesar () { 
	# Asignamos las variables a nombres asi es mas legible
	opcion1=$1
	cadena=$2
	directorio=$3
	# Verificamos si el directorio existe o no existe.
	if [ ! -d "$directorio" ]; then 
		echo "El directorio $directorio no existe."
	else # El directorio existe. Debemos chequear la opcion que se quiere realizar 
		cd "$directorio" # Nos posicionamos en el directorio
		case "$opcion" in 
		-a) 
	            AgregarCadenaAlFinal "$cadena" "$directorio";;

		-b) 
		    AgregarCadenaAlPrincipio "$cadena" "$directorio";;
		*)
		    echo "Ingresaste cualquier cosa como opcion.";;
	esac 
	fi
}


Ejercicio14 () { 
    echo "Siga las instrucciones."
    echo "Ingrese primero: -a o -b [-a para agregar al final, -b para agregar al principio]"
    echo "Ingrese segundo: la cadena a agregar" 
    echo "Ingrese tercero: El directorio donde quisiera realizar los cambios de los archivos."
    read -p "Por favor ingrese aca: " opcion cadena directorio
    Procesar "$opcion" "$cadena" "$directorio"
}

Ejercicio14
