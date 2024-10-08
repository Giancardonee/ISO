#!/bin/bash
# Realizar un script que simule el comportamiento de una pila. 
# E implemente las funciones aplicables a una pila.
# Push: Recibe un parametro y lo agrega en la pila
# Pop: Saca un elemento de la pila
# Length: Devuelve la longitud de la pila
# Print: Imprime todos los elementos de la pila.


# Inicializamos un vector vacio (para simular una pila)
pila=() 


pop () 
{
 elementosPila=${#pila[*]}
 if [ $elementosPila -eq 0 ]; then 
	 echo "La pila esta vacia. No se puede hacer un pop."
	 return 1 
 else
	 ultimoIndice=$((elementosPila - 1)) # Nos quedamos con el ultimo indice
         echo "${pila[$ultimoIndice]}" # Mostramos el ultimo indice
	 unset 'pila[$ultimoIndice]'
 fi 
}

push () 
{
   # Agregamos el parametro al final de la pila
   pila+=($1)
}

length () 
{
	# Si longitud se refiere a DimF:
	#echo "$((${#pila[*]} - 1))"

	# Si longitud se refiere a cantidad de elementos: 
	echo "${#pila[*]}"
}

Print () 
{ 
  echo "${pila[@]}"
}

select opcion in "Pop" "Push" "Length" "Print" "Salir"; do
	case $opcion in
	     "Pop") pop ;;
	     "Push") read -p "Ingrese un numero: " numero
		     push $numero ;;
	     "Length") length ;;
	     "Print") Print ;;
	     "Salir") exit 1 ;;
	esac 
done


