
**[Explicaciones Teoria ISO](https://www.youtube.com/playlist?list=PL3a_0yafSm3jqtnNdrsTGUcD7zRm21AqP)**  
**[Explicaciones Practica ISO](https://www.youtube.com/playlist?list=PL3a_0yafSm3jj4N3fa3rhjo-1R2tU9A4g)**
  
![image](https://github.com/user-attachments/assets/bcaf3709-187f-4e1a-a3ca-816ac78231ea)

# Algunos comandos y ejemplos que se ven en la practica.
=> echo: Imprime texto en la consola
 sintaxis echo <"unTexto">
 ejemplo: echo "Hola Mundo"

=> cd: Cambiar de directorio  
 sintaxis: cd <directorio>  
 ejemplo:  cd /home/user/documentos    
   
=>ls: Lista el contenido del directorio actual(mostrando archivos y directorios)  
 sintaxis: ls <opciones> <ruta(opcional)>  
 parametros comunes: ls -l: Muestra una lista detallada con permisos,propieratio, tamaño y fecha de modificación.  
 		     ls -a: Muestra todos los archivos incluyendo los ocultos  

  
=>mkdir: Crear directorio  
 sintaxis: mkdir <nombre_del_directorio>  
 ejemplo: mkdir nuevo_directorio  

  
=>pwd: Muestra la ruta completa del directorio actual  
 sintaxis: pwd   
   
=>$HOME: Contiene la ruta del directorio personal del usuario actual.  
  sintaxis $HOME  

=> grep: Busca patrones en archivos o textos. Retorna toda la linea que coincide con el patro.   
  sintaxis: grep <patron> <archivo>  
  ejemplo: grep "gianca" archivo.txt  

=> cut: Separa o corta partes de una linea segun un delimitador.  
  sintaxis: cut <opciones> <archivo>  
  ejemplo: cut -d: -f1 /etc/passwd  
  explicacion: Separa /etc/passwd en campos con el delimitador ':'. Con -f1 se queda con el primer campo ( nombre de usuario)  
  
=> cat: Mostrar contenido de un archivo  
  sintaxis: cat <nombreArchivo>  
  ejemplo: cat archivo.txt  
  
=> touch: Crea un archivo vacio o actualiza la fecha de modificacion (si el archivo ya existe)  
 sintaxis: touch <nombreArchivo>  
 ejemplo: touch archivo.txt  
  
=> getent group: muestra miembros de un grupo  
  sintaxis: getent group <nombreGrupo>  
   ejemplo: getent group "users"  
   explicacion: muestra los usuarios pertenecientes al grupo users.  
  
=> find: Buscar archivos y directorios  
  sintaxis: find <ruta> <condiciones>  
  ejemplo: find /home -name "*.txt"  
  explicacion: Busca todos los archivos con extension .txt en el directorio home  
  
=> rm: Eliminar archivos o directorios  
  sintaxis: rm <archivo>  
  ejemplo rm archivo.txt  
  
=> cp: copia archivos o directorios de una ubicacion a otra  
  sintaxis: cp <origen> <destino>  
  ejemplo: cp archivo.txt /home/gianca/archivos  
  
**Buscar a partir del nombre de usuario ingresado, su grupo y su home.**
![image](https://github.com/user-attachments/assets/e7563b6f-a417-4bbb-a26a-c3edd20d5ec0)


