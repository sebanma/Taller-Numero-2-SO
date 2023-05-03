---
title: "Sistemas Operacionales-2191969"
output: html_document
date: "2023-05-03"
---

# Sebastián David Mendoza Alvarado

# 2191969

# Investigación 04

**Pregunta 1**

**1.Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.**

Aunque los mecanismos multihilo pueden mejorar significativamente el rendimiento de muchas aplicaciones, hay algunos casos en los que pueden no proporcionar una mejora significativa o incluso empeorar el rendimiento. **Aquí hay dos ejemplos**:

**Operaciones de E/S intensivas:** Cuando una aplicación realiza muchas operaciones de entrada/salida (E/S), como leer y escribir archivos, puede haber un cuello de botella en el rendimiento debido a que el sistema operativo y el disco duro tienen una velocidad limitada. En estos casos, agregar hilos adicionales para realizar más operaciones de E/S no siempre mejora el rendimiento, ya que los hilos adicionales pueden bloquearse mientras esperan que se completen las operaciones de E/S. En cambio, es posible que una sola tarea de E/S pueda completarse más rápidamente si se le da acceso exclusivo al recurso de E/S.

**Cálculos secuenciales:** En algunos casos, una aplicación puede estar realizando cálculos secuenciales que no se pueden dividir en subprocesos independientes. En tales casos, agregar hilos adicionales no mejorará el rendimiento, ya que cada hilo tendrá que esperar a que el hilo anterior complete su cálculo antes de continuar. En algunos casos, incluso puede haber un costo adicional de cambio de contexto y sincronización entre los hilos que empeora el rendimiento en comparación con una ejecución secuencial simple.

**Pregunta 2**

**2.Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.**

Una biblioteca de hilos (también conocida como "user-level threads library") es una biblioteca que proporciona un modelo de programación de hilos a nivel de usuario. Es decir, los hilos son creados y gestionados por la biblioteca en lugar del sistema operativo. Cuando se utiliza una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario, **se realizan las siguientes acciones:**

**Cambio de contexto:** La biblioteca de hilos cambia el contexto de ejecución del hilo actual al hilo siguiente. Esto implica guardar el estado del hilo actual, incluyendo los valores de los registros, la pila y cualquier otra información necesaria para retomar la ejecución más tarde. Luego se carga el estado del siguiente hilo.

**Planificación:** La biblioteca de hilos utiliza un algoritmo de planificación para determinar qué hilo debe ejecutarse a continuación. La planificación puede ser preemptiva, lo que significa que el hilo actual se interrumpe y se cambia al siguiente hilo según un planificador de prioridad, o puede ser cooperativa, lo que significa que el hilo actual debe ceder el control de la CPU explícitamente antes de que se cambie al siguiente hilo.

**Sincronización:** Si los hilos comparten datos, se deben tomar medidas para garantizar la sincronización adecuada. La biblioteca de hilos debe proporcionar mecanismos de sincronización, como mutexes o semáforos, para evitar problemas de condiciones de carrera.

**Cambio de contexto inverso:** Cuando el hilo siguiente ha terminado de ejecutarse o se produce un cambio de contexto por cualquier otra razón, la biblioteca de hilos debe guardar el estado del hilo actual y cargar el estado del siguiente hilo según el planificador. Luego se retoma la ejecución del siguiente hilo.

En resumen, la biblioteca de hilos cambia el contexto de ejecución, planifica la siguiente tarea a ejecutar, garantiza la sincronización adecuada y retoma la ejecución del siguiente hilo. Todo esto se hace en modo usuario, sin la intervención del sistema operativo.

**Pregunta 3**

**3.Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?**

Los valores de los registros son componentes del estado de un programa y se utilizan para almacenar datos temporales y para realizar operaciones aritméticas y lógicas. En un proceso multihilo, cada hilo tiene su propio conjunto de registros, que se utilizan para almacenar el estado del hilo mientras se está ejecutando. Los valores de los registros no se comparten directamente entre los hilos de un proceso multihilo.

Cuando se produce un cambio de contexto entre dos hilos, la biblioteca de hilos cambia el contexto de ejecución del hilo actual al siguiente hilo. Esto implica guardar el estado del hilo actual, incluyendo los valores de los registros, en una estructura de datos que pertenece al hilo. Luego se carga el estado del siguiente hilo, incluyendo los valores de sus registros, en los registros de la CPU.

En otras palabras, cuando un hilo se está ejecutando, tiene acceso exclusivo a su conjunto de registros. Los otros hilos no tienen acceso directo a estos registros y no pueden leer ni escribir en ellos. Cada hilo tiene su propio conjunto de registros, que se utilizan para almacenar el estado del hilo mientras se está ejecutando.

Es importante tener en cuenta que, aunque los valores de los registros no se comparten directamente entre los hilos, los hilos pueden compartir datos a través de la memoria compartida. Si varios hilos acceden a los mismos datos en la memoria compartida, es importante utilizar mecanismos de sincronización adecuados, como mutexes o semáforos, para evitar problemas de condiciones de carrera.

**Pregunta 4**

**4.Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Si, no y porqué?**

En un proceso multihilo, los cúmulos de memoria (también conocidos como heap) se comparten entre los hilos. Esto significa que todos los hilos del proceso tienen acceso al mismo espacio de memoria compartido, que se utiliza para almacenar objetos y datos dinámicos.

A diferencia de los registros de la CPU, que son exclusivos de cada hilo, los cúmulos de memoria son compartidos entre todos los hilos. Cuando un hilo crea un objeto o asigna memoria dinámica en el cúmulo de memoria, ese objeto o esa memoria están disponibles para todos los hilos del proceso.

Es importante tener en cuenta que el acceso concurrente a los datos compartidos en el cúmulo de memoria puede provocar problemas de concurrencia, como condiciones de carrera, y es necesario utilizar mecanismos de sincronización adecuados, como mutexes o semáforos, para evitar estos problemas.

En resumen, los cúmulos de memoria son compartidos entre los hilos de un proceso multihilo, lo que permite a los hilos acceder a los mismos datos y objetos dinámicos. Sin embargo, es importante tener en cuenta los problemas de concurrencia que pueden surgir y utilizar mecanismos de sincronización adecuados para garantizar un acceso seguro y correcto a los datos compartidos.

**Pregunta 5**

**5.Las variables globales se comparten entre los hilos de un proceso multihilo? Si, no y porqué?.**

Las variables globales son compartidas entre los hilos de un proceso multihilo. Esto significa que cualquier hilo puede acceder y modificar el valor de una variable global.

Cuando se utiliza una variable global en un programa multihilo, es importante tener en cuenta los problemas de concurrencia que pueden surgir. Si varios hilos intentan acceder y modificar la misma variable global al mismo tiempo, pueden producirse condiciones de carrera y resultados impredecibles.

Para evitar estos problemas, se deben utilizar mecanismos de sincronización adecuados, como mutexes o semáforos, para garantizar que sólo un hilo a la vez pueda acceder y modificar la variable global. También se pueden utilizar técnicas de exclusión mutua para evitar problemas de concurrencia en la ejecución de secciones críticas del código que involucren a la variable global.

En resumen, las variables globales son compartidas entre los hilos de un proceso multihilo. Por lo tanto, es importante utilizar técnicas adecuadas de sincronización para evitar problemas de concurrencia y garantizar un acceso seguro y correcto a las variables compartidas.

**Pregunta 6**

**6.La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?**

No, la memoria de pila no se comparte entre los hilos de un proceso multihilo. Cada hilo tiene su propia pila, que se utiliza para almacenar las variables locales y los registros de activación durante la ejecución del hilo.

Cada hilo tiene su propio espacio de pila reservado en la memoria, que es independiente del espacio de pila utilizado por otros hilos en el mismo proceso. Cuando un hilo cambia de contexto y otro hilo comienza a ejecutarse, se cambia la pila del proceso para que apunte a la pila del hilo que comienza a ejecutarse.

El hecho de que cada hilo tenga su propia pila es importante para garantizar la correcta ejecución del código multihilo, ya que las variables locales y los registros de activación de un hilo no deben ser accesibles por otros hilos del proceso. Además, cada hilo necesita un espacio de pila reservado para su propia ejecución, ya que las variables locales y los registros de activación se utilizan para almacenar el estado del hilo durante su ejecución.

En resumen, la memoria de pila no se comparte entre los hilos de un proceso multihilo. Cada hilo tiene su propia pila reservada en la memoria, que es independiente de la pila utilizada por otros hilos en el mismo proceso.

**Pregunta 7**

**7.En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador**

Una solución multihilo que utiliza múltiples hilos del kernel puede proporcionar un mejor rendimiento que un solo hilo sobre un sistema monoprocesador en varias ocasiones, entre ellas:

**Cuando la tarea es altamente paralelizable:** Si una tarea se puede dividir en múltiples sub-tareas independientes, cada una de ellas puede ejecutarse en paralelo en diferentes núcleos de la CPU. Por ejemplo, procesar grandes conjuntos de datos en paralelo es una tarea altamente paralelizable que puede beneficiarse de una solución multihilo que utiliza múltiples hilos del kernel.

**Cuando se utiliza un proceso bloqueante:** Cuando un proceso necesita realizar operaciones bloqueantes, como entrada/salida (I/O) o esperar a que se complete una tarea, puede bloquear el hilo que lo ejecuta. En un sistema monoprocesador, esto significa que todo el proceso se bloquea, lo que puede ralentizar la ejecución de otras tareas en el sistema. En cambio, en un sistema multihilo, los otros hilos del proceso pueden continuar ejecutándose mientras el hilo bloqueado espera a que se complete la operación bloqueante.

**Cuando se utilizan múltiples núcleos de CPU:** Un sistema monoprocesador sólo tiene un núcleo de CPU disponible para ejecutar tareas, mientras que un sistema multiprocesador puede tener varios núcleos disponibles para ejecutar tareas en paralelo. Una solución multihilo que utiliza múltiples hilos del kernel puede aprovechar estos núcleos adicionales para ejecutar tareas en paralelo, lo que puede mejorar significativamente el rendimiento.

En resumen, una solución multihilo que utiliza múltiples hilos del kernel puede proporcionar un mejor rendimiento que un solo hilo sobre un sistema monoprocesador en tareas altamente paralelizables, cuando se utilizan procesos bloqueantes, o cuando se utilizan múltiples núcleos de CPU en un sistema multiprocesador.

**Pregunta 8**

**8.Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?**

Sí, una solución multihilo que utiliza múltiples hilos de usuario puede conseguir un mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador. Esto se debe a que un sistema multiprocesador tiene varios núcleos de procesador disponibles para ejecutar tareas en paralelo, lo que puede aprovechar una solución multihilo que utiliza múltiples hilos de usuario.

En un sistema multiprocesador, cada núcleo de procesador puede ejecutar su propio hilo de usuario en paralelo con otros hilos de usuario que se ejecutan en otros núcleos. Esto puede resultar en un mejor rendimiento que en un sistema de un solo procesador, donde sólo hay un núcleo de procesador disponible para ejecutar todos los hilos de usuario.

Además, en un sistema multiprocesador, la carga de trabajo puede ser distribuida entre los diferentes núcleos de procesador, lo que puede mejorar aún más el rendimiento. Por ejemplo, si una solución multihilo que utiliza múltiples hilos de usuario necesita realizar múltiples tareas que son independientes entre sí, cada una de estas tareas puede asignarse a un núcleo de procesador diferente, lo que puede reducir el tiempo total de ejecución.

En resumen, una solución multihilo que utiliza múltiples hilos de usuario puede conseguir un mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador, debido a la capacidad de ejecutar múltiples hilos de usuario en paralelo en diferentes núcleos de procesador y a la capacidad de distribuir la carga de trabajo entre ellos.

**Pregunta 9**

**9.Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores.**

Cuando el número de hilos de usuario es mayor que el número de procesadores del sistema, puede haber una sobrecarga en el procesamiento y el rendimiento del programa puede verse afectado. En esta situación, el sistema operativo debe programar los hilos de usuario para que se ejecuten en los procesadores disponibles, y esto puede resultar en una competencia por los recursos de procesamiento.

Si el número de hilos del kernel asignados al programa es menor que el número de procesadores, esto significa que no todos los procesadores del sistema están siendo utilizados en su capacidad máxima. Como resultado, algunos de los procesadores pueden estar inactivos mientras los hilos de usuario compiten por los recursos disponibles.

El impacto sobre el rendimiento dependerá de la naturaleza del programa y la carga de trabajo. Si el programa utiliza principalmente tareas que no son intensivas en CPU, como operaciones de entrada y salida, el impacto en el rendimiento puede ser menor. Sin embargo, si el programa realiza principalmente operaciones que son intensivas en CPU, como cálculos complejos, el impacto en el rendimiento puede ser significativo.

En general, la mejor práctica es asignar un número adecuado de hilos del kernel al programa para que se correspondan con el número de procesadores disponibles en el sistema. De esta manera, se puede aprovechar al máximo el procesamiento paralelo y evitar la competencia por los recursos de procesamiento.
