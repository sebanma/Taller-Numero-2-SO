#! /bin/bash

# Verificamos que se hayan pasado los tres argumentos necesarios
si [ " $# "  -ne 3 ] ;  entonces
  echo  " Uso: $0 permisos usuario grupo "
  salida 1
fi

# Asignamos los argumentos a las variables
permisos= " $1 "
usuario= " $2 "
grupo= " $3 "

# Verificamos que existe el archivo
si [ !  -f  " archivo.txt " ] ;  entonces
  echo  " El archivo no existe. "
  salida 1
fi

# Modificamos los permisos, usuario y grupo del archivo
chown " $usuario : $grupo " archivo.txt
chmod " $permisos " archivo.txt

# Mostramos un mensaje de confirmación
echo  " Los permisos, usuario y grupo del archivo se han modificado correctamente. "
