#!/bin/bash
# Realizar una calculadora que ejecute las 4 operaciones basicas: +,-,*,% 
# Esta calculadora debe funcionar recibiendo la operacion y los numeros como parametros

# Primero: Chequeamos que la cantidad de parametros sean 3: 
# Primer parametro: Operador 
# Segundo y Tercer parametro: Operandos 


dividir ()
{
dividendo=$1
divisor=$2	
  if [ $divisor -eq 0 ]; then 
	  echo "No es posible dividir por cero."
  	  exit 1
  fi 

  echo "La division entre $dividendo y $divisor es: $((dividendo / divisor))"
}

if [ $# -ne 3 ]; then 
   echo "Por favor. Envie 3 parametros: OPERADOR OPERANDO1 OPERANDO2 "
   echo "Ej: + 1 3"
   exit 1 
fi 

# Para mejor legibilidad
operador=$1
operando1=$2
operando2=$3

case $operador in 
   "+") echo "La suma entre $operando1 y $operando2 es: $((operando1 + operando2))";;
   "-") echo "La resta entre $operando1 y $operando2 es: $((operando1 - operando2))";; 
   "*") echo "La resta entre $operando1 y $operando2 es: $((operando1 * operando2))";;
   "%") dividir $operando1 $operando2;;
   *) echo "Operador no reconocido" ;;
esac 
