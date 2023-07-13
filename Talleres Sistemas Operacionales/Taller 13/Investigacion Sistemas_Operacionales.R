# Taller Numero 13- Sistemas Operacionales:

1. Ejecute el comando man stress-ng y lea la documentación de la herramienta.
2. Genere un comando que evalúe la CPU.
3. Genere un comando que evalúe la memoria.
4. Genere un comando que evalúe el manejo de proceso e hilos.
5. Almacene los resultados en diferentes archivos.
6. Genere un documento .md donde se visualice:
  1. Nombre y breve descripción de la herramienta.
2. Los comandos creados con una descripción de lo que hace y porque lo hace.
3. Ejecute los comandos 5 veces cada uno, compare los resultados y explique según su criterio
el comportamiento de las pruebas.

# stress-ng

Es una herramienta de prueba de estrés para Linux. Proporciona una variedad de métodos de estrés para evaluar el rendimiento del sistema y la estabilidad. Está diseñada para cargar y ejercitar diferentes subsistemas del sistema, como la CPU, la memoria, los sistemas de archivos, la red y más.

# Evaluar la CPU:
  
Usamos el siguiente comando 

# stress-ng --cpu 1 --timeout 60s

Descripción: Este comando utiliza stress-ng para cargar la CPU durante 60 segundos con un hilo de estrés.

# Evaluar la memoria:
  
Usamos el siguiente comando

# stress-ng --vm 1 --vm-bytes 1G --timeout 60s

Descripción: Este comando utiliza stress-ng para cargar la memoria con un patrón aleatorio de acceso durante 60 segundos. El parámetro --vm-bytes especifica la cantidad de memoria a utilizar (1G en este caso).

#Evaluar el manejo de procesos e hilos:

Usamos el siguiente comando
  
# stress-ng --fork 1 --threads 4 --timeout 60s

Descripción: Este comando utiliza stress-ng para crear un proceso principal con 4 hilos secundarios durante 60 segundos.

Para almacenar los resultados en archivos diferentes, puedes redirigir la salida estándar a un archivo usando el operador > seguido del nombre de archivo. Por ejemplo:
  
stress-ng --cpu 1 --timeout 60s > resultado_cpu.txt

stress-ng --vm 1 --vm-bytes 1G --timeout 60s > resultado_memoria.txt

stress-ng --fork 1 --threads 4 --timeout 60s > resultado_procesos_hilos.txt

Esto guardará la salida de cada comando en un archivo separado: resultado_cpu.txt, resultado_memoria.txt y resultado_procesos_hilos.txt.

A continuación se muestra un ejemplo de cómo podría verse el documento Markdown (.md) con las descripciones y resultados:
  
# Herramienta de Prueba de Estrés: stress-ng

stress-ng es una herramienta de prueba de estrés para Linux que permite cargar y evaluar diferentes subsistemas del sistema.

## Comandos

### Evaluación de la CPU

```bash
stress-ng --cpu 1 --timeout 60s

Este comando carga la CPU durante 60 segundos con un hilo de estrés.

Evaluación de la Memoria

bash
stress-ng --vm 1 --vm-bytes 1G --timeout 60s

Este comando carga la memoria con un patrón aleatorio de acceso durante 60 segundos.

Evaluación del Manejo de Procesos e Hilos

bash
Copy code
stress-ng --fork 1 --threads 4 --timeout 60s

Este comando crea un proceso principal con 4 hilos secundarios durante 60 segundos.

Resultados
A continuación se presentan los resultados de ejecutar cada comando 5 veces:
  
  Evaluación de la CPU
Prueba	
1	...
2	...
3	...
4	...
5	...
Evaluación de la Memoria
Prueba	
1	...
2	...
3	...
4	...
5	...
Evaluación del Manejo de Procesos e Hilos
Prueba	
1	...
2	...
3	...
4	...
5	...

Conclusiones

Según mi criterio, los resultados de las pruebas pueden variar en función de la carga del sistema, el hardware subyacente y otros factores. Sería necesario analizar los resultados detallados para extraer conclusiones sobre el comportamiento del sistema bajo estrés.
