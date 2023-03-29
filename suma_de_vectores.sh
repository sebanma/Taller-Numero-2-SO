#!/bin/bash


archivo_suma="suma_realizada.txt"

# Leer la documentacion de los archivos
doc1=($(cat creacion_carpeta/archivo01.txt))
doc2=($(cat creacion_carpeta/archivo02.txt))

# Sumar los contenidos
suma_doc=$((doc1 + doc2))

# Guardar el resultado en un archivo
echo "$suma_doc" > "$archivo_suma"
