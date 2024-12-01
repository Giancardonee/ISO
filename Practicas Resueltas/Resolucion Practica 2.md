1. Editor de textos:
(a) Nombre al menos 3 editores de texto que puede utilizar desde la línea de comandos.
nano: Es conocido por su simplicidad y facilidad de uso. Ideal para principiantes.
nano te permite editar archivos de texto con una interfaz fácil de entender y accesos directos en pantalla.

vim: Es una versión mejorada del editor vi y es muy poderoso una vez que te familiarizas con su modo de operación.
 vim es altamente configurable y ofrece muchas funciones avanzadas para la edición de texto.

emacs: Es un editor extensible y versátil que ofrece una amplia gama de funcionalidades más allá de la edición de texto,
como gestión de archivos y desarrollo de software. Su curva de aprendizaje puede ser más pronunciada, pero es muy potente.

(b) ¿En qué se diferencia un editor de texto de los comandos cat, more o less? Enumere los modos de operación que posee el editor de textos vi.

==> cat:
Su propósito principal es mostrar el contenido de uno o más archivos de texto en la salida estándar (la terminal).
No permite la edición del contenido.

==> more:
Permite ver el contenido de un archivo de texto paginando su salida.
Muestra el archivo página por página y permite avanzar con la barra espaciadora.
No permite la edición del contenido.

==> less:
Similar a more, permite ver el contenido de un archivo de texto paginando su salida.
Ofrece navegación bidireccional (adelante y atrás), búsqueda, y otras funcionalidades adicionales.
No permite la edición del contenido.

cat, more, y less: No permiten edición del archivo, solo la visualización de su contenido.
Los editores de texto son herramientas diseñadas para la creación y modificación de archivos, mientras que cat, more, y less son comandos destinados principalmente a la visualización de contenido en la terminal.

modos de operacion del editor vi: 
Posee 3 modos de ejecuci´on:
• Modo Insert (Ins o i)
• Modo Visual (v)
• Modo de Ordenes o Normal ( ´ Esc)


1. modo normal: Permite usar comandos para navegar, editar, copiar, pegar, y borrar texto, así como para guardar y salir.
acciones comunes: 
i: Cambia al modo de inserción antes del cursor.
x: Borra el carácter bajo el cursor.
dd: Borra la línea actual.
yy: Copia la línea actual.
p: Pega el texto copiado o cortado.
:wq: Guarda y sale del archivo.

2. Modo de Inserción
Propósito: Permite insertar texto en el archivo. En este modo, todo lo que escribas se añade al contenido del archivo.
Cómo entrar: Puedes entrar en este modo desde el modo normal usando comandos como i (antes del cursor), I (al inicio de la línea), a (después del cursor), A (al final de la línea), o (nueva línea debajo del cursor), o O (nueva línea encima del cursor).
Cómo salir: Presiona Esc para volver al modo normal.

3. Modo de Línea de Comando
Propósito: Permite ejecutar comandos que afectan el archivo o la configuración de vi. Aquí puedes guardar, salir, buscar y reemplazar, entre otras acciones.
Cómo entrar: Presiona : en el modo normal para entrar en el modo de línea de comando.
Comandos comunes:
:w: Guarda el archivo.
:q: Sale del editor (si no se han realizado cambios no guardados).
:wq: Guarda y sale.
:q!: Sale sin guardar los cambios.
:s/old/new/: Reemplaza la primera ocurrencia de "old" por "new" en la línea actual.
:1,10s/old/new/g: Reemplaza "old" por "new" en las líneas 1 a 10.

4. Modo de Selección Visual
Propósito: Permite seleccionar bloques de texto para luego realizar operaciones sobre ellos, como copiar o cortar.

Cómo entrar:
v: Selección visual por carácter.
V: Selección visual por línea.
Ctrl-v: Selección visual por bloque (modo visual en bloque).
Cómo salir: Presiona Esc para volver al modo normal.

5. Modo de Comando de Ex
Propósito: Similar al modo de línea de comando, pero permite ejecutar comandos ex más avanzados.
Cómo entrar: Presiona Q en el modo normal para entrar en el modo ex (aunque esto no es común, ya que el modo de línea de comando generalmente es suficiente).

(c) Nombre los comandos más comunes que se le pueden enviar al editor de textos vi.

Edicion: 
dd: borra la linea actual
p: pega el texto copiado
o: insertar una linea debajo del cursos y entrar en modo de insercion. 

Buscar y Reemplazar
/texto: Buscar la siguiente ocurrencia de "texto".
:s/old/new: Reemplazar la primera ocurrencia de "old" por "new" en la línea actual.

Guardar y salir: 
:w guarda los cambios en el archivo
:q salir del editor
:wq Guardar y salir del editor. 
2. Proceso de Arranque SystemV (https://github.com/systeminit/si):
(a) Enumere los pasos del proceso de inicio de un sistema GNU/Linux, desde que se prende
la PC hasta que se logra obtener el login en el sistema.

(a) Pasos del Proceso de Inicio de un Sistema GNU/Linux
Encendido de la PC:
Al encender la computadora, la CPU comienza a ejecutar el código del BIOS (o UEFI en sistemas modernos), que realiza una serie de pruebas conocidas como POST (Power-On Self-Test).

Carga del Bootloader:
El BIOS/UEFI busca un dispositivo de arranque (generalmente un disco duro) y carga el bootloader desde el sector de arranque del disco. 
El bootloader más común es GRUB (Grand Unified Bootloader).

Ejecución del Bootloader:
GRUB se ejecuta y presenta un menú (si está configurado para ello), desde el cual el usuario puede seleccionar el kernel del sistema operativo a iniciar.

Carga del Núcleo (Kernel):
GRUB carga el núcleo del sistema operativo en la memoria y transfiere el control al mismo. El kernel se encarga de inicializar el hardware y configurar los subsistemas básicos del sistema.

Ejecución del Proceso init:
Después de que el kernel ha terminado de inicializar el sistema básico, inicia el proceso init, que es el primer proceso del sistema operativo y tiene el PID (Process ID) 

Configuración del Sistema:
init ejecuta scripts de inicio, que configuran diversos aspectos del sistema, como el montaje de sistemas de archivos adicionales, la configuración de redes, y otros servicios esenciales.

Inicio de los Servicios del Sistema:
init inicia los servicios del sistema y da control a los scripts de inicio que establecen el estado del sistema en un nivel de ejecución específico.
Presentación del Login:

Finalmente, init inicia el gestor de login (como getty para la terminal o un display manager para entornos gráficos), permitiendo al usuario iniciar sesión en el sistema.

b) Proceso INIT
¿Quién lo ejecuta? y ¿Cuál es su objetivo?
El proceso init es ejecutado por el núcleo (kernel) de Linux durante el proceso de arranque, y es el primer proceso que se ejecuta después de la inicialización del kernel.

Su funcion es cargar todos los subprocesos necesarios para el correcto funcionamiento del SO. Es el encargado de montar los filesystems y de hacer disponible los demas dispositivos
Otra definicion: Su funcion es iniciar y gestionar el resto del sistema de servicios y procesos. init configura el entorno del sistema, inicia servicios necesarios, y establece el nivel de ejecución del sistema.


(c) RunLevels
¿Qué son?
Los niveles de ejecución (RunLevels) son estados predefinidos en los que un sistema GNU/Linux puede estar. Cada nivel de ejecución define un conjunto específico de servicios y procesos que deben estar activos.
¿Cuál es su objetivo?

El objetivo de los niveles de ejecución es gestionar el estado operativo del sistema. 
Cada nivel de ejecución especifica qué servicios deben estar iniciados y cuál debe ser el estado general del sistema. 
init usa estos niveles para iniciar y detener servicios de acuerdo con el estado deseado del sistema.


(d) ¿A qué hace referencia cada nivel de ejecución según el estándar? ¿Dónde se define qué
Runlevel ejecutar al iniciar el sistema operativo? ¿Todas las distribuciones respetan estos estándares?

RunLevel 0: Apagado del sistema.
RunLevel 1: Modo de usuario único (single-user mode), utilizado para mantenimiento.
RunLevel 3: Modo multiusuario sin interfaz gráfica (modo consola).
RunLevel 5: Modo multiusuario con interfaz gráfica (modo de escritorio).
RunLevel 6: Reinicio del sistema.

El nivel de ejecución predeterminado se define en el archivo de configuración del gestor de inicio, dependiendo de la distribución.
Para sistemas que utilizan SystemV, se define en el archivo /etc/inittab. Por ejemplo: id:5:initdefault:
En este caso, el sistema arrancará en el RunLevel 5 por defecto.

¿Todas las distribuciones respetan estos estándares?
No todas las distribuciones respetan estos estándares estrictamente. Algunas distribuciones modernas, como las basadas en systemd (por ejemplo, Fedora, Ubuntu, Debian), han reemplazado el sistema SystemV y sus niveles de ejecución con un nuevo sistema de inicialización basado en systemd, que utiliza conceptos de targets en lugar de niveles de ejecución tradicionales.

e) Archivo /etc/inittab. ¿Cuál es su finalidad? ¿Qué tipo de información se almacena en el? ¿Cuál es la estructura de la información que en él se almacena?
El archivo /etc/inittab es el archivo de configuración principal para el proceso init en sistemas que utilizan el sistema de inicio SystemV. Define cómo init debe comportarse al arrancar el sistema y qué procesos y servicios deben iniciarse en cada nivel de ejecución.

¿Qué tipo de información se almacena en él?
Almacena configuraciones relacionadas con los niveles de ejecución, los scripts que deben ejecutarse en cada nivel y configuraciones para los terminales virtuales y servicios de inicio.

¿Cuál es la estructura de la información que en él se almacena?

La estructura general del archivo /etc/inittab sigue un formato de líneas con campos separados por dos puntos (:). La sintaxis básica es: id:runlevel:action:process

Donde:

id: Un identificador único para la entrada.
runlevel: El nivel de ejecución en el que la entrada debe aplicarse.
action: La acción que debe tomarse (por ejemplo, iniciar, detener, reiniciar).
process: El comando o proceso a ejecutar.

Ejemplo de entrada en /etc/inittab:
id:5:initdefault:

(f) Suponga que se encuentra en el runlevel <X>. Indique qué comando(s) ejecutaría para
cambiar al runlevel <Y>. ¿Este cambio es permanente? ¿Por qué

El comando telinit <Y> en sistemas con SysVinit o systemctl isolate <target> en sistemas con systemd. Este cambio no es permanente porque solo afecta la sesión actual y se revertirá al siguiente arranque o reinicio. La configuración permanente de runlevels o targets se define en archivos de configuración, como /etc/inittab para SysVinit o en los archivos de unidades de systemd para sistemas con systemd.


(g) Scripts RC. ¿Cuál es su finalidad? ¿Dónde se almacenan? Cuando un sistema GNU/Linux arranca o se detiene se ejecutan scripts, indique cómo determina qué script ejecutar
ante cada acción. ¿Existe un orden para llamarlos? Justifique.

Finalidad de los Scripts RC
Los scripts RC tienen como finalidad gestionar los servicios y procesos que deben iniciarse o detenerse durante el arranque o apagado del sistema. Estos scripts configuran el entorno del sistema, inician servicios como redes, servidores web, bases de datos, etc., y realizan otras tareas necesarias para que el sistema funcione correctamente.

Ubicación de los Scripts RC
Los scripts RC se almacenan típicamente en el directorio /etc/rc.d/ o /etc/init.d/. En sistemas basados en Debian, los scripts se encuentran en /etc/init.d/, y en sistemas basados en Red Hat, pueden encontrarse en /etc/rc.d/init.d/.

Ejecución de los Scripts
Cuando el sistema arranca o se detiene, se utilizan diferentes niveles de ejecución (runlevels) para determinar qué scripts se ejecutan. Los runlevels son números que representan diferentes estados del sistema.

Runlevels:

Runlevel 0: Apagado.
Runlevel 1: Modo de usuario único (para mantenimiento).
Runlevel 2: Modo multiusuario sin red.
Runlevel 3: Modo multiusuario con red.
Runlevel 4: No utilizado por defecto (disponible para uso personalizado).
Runlevel 5: Modo multiusuario con interfaz gráfica.
Runlevel 6: Reinicio.
Determinación de Scripts a Ejecutar: Cuando el sistema cambia de un runlevel a otro, el sistema de inicialización ejecuta scripts específicos para cada runlevel. La transición entre runlevels se maneja mediante scripts que se encuentran en /etc/rc.d/rc*.d/ o /etc/init.d/.

Directorios de runlevel: Dentro de /etc/rc.d/ o /etc/init.d/, hay subdirectorios llamados rc<runlevel>.d/, como rc3.d para el runlevel 3. Estos directorios contienen enlaces simbólicos a los scripts de inicio ubicados en /etc/init.d/.
Enlaces Simbólicos: Los enlaces simbólicos en rc<runlevel>.d/ tienen prefijos S (para iniciar servicios) y K (para detener servicios), seguidos de un número que indica el orden de ejecución. Por ejemplo, S20apache iniciará Apache después de S10network.
Orden de Ejecución:

Orden de Scripts: Los scripts se ejecutan en el orden numérico de los enlaces simbólicos en el directorio correspondiente al runlevel. Por ejemplo, S10network se ejecutará antes que S20apache.
Detención de Servicios: Cuando se cambia a un runlevel inferior, los scripts con prefijo K en el directorio del runlevel destino se ejecutan para detener servicios.
Ejemplo
Si el sistema está en runlevel 3 y se cambia a runlevel 5, el sistema de inicialización:

Ejecuta los scripts K en el directorio rc3.d para detener servicios.
Luego, ejecuta los scripts S en el directorio rc5.d para iniciar servicios.
Justificación
Este método permite que el sistema inicie y detenga servicios de manera ordenada y controlada, asegurando que todos los servicios necesarios estén activos o inactivos según el estado deseado del sistema. El uso de números para ordenar los scripts asegura que los servicios se inicien y detengan en un orden específico, lo cual es crítico para el funcionamiento correcto del sistema.


3: SystemD 
(a) ¿Qué es systemd?
systemd es un sistema de inicialización y gestor de servicios para sistemas operativos Linux. Se encarga del arranque del sistema, gestión de servicios y procesos, y la administración de diferentes aspectos del sistema operativo. Reemplaza a los tradicionales sistemas de inicialización como SysVinit y Upstart. systemd ofrece características avanzadas como la paralelización del arranque de servicios, seguimiento y control de procesos, y la administración de unidades de servicio de manera más eficiente.

(b) ¿A qué hace referencia el concepto de Unit en systemd?
En systemd, una Unit es una abstracción que representa un recurso o servicio que systemd puede gestionar. Las unidades pueden ser de varios tipos, como:

Service Unit (.service): Representa un servicio o demonio.
Socket Unit (.socket): Representa un socket de red.
Target Unit (.target): Representa un grupo de unidades.
Device Unit (.device): Representa un dispositivo de hardware.
Mount Unit (.mount): Representa un punto de montaje de sistema de archivos.
Timer Unit (.timer): Representa un temporizador para ejecutar tareas programadas.
Cada tipo de unidad tiene su propio archivo de configuración que define cómo se debe iniciar, detener o gestionar ese recurso.

(c) ¿Para qué sirve el comando systemctl en systemd?
El comando systemctl es la herramienta principal para interactuar con systemd. Permite gestionar y controlar el estado de las unidades y el sistema en general. Algunas de las funcionalidades clave de systemctl incluyen:

Iniciar, detener, reiniciar y recargar servicios: systemctl start <service>, systemctl stop <service>, systemctl restart <service>, systemctl reload <service>
Habilitar o deshabilitar servicios para el arranque: systemctl enable <service>, systemctl disable <service>
Verificar el estado de servicios y unidades: systemctl status <service>
Listar todas las unidades: systemctl list-units
Mostrar los logs del sistema: journalctl


(d) ¿A qué hace referencia el concepto de target en systemd?
En systemd, un Target es un tipo especial de unidad que se usa para agrupar y gestionar otras unidades. Los targets permiten que systemd administre grupos de servicios y otros recursos de manera coordinada. Por ejemplo:

multi-user.target: Proporciona un entorno multiusuario sin interfaz gráfica, similar a los antiguos runlevels 3 y 4.
graphical.target: Incluye todo lo que multi-user.target ofrece, más los servicios necesarios para una interfaz gráfica, similar al runlevel 5.
reboot.target: Representa el objetivo de reinicio del sistema.
poweroff.target: Representa el objetivo de apagado del sistema.
Los targets se utilizan para definir el estado final del sistema y manejar la transición entre diferentes estados del sistema.

(e) Ejecute el comando pstree. ¿Qué es lo que se puede observar a partir de la ejecución de este comando?
El comando pstree muestra una representación jerárquica de los procesos en ejecución en el sistema. En lugar de listar todos los procesos de manera plana, pstree organiza los procesos en un árbol, mostrando cómo se relacionan entre sí.

Proceso Raíz: Muestra el proceso raíz del sistema (a menudo init o systemd).
Jerarquía: Muestra la jerarquía de procesos, con procesos secundarios y subordinados representados como ramas del árbol.
Nombres y PID: Muestra los nombres de los procesos y sus IDs de proceso (PID) si se solicita con la opción -p.

4. Usuarios:
(a) ¿Qué archivos son utilizados en un sistema GNU/Linux para guardar la información
de los usuarios? 


Aquí te proporciono información detallada sobre los puntos solicitados:

(a) ¿Qué archivos son utilizados en un sistema GNU/Linux para guardar la información de los usuarios?
En un sistema GNU/Linux, la información sobre los usuarios se guarda en los siguientes archivos:

/etc/passwd: Contiene información básica sobre las cuentas de usuario, como el nombre de usuario, UID (ID de usuario), GID (ID de grupo principal), información del usuario (como el nombre completo), el directorio home del usuario, y el shell por defecto.

Ejemplo de una línea en /etc/passwd:
usuario:x:1001:1001:Usuario Ejemplo,,,:/home/usuario:/bin/bash

/etc/shadow: Almacena información sobre las contraseñas de los usuarios en formato encriptado, así como la fecha de la última modificación de la contraseña y los datos relacionados con la expiración de la contraseña.
un ejemplo es: usuario:$6$saltsalt$encryptedpassword:18000:0:99999:7:::

/etc/group: Contiene información sobre los grupos de usuarios, incluyendo el nombre del grupo, GID, y los miembros del grupo.
Ejemplo de una línea en /etc/group: 
catedra:x:1002:usuario1,usuario2

(b) ¿A qué hacen referencia las siglas UID y GID? ¿Pueden coexistir UIDs iguales en un sistema GNU/Linux? Justifique.
UID (User ID): Es un identificador único asignado a cada usuario en el sistema. Se utiliza para gestionar permisos y accesos a archivos y recursos.

GID (Group ID): Es un identificador único asignado a cada grupo de usuarios en el sistema. Los permisos de acceso a archivos y directorios pueden ser asignados a grupos mediante GID.

Pueden existir UIDs iguales en un sistema GNU/Linuz? No, no pueden coexistir UIDs iguales en un sistema GNU/Linux. Cada UID debe ser único para cada usuario en el sistema para asegurar que el sistema pueda distinguir entre diferentes usuarios y asignar permisos de manera adecuada. La duplicación de UIDs causaría conflictos y problemas de seguridad y permisos.

(c) ¿Qué es el usuario root? ¿Puede existir más de un usuario con este perfil en GNU/Linux? ¿Cuál es la UID del root?
Un usuario root es el superusuario o administrador del sistema en GNU/Linux. Tiene permisos completos sobre todos los archivos y procesos del sistema y puede realizar cualquier operación, incluyendo la gestión de usuarios y configuración del sistema.

UID del root: El UID del usuario root es 0.
No puede haber más de un usuario con el UID 0. Sin embargo, es posible tener múltiples cuentas de usuario con privilegios de administrador si se les otorgan permisos de sudo o se les asigna el grupo wheel o sudo, pero el UID 0 sigue siendo único para el superusuario root.

e) 
useradd ó adduser
Funcionalidad: useradd y adduser son comandos utilizados para crear nuevas cuentas de usuario en el sistema.
Parámetros comunes para useradd:
-m : Crea un directorio home para el usuario si no existe.
-d [directorio] : Especifica el directorio home del usuario.
-s [shell] : Establece el shell de inicio del usuario.
-g [grupo] : Especifica el grupo primario del usuario.
-G [grupos] : Especifica grupos secundarios a los que el usuario debe pertenecer.
-e [fecha] : Establece la fecha de expiración de la cuenta en formato AAAA-MM-DD.
-f [días] : Define el número de días después de la expiración de la cuenta antes de que se desactive.

 usermod
Funcionalidad: usermod se usa para modificar las propiedades de una cuenta de usuario existente.
Parámetros comunes:

-l [nuevo_nombre] : Cambia el nombre del usuario.
-d [nuevo_directorio] : Cambia el directorio home del usuario.
-m : Mueve el contenido del directorio home antiguo al nuevo.
-s [nuevo_shell] : Cambia el shell de inicio del usuario.
-aG [grupo] : Añade el usuario a un grupo suplementario sin eliminarlo de otros grupos.
-G [grupo1,grupo2,...] : Especifica una lista de grupos suplementarios.
-e [fecha] : Cambia la fecha de expiración de la cuenta.

userdel
Funcionalidad: userdel se utiliza para eliminar una cuenta de usuario del sistema.

Parámetros comunes:

-r : Elimina el directorio home del usuario y su correo.
-f : Fuerza la eliminación de la cuenta, incluso si el usuario está conectado.

su
Funcionalidad: su (substitute user) permite cambiar de usuario en una sesión de terminal. Generalmente se usa para cambiar a la cuenta de root.
Parámetros comunes:

- : Inicia un entorno de inicio del usuario objetivo, similar a un inicio de sesión completo.
-c [comando] : Ejecuta un comando como el usuario objetivo.
[usuario] : Cambia al usuario especificado. Si no se especifica, cambia al usuario root.

groupadd
Funcionalidad: groupadd se usa para crear un nuevo grupo en el sistema.
Parámetros comunes:

-g [ID] : Especifica el ID del grupo (GID) en lugar del GID predeterminado.
-r : Crea un grupo de sistema, que tiene un GID menor que 1000 en la mayoría de los sistemas.

who
Funcionalidad: who muestra información sobre los usuarios actualmente conectados al sistema.

Parámetros comunes:
-a : Muestra toda la información disponible.
-b : Muestra la última vez que el sistema fue iniciado.
-q : Muestra solo los nombres de los usuarios y el número total de usuarios conectados.

groupdel
Funcionalidad: groupdel se utiliza para eliminar un grupo del sistema.

Parámetros comunes:

[grupo] : Especifica el nombre del grupo a eliminar.

passwd
Funcionalidad: passwd se usa para cambiar la contraseña de un usuario.

Parámetros comunes:

[usuario] : Cambia la contraseña del usuario especificado. Si no se especifica, cambia la contraseña del usuario actual.
-l : Bloquea la cuenta, deshabilitando el inicio de sesión.
-u : Desbloquea una cuenta bloqueada.

5a) 
En sistemas GNU/Linux, los permisos de archivos determinan quién puede leer, escribir o ejecutar un archivo. 
Los permisos se definen y gestionan a nivel de sistema de archivos y se pueden representar de diferentes maneras. Aquí te explico cómo se definen:
Permisos Básicos: Cada archivo o directorio tiene tres tipos de permisos básicos que se aplican a tres categorías de usuarios:

Lectura (r): Permite leer el contenido del archivo o listar el contenido de un directorio.
Escritura (w): Permite modificar el archivo o agregar y eliminar archivos en un directorio.
Ejecución (x): Permite ejecutar el archivo como un programa o script, o acceder a un directorio y navegar a través de él.

Representación de Permisos: Los permisos se muestran en una cadena de 10 caracteres cuando se utiliza el comando ls -l. La cadena tiene el siguiente formato:

-rwxr-xr--

El primer carácter indica el tipo de archivo (- para archivos regulares, d para directorios, etc.).
rwx indica que el propietario puede leer, escribir y ejecutar.
r-x indica que el grupo puede leer y ejecutar, pero no escribir.
r-- indica que otros usuarios solo pueden leer.

b) 
chmod
Funcionalidad: El comando chmod se utiliza para cambiar los permisos de un archivo o directorio.

Parámetros comunes:

Notación simbólica:

u : Usuario (propietario)
g : Grupo
o : Otros
a : Todos
+ : Añadir permiso
- : Quitar permiso
= : Establecer permisos exactos
Ejemplos:

chmod u+x archivo : Añade permiso de ejecución para el propietario.
chmod go-w archivo : Quita el permiso de escritura para el grupo y otros.
chmod a=r archivo : Establece permisos de solo lectura para todos.

Funcionalidad: El comando chown cambia el propietario y/o el grupo de un archivo o directorio.

Parámetros comunes:

usuario : Nombre del nuevo propietario.

grupo : Nombre del nuevo grupo.

usuario:grupo : Cambia tanto el propietario como el grupo.

Ejemplos:

chown usuario archivo : Cambia el propietario del archivo a usuario.
chown usuario:grupo archivo : Cambia el propietario a usuario y el grupo a grupo.
chown :grupo archivo : Cambia solo el grupo del archivo

chgrp
Funcionalidad: El comando chgrp cambia el grupo asociado a un archivo o directorio.

Parámetros comunes:

grupo : Nombre del nuevo grupo.

Ejemplos:

chgrp grupo archivo : Cambia el grupo del archivo a grupo.
chgrp -R grupo directorio : Cambia el grupo de todos los archivos y subdirectorios dentro de directorio.

c) 
En el comando chmod, la notación octal se utiliza para definir los permisos de archivos y directorios mediante una secuencia de números. Esta notación es compacta y permite establecer los permisos de manera precisa. Aquí te explico cómo funciona:

Valores de Permiso Octales:

Cada permiso se representa como una combinación de bits:

Lectura (Read, r) = 4
Escritura (Write, w) = 2
Ejecución (Execute, x) = 1
La suma de estos valores da el valor octal correspondiente para cada categoría de permisos.

Ejemplos:

7 = Lectura (4) + Escritura (2) + Ejecución (1) = rwx
6 = Lectura (4) + Escritura (2) = rw-
5 = Lectura (4) + Ejecución (1) = r-x
4 = Lectura (4) = r--
3 = Escritura (2) + Ejecución (1) = wx-
2 = Escritura (2) = w--
1 = Ejecución (1) = --x
0 = Sin permisos = ---

Ejemplo de Notación Octal:

chmod 755 archivo:
7 para el propietario (rwx)
5 para el grupo (r-x)
5 para otros (r-x)

(d) Acceso a Archivos sin Permisos
En general, un usuario no puede acceder a un archivo si no tiene los permisos adecuados. Sin embargo, hay excepciones y configuraciones especiales que permiten acceder a archivos de maneras específicas:

Permisos setuid y setgid:

setuid: Un archivo ejecutable con el bit setuid se ejecuta con los privilegios del propietario del archivo en lugar del usuario que lo ejecuta. Ejemplo: /usr/bin/passwd.
setgid: Un archivo ejecutable con el bit setgid se ejecuta con los privilegios del grupo del archivo. También se usa en directorios para que los archivos creados dentro del directorio hereden el grupo del directorio en lugar del grupo del usuario que crea el archivo.
Sticky Bit:

En directorios, el sticky bit (t) permite que solo el propietario del archivo pueda eliminar o renombrar sus archivos dentro del directorio, aunque otros usuarios tengan permisos de escritura en el directorio. Ejemplo: /tmp.

# Crear un archivo y establecer permisos
touch archivo
chmod 777 archivo  # Permiso total para todos

# Comprobar los permisos
ls -l archivo

# Cambiar el propietario
sudo chown root archivo

# Probar el acceso como un usuario normal
cat archivo  # Si el archivo tiene permisos de lectura, se puede leer

(e) Conceptos de “Full Path Name” y “Relative Path Name”
Full Path Name (Ruta Absoluta):

Es la ruta completa desde el directorio raíz / hasta el archivo o directorio especificado. Incluye todos los directorios intermedios.
Ejemplo: /home/usuario/documentos/archivo.txt

Relative Path Name (Ruta Relativa):
Es la ruta desde el directorio de trabajo actual hasta el archivo o directorio especificado. No incluye el directorio raíz /.
Ejemplo: documentos/archivo.txt

f) Para determinar en qué directorio estamos actualmente en un sistema GNU/Linux, se puede usar el comando pwd (Print Working Directory). Este comando muestra la ruta completa del directorio de trabajo actual.
comando: pwd
ejemplo de salida: /home/usuario/documentos

g) 
cd: 
Funcionalidad: El comando cd se usa para cambiar el directorio de trabajo actual en la terminal.
ejemplo: cd /home/usuario/documentos

umount (Unmount Filesystem)
Funcionalidad: El comando umount se usa para desmontar un sistema de archivos, liberando el punto de montaje para que el sistema pueda ser removido o cambiado.
umount [opciones] [punto_de_montaje | dispositivo]

Parámetros:

punto_de_montaje: El punto en el sistema de archivos donde está montado el dispositivo.
dispositivo: El dispositivo que se está desmontando, como /dev/sdX1.
Opciones Comunes:

-l: Desmontaje perezoso (lazy unmount), para liberar el punto de montaje sin esperar a que se liberen todos los recursos.
-f: Forzar el desmontaje, útil para sistemas de archivos que no responden.

mkdir (Make Directory)
Funcionalidad: El comando mkdir se usa para crear uno o más directorios.
mkdir nuevo_directorio 

du (Disk Usage)
Funcionalidad: El comando du muestra el uso del espacio en disco de archivos y directorios.

du [opciones] [directorio | archivo]
Parámetros:

directorio | archivo: El archivo o directorio para el cual deseas mostrar el uso de espacio.
Opciones Comunes:

-h: Muestra los tamaños en formato legible por humanos (K, M, G).
-s: Muestra solo el total para el directorio especificado.
-a: Muestra el uso del disco para todos los archivos y directorios.

rmdir (Remove Directory)
Funcionalidad: El comando rmdir se usa para eliminar directorios vacíos.
rmdir /home/usuario/documentos/vacio

df (Disk Free)
Funcionalidad: El comando df muestra el uso del espacio en disco para todos los sistemas de archivos montados.
Opciones Comunes:

-h: Muestra los tamaños en formato legible por humanos (K, M, G).
-T: Muestra el tipo de sistema de archivos.
-a: Incluye sistemas de archivos con tamaño cero.
ejemplo: 
df -h 

mount (Montar un Sistema de Archivos)
Funcionalidad: El comando mount se utiliza para montar un sistema de archivos en un punto de montaje, lo que permite acceder a los archivos en ese sistema de archivos.
mount /dev/sdX1 /mnt/usb

ln (Crear Enlaces)
Funcionalidad: El comando ln se utiliza para crear enlaces entre archivos. Hay dos tipos de enlaces: enlaces duros y enlaces simbólicos.
comando: 
ln archivo_original archivo_enlace

pwd (Print Working Directory)
Funcionalidad: El comando pwd muestra la ruta completa del directorio de trabajo actual.
comando:  pwd 

cp (Copiar Archivos y Directorios)
Funcionalidad: El comando cp se utiliza para copiar archivos y directorios.
Opciones Comunes:

-r: Copia directorios de manera recursiva.
-i: Pide confirmación antes de sobrescribir archivos existentes.
-u: Copia solo archivos que son más recientes que los archivos de destino o que no existen en el destino.
cp archivo_original archivo_copia

mv (Mover o Renombrar Archivos y Directorios)
Funcionalidad: El comando mv se utiliza para mover o renombrar archivos y directorios.
Parámetros:

origen: El archivo o directorio que deseas mover o renombrar.
destino: La nueva ubicación o nuevo nombre para el archivo o directorio

mover archivo: mv archivo /nuevo/directorio/
nuevo nombre para el archivo: mv archivo_original archivo_nuevo


6: Procesos 

a) 
 Un proceso es una instancia en ejecución de un programa. En otras palabras, es el conjunto de recursos y estado que un programa en ejecución necesita para funcionar. Cada proceso tiene su propio espacio de memoria, registros y otros recursos del sistema necesarios para su ejecución.

PID (Process ID): 
PID son las siglas de "Process ID" (Identificador de Proceso). Es un número único asignado a cada proceso en el sistema operativo mientras está en ejecución
Permite al sistema operativo y a los usuarios identificar y gestionar procesos específicos.

PPID (Parent Process ID) 
PPID son las siglas de "Parent Process ID" (Identificador del Proceso Padre). Es el PID del proceso que creó (o "padre") al proceso actual. 
Permite conocer la relación jerárquica entre procesos. Cada proceso, excepto el proceso inicial (init o systemd), tiene un proceso padre.

Todos los procesos en GNU/Linux tienen un PID y un PPID. Estos identificadores son fundamentales para el funcionamiento del sistema operativo
Otros atributos que tienen los procesos: 
- UID (User ID) y GID (Group ID)
UID: Identificador del usuario que ejecuta el proceso.
GID: Identificador del grupo al que pertenece el usuario.
- Estado del Proceso: El estado del proceso puede ser R (en ejecución), S (en espera), Z (zombí), entre otros.
- Prioridad: Cada proceso tiene una prioridad, que influye en la cantidad de tiempo de CPU que recibe. La prioridad se puede ajustar con nice y renice.
Tamaño del Proceso. Incluye el tamaño total del proceso en memoria, el tamaño de la memoria compartida y el tamaño de la memoria residente.
- Comando y Argumentos:El comando que se está ejecutando y los argumentos que se le han pasado.
- Tiempo de CPU: Cantidad de tiempo de CPU que el proceso ha utilizado.
- Recursos de Archivo: Archivos abiertos por el proceso y descriptores de archivos.

b) 
ps (Process Status)
Funcionalidad: El comando ps muestra una instantánea de los procesos actuales en el sistema.
ejemplos:  
listar todos los procesos en la terminal actual ==> ps 
listar todos los procesos del sistema: ==> ps -e
listar todos los procesos con detalles: ==> ps -ef 

top
Funcionalidad: El comando top proporciona una vista en tiempo real de los procesos en ejecución
Muestra una lista en tiempo real de los procesos que consumen más recursos. ==> top 
Comandos Internos de top:
P: Ordenar por uso de CPU.
M: Ordenar por uso de memoria.
q: Salir de top.

htop
Funcionalidad: htop es una versión más avanzada y amigable de top. Ofrece una interfaz gráfica en el terminal con color y más opciones de interacción.
comando: htop 

pgrep
Funcionalidad: El comando pgrep busca procesos que coincidan con un patrón dado y muestra sus PIDs.
buscar un proceso por nombre: pgrep nombre_proceso

pstree
Funcionalidad: El comando pstree muestra una representación en árbol de los procesos en el sistema

c)
Proceso en Foreground (Primer Plano)
Definición: Un proceso en primer plano es aquel que está en ejecución y que ocupa la terminal o la interfaz de usuario actual. Mientras un proceso está en primer plano, la terminal está ocupada con él, y el usuario no puede interactuar con la terminal para otros fines hasta que el proceso termine o se detenga.

Proceso en Background (Segundo Plano)
Definición: Un proceso en segundo plano es aquel que se está ejecutando pero no ocupa la terminal o la interfaz de usuario actual. Esto permite al usuario seguir usando la terminal para otros comandos o tareas mientras el proceso en segundo plano sigue funcionando.

d) 
Para ejecutar un proceso en segundo plano (background), se puede usar el operador & al final del comando.
Esto permite que el proceso se ejecute en segundo plano y libera la terminal para otros comandos.
por ejemplo ejecutar ==> sleep 60 & 
despues de ejecutar el proceso en segundo plano, vamos a ver [1] y 12345 
 
# Pasar un Proceso de Foreground a Background
Si tenemos un proceso en primer plano que deseamos mover a segundo plano, tenemos que hacer: 
- Suspender el Proceso en Primer Plano: Usamos Ctrl + Z para suspender el proceso en ejecución en primer plano. 
Esto envía el proceso al estado de "suspendido" y lo coloca en la lista de trabajos.
- Enviar el Proceso al Background: Usa el comando bg para reanudar el proceso suspendido en segundo plano.

# Ejemplo: Ejecuta un comando que toma tiempo
find / -name "*.log"
suspendemos el proceso con: Ctrl + Z
en la terminal vamos a ver algo como: 
[1]+ 12345 suspended

# Enviamos el proceso a segundo plano: 
bg %1 
donde %1 es el numero de trabajo. Se puede listar trabajos con el comando jobs para encontrar el numero correcto 

# Pasar un proceso de Background a Foreground
fg %n 

e) 
 Se utiliza para redirigir la salida de un comando como entrada para otro comando. Esta funcionalidad permite encadenar varios comandos, formando una tubería (pipe) que procesa datos de manera secuencial.

# Ejemplo1: listar y filtrar resultados: 
mostramos todos los archivos en un directorio y luego filtramos los resultados para mostrar solo los archivos con una extension especifica. 
ls -l | grep '.txt' 
# Ejemplo 2: Contar Líneas, Palabras y Caracteres
cat archivo.txt | wc
# Ejemplo 3: Buscar procesos y ordenar los resultados
Buscar procesos que contienen un término específico y luego ordenar los resultados por uso de memoria:
ps aux | grep 'firefox' | sort -nrk 4

f) 

La redirección en sistemas GNU/Linux permite dirigir la entrada y salida de los comandos a archivos, otros comandos, o incluso al vacío. La finalidad de la redirección es controlar dónde van a parar los datos producidos por un comando y de dónde provienen los datos que un comando necesita. Esto es útil para almacenar resultados, procesar datos de manera más flexible, y manejar errores de manera eficaz.


# Redirección de Salida Estándar a un Archivo (>): Utiliza el símbolo > para enviar la salida de un comando a un archivo, sobrescribiendo el contenido del archivo si ya existe.
comando > archivo.txt
# Ejemplo: Guardar la lista de archivos en el directorio actual en un archivo llamado listado.txt:
ls > listado.txt

# Redirección de Salida Estándar a un Archivo (Añadir) (>>): 
Utiliza el símbolo >> para añadir la salida de un comando al final de un archivo existente, sin sobrescribir el contenido.
comando >> archivo.txt

# Redirección de Entrada Estándar (<)
Utiliza el símbolo < para leer la entrada de un archivo en lugar de la entrada estándar (teclado).
comando < archivo.txt
Contar las palabras en un archivo llamado texto.txt usando wc:  wc -w < texto.txt

y hay mas redirecciones. Creo que estas son las que mas se usan. 


g: Comando kill 
El comando kill en GNU/Linux se utiliza para enviar señales a los procesos. La señal más comúnmente enviada es SIGTERM (señal de terminación), que solicita a un proceso que termine de manera ordenada. Sin embargo, kill puede enviar una variedad de señales para diferentes propósitos, como terminar forzadamente un proceso o detenerlo temporalmente.

sintaxis: kill [opciones] PID
PID: ID del proceso al que se le enviará la señal. 

# Ejemplo Envía la señal de terminación (SIGTERM) al proceso con el PID 1234: 
comando: ===> kill 1234 

# Forzar la Terminación de un Proceso con SIGKILL: Envía la señal de terminación forzada (SIGKILL) al proceso con el PID 1234:
comando: ===> kill -9 1234

# Suspender un proceso con SIGSTOP: Suspende el proceso con el PID 1234. El proceso puede ser Reanudado con SIGCONT 
comando: ===> kill -STOP 1234

# Reanudar proceso con SIGCONT: Reanuda el proceso que fue suspendido con SIGSTOP 
comando: ===> kill -CONT 1234

# h) 


# 7a) 

7b): 

1: Creamos el directorio ejercicio7bIso 
==> mkdir ejercicio7bIso

2: Nos posicionamos en el directorio ejercicio7bIso

3: Creamos los 4 archivos de texto y le agregamos txt al mismo tiempo

==> echo "Este es el texto del primer archivo" > archivo1.txt
==> echo "Este es el texto del segundo archivo bro" > archivo2.txt
==> echo "texto del tercer archivo" > archivo3.txt
==> echo "Elon musk sos una bestia" > archivo4.txt

cob el >> le agregamos otra linea de texto al archivo.
==> echo "Hola linux, te banco" >> archivo1.txt 


4: Vemos si se crearon los archivos correctamente y vemos el tamaño total que ocupan los 4 archivos de texto. 
Ademas del tamaño total, nos muestra los permisos que tiene cada archivo, y la ultima fecha de modificacion 
==> ls -lh 

5: (opcional) si tuvieramos mas archivos dentro del directorio, pero solo queremos saber cuanto ocupan los 4 archivos.txt que creamos recien, podemos hacer: 

==> du -ch archivo1.txt archivo2.txt archivo3.txt archivo4.txt ] grep total 
nos imprimiria el tamaño y al lado la palabra "total"

6: crear archivo empaquetado con los 4 archivos creados anteriormente

==> tar -cvf archivoEmpaquetado.tar archivo1.txt archivo2.txt archivo3.txt archivo4.txt 

7: (opcional) podemos tirar un ls para ver si el archivo empaquetado se creo correctamente 
==> ls 

8: Vemos cuanto pesa el archivo empaquetado 
==> du -h archivoEmpaquetado.tar 1234

Característica Notable:
Si solo empaquetamos los archivos sin compresión (tar -cvf), el tamaño del archivo empaquetado será similar a la suma de los tamaños de los archivos originales. Sin embargo, si usamos compresión (tar -czvf para gzip, por ejemplo), el archivo empaquetado será más pequeño que la suma de los tamaños originales, ya que la compresión reduce el tamaño eliminando redundancias.

# e)


8) 

 ==> ls - l > prueba
 Lista los archivos y directorios del directorio actual y redirige la salida al archivo 'prueba'. Crea o sobreescribe el archivo prueba con la salida del comando ls - l

 ==> ps > prueba
 muestra los procesos actuales del usuario y rediriga la salida al archivo 'prueba'
 Crea o sobreescribe el archivo prueba con la salida del comando ps 

 ==> chmod 710 prueba 
 cambia los permisos del archivo prueba a 710 (RWX PARA PROPIETARIO, EJECUCION PARA EL GRUPO Y SIN PERMISOS PARA OTROS.)

 (opcional) si tiramos un ls -l prueba podemos ver los permisos

 ==> chmod 777 prueba
 cambia los permisos del archivo prueba a 777 (RWX PARA TODOS)

 ==> chmod 700 /etc/passwd
Acción: Cambia los permisos del archivo /etc/passwd a 700 (lectura, escritura y ejecución para el propietario).
Resultado: El comando no se ejecutará porque el usuario no tiene permisos suficientes para cambiar los permisos de un archivo en /etc.No es posible modificar sus permisos a menos que seamos el usuario root.

==> passwd root
Acción: Intenta cambiar la contraseña del usuario root.
Resultado: El comando no se ejecutará porque el usuario no tiene permisos para ver, ni cambiar la contraseña del usuario root.

==> rm prueba
Acción: Elimina el archivo PRUEBA.
Resultado: El comando se ejecutará correctamente si el archivo PRUEBA existe y el usuario tiene permisos para eliminarlo.

==> man /etc/shadow
Acción: Intenta abrir el manual de la página /etc/shadow.
Resultado: El comando no se ejecutará porque /etc/shadow no es una página de manual, sino un archivo de configuración del sistema. Ademas sale permisso denegado. 

==> find / -name *.conf
Acción: Busca archivos con extensión .conf en todo el sistema de archivos.
Resultado: El comando se ejecutará correctamente y muestra todos los archivos con extension .conf, pero podría requerir permisos adicionales para acceder a algunos directorios del sistema.

==> usermod root -d /home/newroot -1
Acción: Cambia el directorio de inicio del usuario root a /home/newroot y bloquea la cuenta root.
Resultado: El comando no se ejecutará porque el usuario no tiene permisos para modificar la cuenta root.

==> cd /root
Acción: Intenta cambiar al directorio /root.
Resultado: El comando no se ejecutará porque el usuario no tiene permisos para acceder al directorio /root. Nos muestra permiso denegado.

==> rm *
Acción: Intenta eliminar todos los archivos y directorios en el directorio actual.
Resultado: El comando se ejecutará y eliminará todos los archivos y directorios en el directorio actual, siempre que el usuario tenga permisos para hacerlo.

==> cd /etc

Acción: Cambia al directorio /etc.
Resultado: El comando se ejecutará correctamente si el usuario tiene permisos para acceder al directorio /etc.

==> cp * /home -R
Acción: Copia todos los archivos y directorios del directorio actual al directorio /home 
Resultado: El comando se ejecutará y copiará los archivos, siempre que el usuario tenga permisos de lectura en los archivos y de escritura en /home.

==> shutdown
Acción: Intenta apagar o reiniciar el sistema.
Resultado: El comando no se ejecutará porque el usuario no tiene permisos para apagar el sistema.


9)
a: Terminar el proceso con PID 23 ==> kill 23 
b: Terminar el proceso llamado init o systemd ==> sudo kill 1 
Los procesos init o systemd son procesos criticos para el funcionamiento del sistema. Ya que son proceso que se encargan de gestionar el inicio y la administracion de otros procesos. Terminar estos procesos puede hacer que el sistema se vuelva inestable o incluso que se detenga por completo.
c: Buscar todos los archivos de usuarios en los que su nombre contiene la cadena “.conf” ==> find / -type f -name "*.conf"

Este comando generará una lista de archivos en todo el sistema cuyo nombre termina en .conf.

Si se quiere buscar en un directorio específico, hay que reemplazar / con la ruta del directorio deseado. Por ejemplo, para buscar solo en el directorio /etc, podemos hacer: find /etc -type f -name "*.conf".


d: (d) Guardar una lista de procesos en ejecución el archivo /home/<su nombre de usuario>/procesos: ps aux > /home/<nombreDeUsuario>/procesos
ej : ps aux > /home/gianca/procesos

e: Cambiar los permisos del archivo /home/<su nombre de usuario>/xxxx a:
Usuario: Lectura, escritura, ejecución
Grupo: Lectura, ejecución
Otros: ejecución
==> chmod 751 /home/<su nombre de usuario>/xxxx

f:Cambiar los permisos del archivo /home/<su nombre de usuario>/yyyy a:
Usuario: Lectura, escritura.
Grupo: Lectura, ejecución
Otros: Ninguno
==> chmod 650    /home/<su nombre de usuario>/yyyy 

g:  Borrar todos los archivos del directorio /tmp
==> sudo rm -r /tmp/*

h: Cambiar el Propietario del Archivo /opt/isodata al Usuario iso2010
sudo chown iso2010 /opt/isodata
chown: Comando para cambiar el propietario y/o grupo de un archivo o directorio.
iso2010: Especifica el nuevo propietario del archivo.
/opt/isodata: Ruta al archivo cuyo propietario deseas cambiar.

(i) Guardar el Directorio Actual en el Archivo /home/<su nombre de usuario>/donde 

para obtener la ruta actual: ==> pwd 
guardar el directorio en el archivo:  pwd >> /home/<su_nombre_de_usuario>/donde
pwd >> /home/gianca/donde


10:  Indique qué comando sería necesario ejecutar para realizar cada una de las siguientes acciones:

a: ingrese al sistema como usuario "root"
==> su - 
nos va a pedir el psswd 

b: Crear un usuario con nuestra primer letra del nombre y despues el apellido y asignarle una contra

===>  adduser gcardone 
y bueno le ponemos un psswd 


c:¿Qué archivos fueron modificados luego de crear el usuario y qué directorios se crearon?
Directorios modificados: 
/etc/passwd fue modificado porque tiene la lista de usuarios del sistema con su informacion correspondiente

/etc/shadow almacena la informacion de las contraseñas de los usuarios. 

/etc/group creo que no se modifico porque no agregamos al usuario a ningun grupo 

Directorios creados: 
directorio home del usuario 
/home/gcardone 

d: Crear un directorio en /tmp llamado cursada2017
lo voy a hacer con cursada 2024
==> cd /tmp
==> mkdir cursada2024

e:Copiar todos los archivos de /var/log al directorio antes creado.
==> cp -r /var/log/* /tmp/cursada2024
explicacion:
-r : Copia directorios de manera recursiva.
*: Selecciona todos los archivos y directorios dentro de /var/log.

f:Para el directorio antes creado (y los archivos y subdirectorios contenidos en él) cambiar el propietario y grupo al usuario creado y grupo users.

chown -R gcardone:users /tmp/cursada2024

g: chmod -R 723 /tmp/cursada2024

11: 
a: 
primero creo el directorio con mi legajo: mkdir 21252-7 
accedo al directorio: cd 21252-7

b: vi LEAME
apretamos i, para entrar en modo insercion
escribimos lo que nos pide
cuando terminamos escribimos :wq y enter para guardar y cerrar el archivo. 

c: cambiamos los permisos del archivo leame.
dueño: ningun permiso ==> 0 
gripo: permiso de ejecucion ==> 1
otros: todos los permisos ==> 7 

el comando seria chmod 017 LEAME

d:  cd /etc
    cd ~
    ls /etc > leame        {a chequear}

¿Cuál es la razón por la cual puedes crear este archivo si ya existe un archivo llamado "LEAME" en este directorio?

La razón por la que puedes crear un archivo llamado leame incluso si ya existe un archivo llamado LEAME es que los sistemas de archivos en Unix/Linux son sensibles a mayúsculas y minúsculas. Por lo tanto, LEAME y leame son considerados nombres de archivos diferentes.

e: 
# find: 
El comando find se utiliza para buscar archivos y directorios en el sistema de archivos basándose en diferentes criterios como nombre, tipo, tamaño, fecha de modificación, etc. Es muy flexible y permite realizar búsquedas profundas en el sistema.
 sintaxis: find [ruta] [opciones] [expresión]
    ejemplo: Buscar un archivo específico por nombre: Si se quiere encontrar un archivo llamado documento.txt en el directorio /home/usuario, podemos usar:
==> $ find /home/usuario -name documento.txt

Buscar archivos por extensión: Para encontrar todos los archivos con extensión .log en el directorio /var/log, usamos:
==> $ find /var/log -name "*.log"
{El uso de *.log indica que se buscan archivos que terminen con .log.}

Buscar archivos modificados en los últimos 7 días: Si deseas buscar archivos que han sido modificados en los últimos 7 días en /home/usuario:
==> $ find /home/usuario -mtime -7

# locate: 
El comando locate utiliza una base de datos previamente construida para buscar archivos en el sistema. Esta base de datos es actualizada periódicamente por el sistema (usualmente a través de updatedb). locate es muy rápido para búsquedas porque no escanea el sistema de archivos en tiempo real, sino que consulta la base de datos.
==> $ locate documento

para buscar archivos con una extension especifica podmeos usar: 
==> $ locate *.conf

Resumen de Conceptos:
find: Busca en tiempo real y es muy flexible, permite realizar búsquedas detalladas y específicas en el sistema de archivos. Ideal para búsquedas profundas y detalladas.
locate: Utiliza una base de datos de archivos para realizar búsquedas rápidas. Menos flexible que find pero mucho más rápido para búsquedas generales.
 
f: sudo find /usr /lib /lib64 -type f -name "*.so" > .ejercicio_f 2>/dev/null

12: 
==> $ mkdir iso 
este comando crea un directorio con el nombre iso

==> $ cd ./iso; ps > f0
cd: cambia el directorio a ./iso 
ps: muestra el estado de los procesos en ejecucion >f0 redirige la salida del comando ps a un archivo llamado f0. 

==> $ cd / 
nos movemos al directorio raiz del sistema. 

==> $ echo $HOME 
muestra el valor de la variable de entorno HOME

==> ls -l > $HOME/iso/ls
muestra el contenido del directorio actual y redirige la salida al archivo ls en el directorio $HOME/iso

==> $ cd $HOME; mkdir f2
cambia al directorio $HOME y crea un nuevo directorio llamado f2

==> $ ls -ld f2 
muestra la informacion detallada del directorio f2. Con -ld muestra solo la informacion del directorio f2 y no su contenido

==> $ chmod 341 f2
Cambia los permisos del directorio f2: 
administrador: permisos w y x (escritura y ejecucion)
grupo: permiso r (lectura)
otros: permiso x (ejecucion)

==> $ touch dir
si no existe, crea un archivo vacio llamado dir, o actualiza la fecha y hora de acceso/modificacion si ya existe. 

==> $ cd f2
cambia de directorio 

==> $ cd ~/iso
cambia al directorio iso dentro del directorio personal del usuario 

==> $ pwd > f3 
muestra la ruta actual y redirige la salida al archivo f3

==> $ ps | grep 'ps' | wc −l >> ../ff2/f3
lista los procesos en ejecución, busca en la lista la cadena 'ps', cuenta cuántas veces aparece con wc -l y agrega el resultado al final del archivo f3 en el directorio ../ff2.

==> $ chmod 700 ../ f2; cd ..
cambia los permisos del directorio ../f2 a 700 (solo el administrador tiene todos los permisos. Despues grupo y otros no tienen ningun permiso.)
luego vuelve al directorio padre. 

==> $ find . -name 'etc/passwd'
busca un archivo llamado etc/passwd a partir del directorio actual 

==> $ mkdir ejercicio5 
crea un nuevo directorio llamado ejercicio5

a: 

b: 


13: 
el directorio f3 no se por que me sale permiso denegado para poder crearlo.
Pero para mover el directorio se debe usar: mv <directorio-a-mover> /<destino>
Mueva el archivo "f3.al directorio de trabajo /home/usuario.
==> $ mv f3 /home/gianca 

Copie el archivo "f4 en el directorio "dir11". 
==> $ cp f4 dir11/ 

renombrar el archivo f1 a archivo
==> $ mv f1 archivo

ver los permisos del archivo: 
==> $ ls -l archivo

cambiar los permisos del archivo: 
==> $ chmod 617 archivo 
permiso de lectura y escritura: 6 
permiso de ejecucion: 1
todos los permisos: 7 

Renombre los archivos "f3 "f4"de manera que se llamen "f3.exe 2"f4exerespectivamente: aca no entiendo nada como quiere que lo renombremos, esta redactado re mal esto. No se si quieren que hagamos algo de esto: 

mv f3 f3.exe 
mv f4 f4.exe

cambiar los permisos de los archivos renombrados utilizando un comando. 
Entiendo que ambos archivos deberian quedar con los mismos permisos. Seria asi: 
==> $ chmod 043 f3.exe f4.exe

14: 
a): ==> $ mkdir /tmp/logs
b): ==> $ cp -r /var/log/* /tmp/logs/
c): ==> $ tar -cf misLogs.tar -C /tmp logs 
explicacion: 
-c: crea un nuevo archivo 
-f: especifica el nombre del archivo
-C /tmp: cambia al directorio /tmp antes de empaquetar. 
d: ==> $ tar -czf misLogs.tar.gz -C /tmp logs
e: 
==> $ cp misLogs.tar /home/gianca/
==> $ cp misLogs.gz /home/gianca
f: ==> $ rm -r /tmp/logs
g: 
==> $ mkdir logs_tar
==> $ tar -xf /home/gianca/misLogs.tar -C logs_tar
explicacion: -x: extrae el contenido del archivo tar
==> $ mkdir logs_tar_gz
==> $ ==> $ tar -xzf /home/gianca/misLogs.tar.gz -C logs_tar_gz
explicacion:
 -x extrae el contenido del archivo tar
 -z descomprime el archivo tar.gz usando gzip 
 
        

