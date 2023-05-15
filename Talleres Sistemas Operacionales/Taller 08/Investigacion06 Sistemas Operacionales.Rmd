---
title: "Sistemas Operacionales-2191969"
output: html_document
date: "2023-05-03"
editor_options: 
  markdown: 
    wrap: 72
---

# Sebastián David Mendoza Alvarado

# 2191969

# Investigación 05

**Pregunta 1**

**1.Por qué es importante para un planificador diferenciar entre un
programa limitado por I/O y por CPU?**

Es importante para un planificador diferenciar entre un programa
limitado por I/O y por CPU porque cada tipo de programa requiere
diferentes enfoques de planificación y asignación de recursos.

Un programa limitado por I/O, como un programa de procesamiento de
archivos, utiliza una cantidad significativa de tiempo de CPU para leer
y escribir datos desde y hacia dispositivos de entrada/salida, como
discos duros, unidades flash y redes. Si un planificador asigna recursos
adicionales de CPU a un programa limitado por I/O, no mejorará su
rendimiento, ya que el cuello de botella es el acceso a dispositivos de
entrada/salida.

Por otro lado, un programa limitado por CPU, como un programa de cálculo
intensivo, utiliza principalmente la CPU para realizar cálculos y no
necesita acceso constante a dispositivos de entrada/salida. Si un
planificador asigna recursos adicionales de E/S a un programa limitado
por CPU, no mejorará significativamente su rendimiento, ya que el cuello
de botella es la capacidad de la CPU.

**Pregunta 2**

**2.Como entran en conflicto en determinadas configuraciones la
utilización de CPU y tiempo de respuesta?**

En determinadas configuraciones, puede haber un conflicto entre la
utilización de CPU y el tiempo de respuesta. Esto ocurre cuando hay
múltiples procesos compitiendo por los recursos de la CPU y los procesos
que requieren una respuesta rápida pueden ser retrasados por los
procesos que requieren más tiempo de CPU.

Por ejemplo, en un sistema de tiempo compartido, varios usuarios pueden
ejecutar programas simultáneamente, cada uno de los cuales compite por
los recursos de la CPU. Si un programa requiere una respuesta rápida,
como un programa de entrada/salida en tiempo real, puede ser retrasado
por otros programas que requieren más tiempo de CPU.

Otro ejemplo es un servidor web que maneja múltiples solicitudes de
clientes al mismo tiempo. Si un cliente realiza una solicitud que
requiere una respuesta rápida, como una consulta de base de datos
simple, puede ser retrasado por otros clientes que realizan solicitudes
más intensivas de CPU.

En estos casos, los administradores del sistema pueden utilizar técnicas
de planificación de procesos para priorizar los procesos que requieren
una respuesta rápida y asignarles una mayor porción de tiempo de CPU.
También pueden implementar técnicas de gestión de memoria para optimizar
el uso de la memoria del sistema y reducir la necesidad de intercambio
de disco, lo que puede mejorar el tiempo de respuesta de los procesos.

En conclusión, es importante considerar tanto la utilización de CPU como
el tiempo de respuesta al planificar y administrar sistemas informáticos
para evitar conflictos y optimizar el rendimiento del sistema.En
determinadas configuraciones, puede haber un conflicto entre la
utilización de CPU y el tiempo de respuesta. Esto ocurre cuando hay
múltiples procesos compitiendo por los recursos de la CPU y los procesos
que requieren una respuesta rápida pueden ser retrasados por los
procesos que requieren más tiempo de CPU.

Por ejemplo, en un sistema de tiempo compartido, varios usuarios pueden
ejecutar programas simultáneamente, cada uno de los cuales compite por
los recursos de la CPU. Si un programa requiere una respuesta rápida,
como un programa de entrada/salida en tiempo real, puede ser retrasado
por otros programas que requieren más tiempo de CPU.

Otro ejemplo es un servidor web que maneja múltiples solicitudes de
clientes al mismo tiempo. Si un cliente realiza una solicitud que
requiere una respuesta rápida, como una consulta de base de datos
simple, puede ser retrasado por otros clientes que realizan solicitudes
más intensivas de CPU.

En estos casos, los administradores del sistema pueden utilizar técnicas
de planificación de procesos para priorizar los procesos que requieren
una respuesta rápida y asignarles una mayor porción de tiempo de CPU.
También pueden implementar técnicas de gestión de memoria para optimizar
el uso de la memoria del sistema y reducir la necesidad de intercambio
de disco, lo que puede mejorar el tiempo de respuesta de los procesos.

En conclusión, es importante considerar tanto la utilización de CPU como
el tiempo de respuesta al planificar y administrar sistemas informáticos
para evitar conflictos y optimizar el rendimiento del sistema.

**Pregunta 3**

**3.Como entran en conflicto en determinadas configuraciones el tiempo
medio de procesamiento y tiempo máximo de espera?**

El tiempo medio de procesamiento y el tiempo máximo de espera son dos
conceptos importantes en la gestión de sistemas y la planificación de
recursos informáticos. A menudo, estos dos conceptos pueden entrar en
conflicto en determinadas configuraciones.

El tiempo medio de procesamiento se refiere al tiempo promedio que tarda
un sistema en procesar una tarea. Por otro lado, el tiempo máximo de
espera es el tiempo máximo que un usuario está dispuesto a esperar para
recibir una respuesta o un resultado de una tarea.

En un entorno en el que hay una gran cantidad de solicitudes y recursos
limitados, el tiempo medio de procesamiento puede aumentar, lo que puede
provocar que el tiempo máximo de espera sea superado. Por ejemplo, si un
servidor tiene una capacidad limitada para procesar solicitudes, es
posible que los usuarios tengan que esperar más tiempo para obtener una
respuesta. Si el tiempo medio de procesamiento aumenta
significativamente, el tiempo máximo de espera puede ser superado, lo
que puede tener un impacto negativo en la experiencia del usuario y en
la eficiencia del sistema.

En mi opinión, es importante encontrar un equilibrio entre el tiempo
medio de procesamiento y el tiempo máximo de espera. Si el tiempo medio
de procesamiento es demasiado largo, se deben implementar medidas para
reducir la carga en el sistema y aumentar la capacidad de procesamiento.
Si el tiempo máximo de espera es demasiado corto, se debe considerar
aumentar la capacidad del sistema y optimizar el proceso de
procesamiento.

En general, es importante tener en cuenta que el tiempo medio de
procesamiento y el tiempo máximo de espera no son conceptos aislados,
sino que están interrelacionados y deben ser considerados en conjunto
para garantizar un sistema eficiente y una buena experiencia del
usuario.

**Pregunta 4**

**4.Como entran en conflicto en determinadas configuraciones la
utilización de los dispositivos I/O y la utilización de la CPU?**

La utilización de dispositivos de entrada y salida (I/O) en una
configuración informática puede generar conflictos con el uso de la CPU
debido a que los dispositivos I/O requieren acceso a la CPU para enviar
o recibir datos. Si varios dispositivos I/O intentan acceder a la CPU
simultáneamente, se puede producir un cuello de botella que afecte al
rendimiento general del sistema.

Además, algunos dispositivos I/O pueden requerir más tiempo para
procesar los datos que otros, lo que puede ralentizar el rendimiento
general del sistema si la CPU se ve obligada a esperar a que el
dispositivo I/O termine de procesar los datos antes de pasar a la
siguiente tarea.

Por otro lado, la utilización de dispositivos I/O también puede liberar
la carga de trabajo de la CPU al permitir que los dispositivos I/O
manejen tareas específicas. Por ejemplo, una tarjeta gráfica dedicada
puede manejar las tareas de procesamiento de gráficos de una
computadora, liberando la CPU para manejar otras tareas.

En general, es importante encontrar un equilibrio adecuado entre la
utilización de dispositivos I/O y el uso de la CPU en una configuración
informática para maximizar el rendimiento del sistema. Se pueden tomar
medidas para minimizar los conflictos, como limitar el número de
dispositivos I/O que acceden a la CPU simultáneamente, priorizar el
acceso a la CPU según la prioridad de las tareas y optimizar el uso de
los recursos del sistema para evitar cuellos de botella.

**Pregunta 5**

**5.. Considere el siguiente conjunto de procesos, todos llegan al mismo
tiempo en el orden del subíndice:Dibuje el diagrama de Gantt para FCFS,
SJF, por prioridades (\# de prioridad baja = a alta prioridad) y RR
(cuanto = 1).**

Para realizar los diagramas de Gantt, se necesitan los tiempos de
llegada, tiempo de CPU y prioridades para cada proceso. Supongamos que
los tiempos de llegada son todos iguales a cero (todos llegan al mismo
tiempo) y los tiempos de CPU son los siguientes:

Proceso P0: 8 unidades de tiempo Proceso P1: 4 unidades de tiempo
Proceso P2: 9 unidades de tiempo Proceso P3: 5 unidades de tiempo
Proceso P4: 3 unidades de tiempo

También se asignará una prioridad más alta a los procesos con menos
tiempo de CPU restante (SJF) y una prioridad más baja a los procesos con
más tiempo de CPU restante.

A continuación se muestran los diagramas de Gantt para cada algoritmo de
planificación:

FCFS (Primero en llegar, primero en ser atendido):

| P0 \| P1 \| P2 \| P3 \| P4 \|

0 8 12 21 26 29

SJF (El trabajo más corto primero):

| P4 \| P1 \| P3 \| P0 \| P2 \|

0 3 7 12 21 30

Prioridades:

| P2 \| P0 \| P3 \| P1 \| P4 \|

0 8 17 22 26 29

RR (Round Robin con un cuanto de tiempo de 1 unidad):

| P0 \| P1 \| P2 \| P3 \| P4 \| P0 \| P2 \| P3 \| P2 \|

0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

**Pregunta 6**

**6.Cual es el tiempo de ejecución de cada proceso para cada
algoritmo?**

A continuación se muestran los tiempos de ejecución para cada proceso y cada algoritmo:

FCFS:

P0: 8 unidades de tiempo

P1: 4 unidades de tiempo

P2: 9 unidades de tiempo

P3: 5 unidades de tiempo 

P4: 3 unidades de tiempo 

SJF:

P4: 3 unidades de tiempo 

P1: 4 unidades de tiempo 

P3: 5 unidades de tiempo

P0: 8 unidades de tiempo

P2: 9 unidades de tiempo

Prioridades:

P2: 9 unidades de tiempo

P0: 8 unidades de tiempo

P3: 5 unidades de tiempo

P1: 4 unidades de tiempo

P4: 3 unidades de tiempo 

RR:

P0: 9 unidades de tiempo

P1: 4 unidades de tiempo 

P2: 12 unidades de tiempo

P3: 7 unidades de tiempo 

P4: 3 unidades de tiempo 

Es importante
tener en cuenta que el tiempo de ejecución de cada proceso puede variar
dependiendo del algoritmo de planificación utilizado, ya que cada uno
utiliza diferentes criterios para asignar la CPU a los procesos.

**Pregunta 7**

**7.. Cual es el tiempo de espera de cada proceso para cada algoritmo?**

A continuación se muestran los tiempos de espera para cada proceso y
cada algoritmo:

FCFS:

P0: 0 unidades de tiempo

P1: 8 unidades de tiempo

P2: 12 unidades de tiempo

P3: 21 unidades de tiempo

P4: 26 unidades de tiempo

SJF:

P4: 0 unidades de tiempo

P1: 0 unidades de tiempo

P3: 4 unidades de tiempo

P0: 12 unidades de tiempo

P2: 21 unidades de tiempo 

Prioridades:

P2: 0 unidades de tiempo 

P0: 9 unidades de tiempo 

P3: 17 unidades de tiempo 

P1: 22 unidades de tiempo

P4: 26 unidades de tiempo 

RR:

P0: 15 unidades de tiempo

P1: 9 unidades de tiempo

P2: 18 unidades de tiempo

P3: 12 unidades de tiempo 

P4: 6 unidades de tiempo

El tiempo de espera de un proceso es el tiempo que pasa desde que llega al sistema hasta que comienza a ejecutarse en la CPU. Es importante tener en cuenta que el tiempo de espera puede variar según el algoritmo de planificación utilizado, ya que cada uno utiliza diferentes criterios para asignar la CPU a los procesos.

**Pregunta 8**

**8.Que algoritmo puede dar lugar a bloqueos indefinidos?**

El algoritmo de planificación que puede dar lugar a bloqueos indefinidos es el algoritmo de planificación por prioridades sin prelación, también conocido como Priority Inversion Problem (PIP). En este algoritmo, si un proceso de baja prioridad tiene un recurso que necesita un proceso de alta prioridad, el proceso de alta prioridad se bloquea hasta que el recurso esté disponible. Sin embargo, si un proceso de media prioridad tiene el recurso necesario por el proceso de baja prioridad, y un proceso de alta prioridad necesita el recurso del proceso de media prioridad, puede ocurrir una inversión de prioridad, donde el proceso de baja prioridad retiene el recurso y el proceso de alta prioridad queda bloqueado indefinidamente esperando que se libere el recurso. Esto puede generar una situación de inanición (starvation) del proceso de alta prioridad.

Para solucionar este problema, se han desarrollado algoritmos de planificación que previenen la inversión de prioridad, como el protocolo de herencia de prioridad (priority inheritance protocol) o el protocolo de prioridad de techo (priority ceiling protocol). Estos protocolos buscan evitar que los procesos de baja prioridad bloqueen a los procesos de alta prioridad, elevando temporalmente la prioridad de un proceso para que pueda acceder al recurso necesario.

**Pregunta 9**

**9.Considere un sistema que implementa una planificación por colas multinivel. Que estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?**

En un sistema que implementa una planificación por colas multinivel, la estrategia que puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario es manipular las prioridades de los procesos. Esto puede lograrse de varias maneras, como:

Asignar una prioridad más alta a los procesos del usuario en la cola correspondiente: En este caso, los procesos del usuario tendrán una prioridad más alta que los procesos del sistema, lo que les permitirá acceder a la CPU con mayor frecuencia.

Utilizar un mecanismo de retroalimentación (feedback): En este caso, se asigna una prioridad baja a los procesos en la cola de prioridad más alta y, después de un tiempo determinado de espera, se eleva su prioridad. De esta manera, los procesos del usuario que no han sido atendidos durante un tiempo prolongado, tendrán una prioridad más alta en la siguiente ronda de planificación y, por lo tanto, tendrán más tiempo de CPU asignado.

Establecer un límite de tiempo de CPU para los procesos del sistema: En este caso, se establece un límite de tiempo de CPU para los procesos del sistema, lo que significa que después de haber utilizado una cantidad de tiempo de CPU determinada, su prioridad se reduce y se mueven a una cola de prioridad más baja. Esto permite que los procesos del usuario tengan una mayor oportunidad de acceso a la CPU.

En general, la estrategia de manipulación de prioridades puede utilizarse de diversas formas en una planificación por colas multinivel para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario. Sin embargo, también es importante tener en cuenta la equidad en la asignación de recursos, ya que los procesos del sistema también pueden ser esenciales para el funcionamiento del sistema en su conjunto.





