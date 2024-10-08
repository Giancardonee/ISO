# Ejercicio 30: Este script mueve todos los programas del directorio actual (archivos ejecutables)
# los mueve hacia el subdirectorio bin del directorio HOME del usuario actualmente logueado
# Ademas, el script imprime en pantalla los nombre de los que mueve, e indica cuantos mobio o si no movio ninguno
# Si el directorio bin no existe, debera ser creado


HomeBin="$HOME/bin"

# chequeamos si el subdirectorio bin existe 
if [ ! -d $HomeBin ]; then
   echo "Creando directorio... $HomeBin"
   mkdir $HomeBin
fi 

# Movemos los archivos del directorio actual hacia el directorio $HOME/Bin
# inicializo el contador en 0
contador=0

# Para cada elemento del directorio 
for elemento in * ; do 
	# Si es un archivo ejecutable: Lo movemos y incrementamos la cantidad
	if [ -f "$elemento" ] && [ -x "$elemento" ]; then
		mv $elemento "$HomeBin"
		echo "Archivo $elemento , movido a $HomeBin"
		((contador++))
	fi 
done 

# Informamos cuantos elementos movimos
if [ contador -eq 0 ]; then echo "No se ha movido ningun elemento."
else echo "Se movieron $contador elementos. "
fi 
	
