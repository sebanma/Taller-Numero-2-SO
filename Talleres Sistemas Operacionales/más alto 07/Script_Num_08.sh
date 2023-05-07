#! /bin/bash

# Ruta y nombre del archivo de registro
log_file= " /ruta/al/archivo.log "

# Tamaño máximo del archivo en bytes
max_size=1000000 # 1 MB

# Comprobar el tamaño del archivo
tamaño= $( stat -c%s " $archivo_de_registro " )
if [[ $tamaño  -gt  $tamaño_máximo ]] ;  entonces
  # Si el archivo supera el tamaño máximo, comprímelo
  gzip " $archivo_de_registro "
  # Crear un nuevo archivo de registro vacío
  >  " $archivo_de_registro "
fi
