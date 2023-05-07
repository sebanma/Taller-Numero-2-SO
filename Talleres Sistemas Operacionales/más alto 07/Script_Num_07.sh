#! /bin/bash

# Obtener la fecha y hora actual
fecha= $( fecha + " %Y-%m-%d %T " )

# Obtener el nombre del anfitrión
nombre de host= $( nombre de host )

# Obtener la carga del sistema
carga= $( tiempo de actividad | awk ' {imprimir $10 $11 $12} ' )

# Obtener la memoria libre
gratis= $( gratis | awk ' /Mem/{imprimir $4} ' )

# Escribir la linea en el archivo de registro
echo  " $fecha  $hostname Cargar: $cargar Memoria Libre: $libre "  >> /ruta/al/archivo.log
