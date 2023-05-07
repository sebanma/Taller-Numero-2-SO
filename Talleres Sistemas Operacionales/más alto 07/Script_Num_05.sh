#! /bin/bash

# Verificamos que se hayan pasado dos argumentos
si [ " $# "  -ne 2 ] ;  entonces
  echo  " Uso: $0 archivo1 archivo2 "
  salida 1
fi

# Asignamos los argumentos a las variables
archivo1= " $1 "
archivo2= " $2 "

# Mostramos el tipo de archivo para ambos archivos
echo  " Tipo de archivo para $archivo1 : "
archivo " $archivo1 "
echo  " Tipo de archivo para $archivo2 : "
archivo " $archivo2 "

# Comparamos los archivos a nivel de bytes
if cmp -s " $archivo1 "  " $archivo2 " ;  entonces
  echo  " Los archivos son iguales a un nivel de bytes. "
demás
  echo  " Los archivos son diferentes a nivel de bytes. "
fi

# Contamos el numero de lineas en cada archivo
lineas_archivo1= $( wc -l <  ​​" $archivo1 " )
lineas_archivo2= $( wc -l <  ​​" $archivo2 " )

# Mostramos el número de líneas para ambos archivos
echo  " Numero de lineas en $archivo1 : $lineas_archivo1 "
echo  " Numero de lineas en $archivo2 : $lineas_archivo2 "

# Comparamos los archivos a nivel de usar lineas el comando "diff"
echo  " Diferencias entre $archivo1 y $archivo2 : "
diferencia " $archivo1 "  " $archivo2 "
