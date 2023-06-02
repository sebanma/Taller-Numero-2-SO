---
title: "R Notebook"
output: html_notebook
---
# Sebastian David Mendoza Alvarado-2191969

# Investigación


# Ejercicio 1) Explique la diferencia entre los conceptos de fragmentación interna y externa.

La fragmentación interna y externa son dos conceptos que se refieren a la forma en que se utiliza y administra el espacio de almacenamiento en sistemas de archivos o bases de datos. Aunque ambos términos están relacionados con la fragmentación, se aplican en diferentes contextos y tienen implicaciones distintas.

**1.** Fragmentación interna:

La fragmentación interna ocurre en sistemas de almacenamiento cuando hay espacio no utilizado dentro de un bloque o una página asignada. En otras palabras, se produce cuando un bloque o una unidad de almacenamiento se asigna a un archivo o registro, pero no se utiliza en su totalidad. Esta situación puede deberse a la asignación de bloques o páginas en unidades fijas, lo que conduce a un desperdicio de espacio.

Un ejemplo común de fragmentación interna ocurre en los sistemas de archivos cuando se asigna un bloque fijo de tamaño, como 4 KB, a un archivo que ocupa menos espacio. Si el archivo solo ocupa 2 KB, los otros 2 KB dentro del bloque asignado no se utilizan y se desperdician. A medida que esto ocurre en múltiples bloques o registros, la fragmentación interna puede llevar a un uso ineficiente del espacio de almacenamiento y reducir la capacidad disponible.

**2.**Fragmentación externa:
La fragmentación externa ocurre cuando hay bloques o segmentos de almacenamiento dispersos y no contiguos en el sistema, lo que dificulta la asignación eficiente de nuevos archivos o registros. A diferencia de la fragmentación interna, la fragmentación externa se produce en un nivel más alto de organización y se refiere a la distribución física de los bloques o segmentos de almacenamiento en todo el sistema.

Hay dos tipos principales de fragmentación externa:

**a)** Fragmentación externa por colocación: Se produce cuando los bloques o segmentos de almacenamiento no se asignan de manera continua y se dispersan por el sistema de manera no contigua. Esto puede ocurrir debido a la eliminación de archivos o registros antiguos, lo que deja espacios vacíos entre los bloques utilizados. Estos espacios vacíos, conocidos como huecos, pueden ser demasiado pequeños para acomodar un nuevo archivo, lo que resulta en una fragmentación externa.

**b)** Fragmentación externa por tamaño: Se produce cuando los archivos o registros en el sistema tienen diferentes tamaños y se asignan a bloques o segmentos de almacenamiento que también tienen tamaños diferentes. A medida que se agregan y eliminan archivos, los bloques de diferentes tamaños pueden quedar dispersos en el sistema. Esto dificulta la asignación eficiente de archivos más grandes, ya que pueden no encontrar un espacio continuo lo suficientemente grande para acomodarlos.

En resumen, la fragmentación interna se refiere al espacio no utilizado dentro de un bloque o página asignada, mientras que la fragmentación externa se relaciona con la distribución no contigua de bloques o segmentos de almacenamiento en todo el sistema. Ambos tipos de fragmentación pueden afectar la eficiencia del sistema de almacenamiento y requerir técnicas de gestión adecuadas para minimizar su impacto.

# Ejercicio 2)¿En que forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?


El editor de montaje es una herramienta utilizada en el desarrollo de software para convertir el código fuente en lenguaje ensamblador en un archivo ejecutable. Durante este proceso, el editor de montaje realiza varias tareas, incluyendo la asignación de direcciones de memoria a las instrucciones y los datos del programa.

El editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria de varias formas:

**Reserva de espacio:** El editor de montaje asigna direcciones de memoria para almacenar las instrucciones del programa y los datos necesarios. Esto implica reservar una cantidad específica de memoria para cada instrucción y dato, y asignarles direcciones únicas.

**Generación de direcciones relativas:** En el lenguaje ensamblador, las instrucciones a menudo hacen referencia a direcciones de memoria relativas. El editor de montaje calcula estas direcciones en función de la posición de las instrucciones y los datos en el archivo fuente. Por ejemplo, si una instrucción hace referencia a una dirección de memoria relativa a partir de la ubicación actual del contador de programa, el editor de montaje calculará la dirección absoluta correspondiente y la insertará en el código generado.

**Resolución de símbolos:** El editor de montaje también se encarga de resolver los símbolos utilizados en el código fuente, como etiquetas y nombres de variables. Asigna direcciones de memoria específicas a estos símbolos y reemplaza las referencias a los símbolos con las direcciones correspondientes en el código generado. Esto permite que las instrucciones hagan referencia a ubicaciones de memoria específicas.

En resumen, el editor de montaje juega un papel crucial en la transformación del código fuente en lenguaje ensamblador en un programa ejecutable. Mediante la asignación de direcciones de memoria a las instrucciones y los datos, y resolviendo los símbolos utilizados, el editor de montaje establece el acoplamiento entre las instrucciones y los datos en las direcciones de memoria adecuadas.

# Ejercicio 3)¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento
de memoria de éste?


El compilador y el editor de montaje son herramientas diferentes con funciones distintas en el proceso de desarrollo de software. El compilador se encarga de traducir el código fuente en un lenguaje de programación de alto nivel a un código objeto en lenguaje de máquina. Por otro lado, el editor de montaje se utiliza para combinar y organizar los módulos de código objeto generados por el compilador para crear un archivo ejecutable.

El compilador no pasa información directamente al editor de montaje, ya que son herramientas independientes que operan en diferentes etapas del proceso de compilación. Sin embargo, el compilador genera información en el código objeto que es utilizada por el editor de montaje para realizar el acoplamiento de memoria.

La información que puede ser relevante para el acoplamiento de memoria y que el compilador incluye en el código objeto puede incluir:

**Símbolos y tablas de símbolos:** El compilador genera símbolos para representar variables, funciones y otros elementos del programa. Estos símbolos se almacenan en tablas de símbolos junto con información como el tipo de dato, la ubicación y otros atributos relevantes. El editor de montaje utiliza esta información para resolver referencias a símbolos y asignar direcciones de memoria adecuadas.

**Información de dependencias:** Si el programa hace uso de bibliotecas externas, el compilador puede generar información sobre las dependencias del programa en el código objeto. Esto puede incluir referencias a funciones o variables definidas en bibliotecas externas. El editor de montaje utiliza esta información para vincular las bibliotecas adecuadas durante el proceso de acoplamiento.

**Información de alineación y tamaño:** El compilador puede agregar información sobre el tamaño y la alineación de las variables y estructuras de datos en el código objeto. Esta información es útil para el editor de montaje al calcular las direcciones de memoria y asegurarse de que las estructuras de datos estén correctamente alineadas.

Es importante destacar que la forma en que el compilador y el editor de montaje interactúan y comparten información puede variar según las herramientas y el sistema en particular. La respuesta anterior describe una situación típica, pero pueden existir variaciones dependiendo del entorno de desarrollo y las herramientas utilizadas.


# Ejercicio 4) En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300KB, y 600 KB. ¿Como situarían en memoria una serie de procesos de 212 KB, 417 KB, 112KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste?¿Que algoritmo hace el uso más eficiente de la memoria

Para situar los procesos en las particiones de memoria utilizando los algoritmos de primer ajuste, mejor ajuste y peor ajuste, se siguen las siguientes reglas:

*Primer ajuste:* El proceso se coloca en la primera partición de memoria que tenga suficiente espacio para acomodarlo.

*Mejor ajuste:* El proceso se coloca en la partición de memoria más pequeña que sea lo suficientemente grande para acomodarlo.

*Peor ajuste:* El proceso se coloca en la partición de memoria más grande que sea lo suficientemente grande para acomodarlo.

Siguiendo estas reglas, situemos los procesos en las particiones de memoria en el orden especificado:

**Primer ajuste:**

212 KB: Se coloca en la partición de 500 KB.

417 KB: No hay particiones con suficiente espacio, por lo que se busca en la siguiente partición disponible y se coloca en la partición de 600 KB.

112 KB: Se coloca en la partición de 100 KB.

426 KB: Se coloca en la partición de 500 KB.


**Mejor ajuste:**

212 KB: Se coloca en la partición de 300 KB, ya que es la partición más pequeña que puede acomodarlo.

417 KB: Se coloca en la partición de 500 KB, ya que es la partición más pequeña que puede acomodarlo.

112 KB: Se coloca en la partición de 100 KB, ya que es la partición más pequeña que puede acomodarlo.

426 KB: Se coloca en la partición de 500 KB, ya que es la partición más pequeña que puede acomodarlo.


**Peor ajuste:**

212 KB: Se coloca en la partición de 600 KB, ya que es la partición más grande que puede acomodarlo.

417 KB: Se coloca en la partición de 600 KB, ya que es la partición más grande que puede acomodarlo.

112 KB: Se coloca en la partición de 500 KB, ya que es la partición más grande que puede acomodarlo.

426 KB: Se coloca en la partición de 600 KB, ya que es la partición más grande que puede acomodarlo.

En términos de eficiencia del uso de la memoria, el algoritmo de mejor ajuste es generalmente considerado como el más eficiente, ya que busca la partición que mejor se ajuste al tamaño del proceso. Esto minimiza el desperdicio de espacio y permite aprovechar al máximo la memoria disponible. Sin embargo, es importante tener en cuenta que la eficiencia del uso de la memoria puede variar según las características específicas de los procesos y las particiones de memoria disponibles.

# Ejercicio 5)La mayoría de OS permiten a los programas asignar más memoria a su espacio de direccionesdurante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?1. Asignación contigua de memoria.2. Segmentación pura.3. Paginación pura.

Para soportar la asignación dinámica de memoria en los esquemas mencionados, se requieren ciertos mecanismos y estructuras adicionales en el sistema operativo. A continuación, se detallan los requisitos para cada uno de los esquemas:

**1)Asignación contigua de memoria:**

**Fragmentación:** El sistema operativo debe manejar la fragmentación interna y externa de la memoria. Para abordar la fragmentación interna, se pueden utilizar técnicas como la asignación en bloques de tamaño fijo o el uso de técnicas de relleno para ocupar el espacio no utilizado. Para la fragmentación externa, se puede implementar un mecanismo de compactación que reorganice las particiones de memoria y reduzca el espacio libre fragmentado.


**Reubicación:** El sistema operativo debe ser capaz de reubicar y actualizar las direcciones base de los programas cuando se les asigna más memoria dinámicamente. Esto implica la necesidad de mantener un registro de las direcciones base y límites de las particiones de memoria asignadas a cada programa.

**Gestión del espacio libre:** El sistema operativo debe realizar un seguimiento del espacio libre disponible en la memoria y tener algoritmos eficientes para encontrar y asignar bloques de memoria contiguos cuando se solicite una asignación dinámica.


**2)Segmentación pura:**

**Tabla de segmentos:** El sistema operativo debe mantener una tabla de segmentos que contenga información sobre cada segmento asignado a un programa, incluyendo su dirección base, límites y otros atributos. Esta tabla debe actualizarse y modificarse cuando se realiza una asignación dinámica de memoria.


**Fragmentación:** Al igual que en el caso de la asignación contigua, el sistema operativo debe abordar la fragmentación interna y externa de la memoria. Pueden aplicarse técnicas como la asignación de segmentos de tamaño fijo o el uso de técnicas de relleno para ocupar el espacio no utilizado dentro de los segmentos.

**Protección de segmentos:** El sistema operativo debe implementar mecanismos de protección para garantizar que un programa no acceda a segmentos de memoria asignados a otros programas o al sistema operativo.


**3)Paginación pura:**

**Tablas de páginas:** El sistema operativo necesita mantener tablas de páginas que mapeen las páginas virtuales a las páginas físicas correspondientes en la memoria. Estas tablas se actualizan dinámicamente cuando se asigna más memoria a un programa. Además, el sistema operativo necesita llevar un registro de las páginas virtuales libres y disponibles en la memoria.

**Almacenamiento secundario:** En un sistema de paginación pura, el almacenamiento secundario (como el disco duro) juega un papel crucial. El sistema operativo debe tener mecanismos para almacenar y recuperar páginas en el almacenamiento secundario cuando no haya suficiente memoria física disponible.


**Fragmentación:** En la paginación pura, la fragmentación interna es mínima ya que las páginas se asignan en bloques de tamaño fijo. Sin embargo, puede haber fragmentación externa debido a la asignación de páginas no contiguas.


En resumen, para soportar la asignación dinámica de memoria en los esquemas mencionados, el sistema operativo necesita contar con mecanismos adecuados para la gestión de memoria, el manejo de fragmentación, la reubicación de direcciones y el seguimiento de las asignaciones realizadas. Cada esquema tiene sus propios requisitos y desafíos específicos a considerar.

# Ejercicio 6)Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a:1. Fragmentación externa.2. Fragmentación interna.3. Capacidad de compartir código.

*1)Fragmentación externa:*


**Asignación continua de memoria:** En este esquema, la fragmentación externa puede ser un problema significativo. La memoria se divide en particiones de tamaño fijo para alojar diferentes programas o procesos. Si el tamaño de los programas no coincide exactamente con el tamaño de las particiones, se generará fragmentación externa. Esto significa que puede haber espacios libres desperdiciados entre los programas, lo que reduce la eficiencia en el uso de la memoria.


**Segmentación pura:** La fragmentación externa es mucho menor en la segmentación pura. En este esquema, la memoria se divide en segmentos lógicos de diferentes tamaños, y cada segmento puede contener una parte de un programa o un programa completo. Los segmentos se asignan de manera no contigua en la memoria física, lo que permite un uso más eficiente del espacio. Sin embargo, aún puede haber fragmentación externa si los segmentos no se pueden acomodar en los espacios libres disponibles.


**Paginación pura:** La paginación pura elimina por completo la fragmentación externa. La memoria se divide en páginas de tamaño fijo y los programas se dividen en páginas lógicas del mismo tamaño. Estas páginas se asignan de manera no contigua en la memoria física, lo que significa que no hay espacios libres desperdiciados entre ellas. La paginación trata de manera eficiente los problemas de fragmentación externa al dividir la memoria en unidades pequeñas y asignarlas según sea necesario.


*2)Fragmentación interna:*

**Asignación continua de memoria:** La fragmentación interna puede ser un problema en este esquema. Si el tamaño de un programa es menor que el tamaño de la partición asignada, habrá una porción de memoria desperdiciada debido a la diferencia de tamaño. Esta porción no utilizada se conoce como fragmentación interna y puede acumularse a medida que se asignan y liberan diferentes programas.


**Segmentación pura:** En la segmentación pura, no hay fragmentación interna. Cada segmento se asigna de manera independiente en la memoria física y se puede ajustar exactamente al tamaño del segmento lógico, eliminando cualquier desperdicio de memoria.


**Paginación pura:** La paginación pura también puede presentar fragmentación interna. Si el tamaño de un programa no es múltiplo del tamaño de página, la última página asignada puede contener espacio no utilizado. Esto resulta en fragmentación interna, ya que una parte de la última página se desperdicia. Sin embargo, la fragmentación interna en la paginación pura tiende a ser menor que en la asignación continua de memoria, ya que las páginas son más pequeñas que las particiones.


*3)Capacidad de compartir código:*


**Asignación continua de memoria:** En este esquema, compartir código entre programas es más difícil. Cada programa se carga en una partición de memoria separada y no hay mecanismos incorporados para compartir código entre ellos. Esto puede resultar en una duplicación de código y un mayor consumo de memoria.

**Segmentación pura:** La segmentación pura facilita el intercambio de código entre programas. Los segmentos pueden ser compartidos entre múltiples programas, lo que reduce la duplicación de código y el consumo de memoria. Esto permite un uso más eficiente de la memoria y fomenta la reutilización de código.

**Paginación pura:** La paginación pura también permite el compartir código entre programas de manera eficiente. Las páginas se pueden compartir entre diferentes procesos, lo que reduce la duplicación de código y mejora la utilización de la memoria. La paginación pura facilita el mecanismo de memoria virtual, lo que permite que un programa acceda a páginas de memoria que no están físicamente presentes en la memoria principal en ese momento.


En resumen, en términos de fragmentación externa, la asignación continua de memoria es más propensa a sufrir fragmentación, mientras que la segmentación pura y la paginación pura la minimizan o eliminan. En cuanto a la fragmentación interna, la asignación continua de memoria y la paginación pura pueden tener cierta cantidad de fragmentación interna, mientras que la segmentación pura la evita por completo. En términos de compartir código, tanto la segmentación pura como la paginación pura son más adecuadas, ya que permiten el intercambio eficiente de código entre programas, lo que resulta en un uso más eficiente de la memoria.


# Ejercicio 7) En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad.1. ¿Por qué? 2. ¿Como podía el OS permitir el acceso a otras zonas de memoria? 3. ¿Por qué debería o por qué no debería?

*1*En un sistema operativo con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad debido a las políticas de protección de memoria implementadas en el sistema. Estas políticas de protección son esenciales para garantizar la seguridad y el aislamiento entre los procesos en ejecución.
Cuando se utiliza paginación, la memoria se divide en páginas de tamaño fijo. Cada proceso tiene su propia tabla de páginas, que mapea las páginas lógicas del proceso a las páginas físicas en la memoria principal. El sistema operativo controla y gestiona estas tablas de páginas para asegurarse de que un proceso solo pueda acceder a las páginas asignadas a él.

Si un proceso intenta acceder a una zona de memoria que no está mapeada en su tabla de páginas, se producirá una violación de página. Esto actúa como una protección y evita que el proceso acceda a memoria que no le pertenece.

*2* El sistema operativo puede permitir el acceso a otras zonas de memoria utilizando mecanismos específicos de intercambio de memoria o mediante el establecimiento de permisos de acceso. Algunos sistemas operativos proporcionan llamadas al sistema que permiten a los procesos solicitar acceso a una zona de memoria específica o compartir memoria entre procesos mediante el establecimiento de regiones de memoria compartida.

El sistema operativo puede establecer permisos de acceso en la tabla de páginas para permitir que ciertos procesos accedan a zonas de memoria específicas. Estos permisos pueden configurarse para permitir el acceso de solo lectura, escritura o ejecución, según las necesidades del sistema y los requisitos de seguridad.

*3*La decisión de permitir o no el acceso a otras zonas de memoria depende de los requisitos y políticas del sistema operativo y las aplicaciones que se ejecutan en él.

Debería permitirse el acceso a otras zonas de memoria en situaciones en las que sea necesario compartir datos o código entre procesos. Esto puede ser beneficioso en entornos de programación paralela o distribuida, donde los procesos necesitan cooperar y compartir información. La memoria compartida puede mejorar el rendimiento y la eficiencia del sistema al evitar la necesidad de copiar datos entre procesos.

Sin embargo, permitir el acceso a otras zonas de memoria también puede introducir riesgos de seguridad y conflictos. Si no se implementa adecuadamente, puede dar lugar a errores de acceso a memoria y problemas de integridad de datos. Además, la compartición de memoria entre procesos puede complicar la depuración y el mantenimiento del sistema.

En última instancia, la decisión de permitir o no el acceso a otras zonas de memoria debe basarse en una evaluación cuidadosa de los requisitos del sistema, las consideraciones de seguridad y la complejidad adicional que puede introducir.


# Ejercicio 8) Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.

El mecanismo de paginación y el de segmentación tienen diferentes enfoques en cuanto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.

En la paginación, se utiliza una tabla de páginas para mapear las direcciones virtuales a direcciones físicas. Esta tabla de páginas se almacena en la memoria principal y es mantenida por el sistema operativo. La tabla de páginas contiene una entrada por cada página lógica, y cada entrada indica la dirección física correspondiente. Por lo tanto, la cantidad de memoria requerida para la tabla de páginas depende del tamaño total de la memoria virtual direccionable, que se divide en páginas.

En la segmentación, se utiliza una tabla de segmentos para mapear las direcciones virtuales a direcciones físicas. Esta tabla de segmentos también se almacena en la memoria principal y es mantenida por el sistema operativo. La tabla de segmentos contiene una entrada por cada segmento lógico, y cada entrada indica la dirección base y el tamaño del segmento correspondiente. Por lo tanto, la cantidad de memoria requerida para la tabla de segmentos depende del número de segmentos utilizados por los procesos en ejecución.

En comparación, la cantidad de memoria requerida por las estructuras de producción de direcciones en la paginación tiende a ser mayor que en la segmentación. Esto se debe a que en la paginación se requiere una entrada en la tabla de páginas por cada página lógica, mientras que en la segmentación se requiere una entrada por cada segmento lógico.

Sin embargo, es importante tener en cuenta que la cantidad exacta de memoria requerida por las estructuras de producción de direcciones varía según el tamaño de la memoria virtual direccionable, el tamaño de página o segmento utilizado y la cantidad de procesos en ejecución. En general, la paginación tiende a ser más adecuada para sistemas con una gran cantidad de memoria virtual direccionable y una variación en los tamaños de programas, mientras que la segmentación puede ser más eficiente en entornos donde los programas son más grandes y tienen requisitos de tamaño fijo.

# Ejercicio 9) Considere la siguiente tabla de segmento:¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?1. 0. 430,2. 1. 10,3. 2. 500,4. 3. 400,5. 4. 112

Para determinar las direcciones físicas correspondientes a las direcciones lógicas dadas en la tabla de segmentos, se utiliza la fórmula:

Dirección física = Base + Dirección lógica

A continuación se muestra el cálculo de las direcciones físicas para cada dirección lógica:

Dirección lógica: 0.430

Segmento: 0

Base: 219

Dirección física = 219 + 430 = 649

Dirección lógica: 1.10

Segmento: 1

Base: 2300

Dirección física = 2300 + 10 = 2310

Dirección lógica: 2.500

Segmento: 2

Base: 90

Dirección física = 90 + 500 = 590

Dirección lógica: 3.400

Segmento: 3

Base: 1327

Dirección física = 1327 + 400 = 1727

Dirección lógica: 4.112

Segmento: 4

Base: 1952

Dirección física = 1952 + 112 = 2064

Por lo tanto, las direcciones físicas correspondientes a las direcciones lógicas dadas son:

1) 649
2) 2310
3) 590
4) 1727
5) 2064





