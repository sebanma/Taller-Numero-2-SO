#! /bin/bash

comandos = " $ INICIO /.bash_history "
comandos_ordenados = $( cat " comandos "  | ordenar | uniq -c )
echo  " $comandos_clasificados "
