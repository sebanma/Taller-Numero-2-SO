---
title: "R Notebook"
output: html_notebook
---

# Sebastián David Mendoza Alvarado

# 2191969

# Investigación

**Pregunta 1**

**Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen.**

El interbloqueo es una condición que se presenta en los sistemas de planificación y control, donde varias tareas o procesos se bloquean entre sí, impidiendo su progreso y causando un estancamiento en el sistema. Para demostrar que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen, se deben verificar los siguientes aspectos:

*Exclusión mutua:* Esta condición se cumple cuando los recursos compartidos no pueden ser utilizados simultáneamente por múltiples tareas. Para demostrarlo, se debe identificar al menos un recurso crítico que no pueda ser compartido simultáneamente. Por ejemplo, si dos tareas necesitan acceder a una impresora y solo una puede usarla a la vez, se cumple la exclusión mutua.

*Posesión y espera:* Esta condición se cumple cuando una tarea mantiene al menos un recurso mientras espera por otros recursos adicionales. Para demostrarla, se debe identificar al menos una tarea que haya adquirido un recurso y esté esperando por otro recurso manteniendo el primero. Por ejemplo, si una tarea ha adquirido un recurso A y está esperando por el recurso B sin liberar A, se cumple la posesión y espera.

*No prelación:* Esta condición se cumple cuando una tarea que ha adquirido recursos no puede ser forzada a liberarlos antes de completar su ejecución. Para demostrarla, se debe identificar al menos una tarea que haya adquirido recursos y no pueda ser interrumpida o desalojada para liberarlos prematuramente. Por ejemplo, si una tarea ha adquirido los recursos A y B y no puede ser interrumpida hasta que complete su ejecución, se cumple la no prelación.

*Espera circular:* Esta condición se cumple cuando un conjunto de tareas está esperando recursos que solo pueden ser liberados por otra tarea del mismo conjunto. Para demostrarla, se debe identificar un ciclo de dependencia entre las tareas en espera de recursos. Por ejemplo, si la tarea 1 está esperando por el recurso que posee la tarea 2, la tarea 2 está esperando por el recurso que posee la tarea 3, y la tarea 3 está esperando por el recurso que posee la tarea 1, se cumple la espera circular.

Si se puede demostrar que todas estas condiciones se cumplen en un sistema, entonces se puede concluir que existe un interbloqueo potencial. Es importante destacar que estas condiciones deben cumplirse simultáneamente para que se presente un interbloqueo, por lo que si alguna de ellas no se cumple, no habrá interbloqueo en el sistema.


**Pregunta 2**

**Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema.**

Una regla simple para evitar los interbloqueos en un sistema es la siguiente: "Siempre solicita recursos en el mismo orden y no retengas un recurso mientras esperas por otro".

Esta regla se basa en el algoritmo del banquero, utilizado en la teoría de la concurrencia y planificación de recursos. Su objetivo es prevenir los interbloqueos al asignar y liberar recursos de manera adecuada. Al seguir esta regla, se asegura que no se creen situaciones en las que varios procesos estén esperando indefinidamente por recursos que no pueden liberarse debido a que otro proceso los retiene.

**Pregunta 3**

**Explique como se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos.**

El problema de la cena de los filósofos es un clásico problema de concurrencia que involucra a cinco filósofos sentados alrededor de una mesa, con un plato de espaguetis delante de cada uno de ellos. Entre cada filósofo hay un tenedor. Los filósofos alteran entre dos actividades: comer y pensar. Sin embargo, solo pueden comer si tienen dos tenedores, uno a cada lado. El objetivo es evitar el bloqueo mutuo (deadlock), donde todos los filósofos están esperando por un tenedor y ninguno puede comer.

Para cumplir con las condiciones básicas de interbloqueo, se deben satisfacer tres requisitos:

*Adquisición simultánea:* los filósofos deben adquirir los tenedores simultáneamente para evitar la competencia y el bloqueo. Esto significa que un filósofo solo puede intentar adquirir un tenedor si ambos tenedores adyacentes están disponibles. Si alguno de los tenedores no está disponible, el filósofo debe esperar.

*Liberación simultánea:* cuando un filósofo ha terminado de comer, debe liberar los tenedores simultáneamente para permitir que otros filósofos los adquieran. Esto evita que un filósofo mantenga un tenedor mientras espera por el otro, bloqueando a los demás.

*Orden de adquisición:* para evitar el interbloqueo, los filósofos deben adquirir los tenedores en el mismo orden. Esto evita situaciones en las que, por ejemplo, todos los filósofos intenten adquirir el tenedor izquierdo al mismo tiempo y luego esperen indefinidamente por el tenedor derecho, causando un bloqueo.

Para implementar un sistema que cumpla con estas condiciones básicas de interbloqueo, se pueden utilizar diferentes estrategias, como el uso de monitores, semáforos o algoritmos de exclusión mutua como el algoritmo de Peterson. Estas técnicas permiten coordinar las acciones de los filósofos y garantizar que se cumplan las condiciones requeridas.

Por ejemplo, se podría implementar un sistema donde los filósofos sigan un protocolo específico para adquirir y liberar los tenedores, como siempre tomar primero el tenedor izquierdo y luego el derecho. Si algún tenedor no está disponible, el filósofo debe esperar hasta que ambos estén disponibles.

En resumen, cumplir con las condiciones básicas de interbloqueo en el problema de la cena de los filósofos implica establecer un protocolo de adquisición y liberación de los tenedores que garantice la adquisición simultánea, la liberación simultánea y el orden de adquisición correcto. Esto ayuda a evitar situaciones de interbloqueo en las que los filósofos no pueden avanzar en sus actividades debido a la falta de tenedores disponibles.

**Pregunta 4**

**Explique como podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos.**

El problema de la cena de los filósofos es un clásico problema de concurrencia que involucra a cinco filósofos sentados alrededor de una mesa, donde cada filósofo tiene un plato de comida y un tenedor a su izquierda y derecha. Entre cada par de filósofos hay un tenedor compartido. El problema consiste en encontrar una solución para que los filósofos puedan alternar entre pensar y comer sin provocar un interbloqueo.

Una forma de evitar el interbloqueo en el problema de la cena de los filósofos es mediante el uso de un enfoque asimétrico. Aquí hay una solución posible:

1)Asignar un número único a cada filósofo, del 1 al 5.

2)Cambiar la forma en que los filósofos recogen los tenedores. En lugar de tomar ambos tenedores simultáneamente, el filósofo con el número más bajo tomará primero el tenedor a su izquierda, mientras que el filósofo con el número más alto tomará primero el tenedor a su derecha.

3)Implementar un mecanismo para que un filósofo espere si no puede adquirir ambos tenedores. Esto se puede lograr utilizando una variable o semáforo para cada tenedor, que indica si está disponible o no.
El algoritmo para cada filósofo se puede describir de la siguiente manera:

4)El filósofo intenta tomar el tenedor de su izquierda. Si el tenedor de la izquierda no está disponible, el filósofo se bloquea y espera hasta que esté disponible.Una vez que el filósofo tiene el tenedor de la izquierda, intenta tomar el tenedor de la derecha.

Si el tenedor de la derecha no está disponible, el filósofo suelta el tenedor de la izquierda y espera hasta que ambos tenedores estén disponibles.

Una vez que el filósofo tiene ambos tenedores, puede comer durante un tiempo determinado.

Luego, el filósofo suelta ambos tenedores, lo que los vuelve a poner disponibles para otros filósofos.

Después de comer, el filósofo alterna a un estado de pensamiento.

Esta solución asimétrica evita el interbloqueo al prevenir la situación en la que todos los filósofos intentan tomar los tenedores simultáneamente, lo que resultaría en un interbloqueo circular. Al permitir que solo los filósofos con números bajos tomen el tenedor izquierdo primero y los filósofos con números altos tomen el tenedor derecho primero, se evita el interbloqueo y se garantiza que siempre habrá al menos un filósofo que puede tomar ambos tenedores.

Es importante tener en cuenta que existen otras soluciones posibles al problema de la cena de los filósofos, como el uso de un conserje o un coordinador central para asignar los tenedores a los filósofos. Cada solución tiene sus ventajas y desventajas, y la elección depende del contexto y los requisitos específicos del sistema en el que se implementa.

**Pregunta 5**

**Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueo en lo que respecta a tiempo de ejecución adicional necesario.**

El esquema de espera circular es una estrategia de evasión de interbloqueos que implica que cada proceso o hilo espere en orden a que los recursos que necesita estén disponibles. Cada proceso mantiene un registro de los recursos que ha adquirido y los que aún necesita, y si encuentra que no puede obtener los recursos necesarios, espera en una cola hasta que los recursos estén disponibles.

Comparado con otros esquemas de evasión de interbloqueos, el esquema de espera circular tiene la ventaja de ser fácil de implementar y entender. Sin embargo, presenta una desventaja importante en términos de tiempo de ejecución adicional necesario.

En el esquema de espera circular, los procesos o hilos esperan en una cola en un orden predefinido. Esto puede resultar en un retraso significativo si un proceso necesita esperar a que se liberen varios recursos antes de que los recursos que necesita estén disponibles. En situaciones donde los recursos son escasos y la competencia por ellos es alta, este esquema puede generar un tiempo de ejecución adicional considerable debido a la espera.

Por otro lado, existen otros esquemas de evasión de interbloqueos que pueden minimizar el tiempo de ejecución adicional necesario en comparación con el esquema de espera circular. Algunos ejemplos de estos esquemas son:

*Detección y recuperación de interbloqueos:* Este enfoque implica la detección periódica de interbloqueos y la adopción de medidas para recuperarse de ellos. Puede utilizar algoritmos como el algoritmo del banquero o el algoritmo del gráfico de asignación de recursos para determinar si se ha producido un interbloqueo y tomar medidas para resolverlo. Aunque puede haber un tiempo de detección y recuperación asociado, este enfoque puede minimizar el tiempo de ejecución adicional necesario en comparación con el esquema de espera circular.

*Asignación ordenada de recursos:* En este enfoque, se establece un orden de asignación de recursos y se requiere que los procesos adquieran los recursos en ese orden. Esto ayuda a evitar situaciones donde los procesos están esperando indefinidamente por un recurso que está siendo retenido por otro proceso. Si bien puede haber casos donde un proceso deba esperar por un recurso que está siendo utilizado por otro proceso, en general, este enfoque tiende a minimizar el tiempo de ejecución adicional en comparación con el esquema de espera circular.

En resumen, el esquema de espera circular es relativamente simple pero puede resultar en un mayor tiempo de ejecución adicional debido a las esperas en cola. Otros esquemas de evasión de interbloqueos, como la detección y recuperación de interbloqueos o la asignación ordenada de recursos, pueden minimizar el tiempo de ejecución adicional necesario al abordar de manera más efectiva los interbloqueos. La elección del esquema depende del contexto y los requisitos específicos del sistema.


**Pregunta 6**

**Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema.**

El esquema de espera circular y los esquemas de evasión de interbloqueos son estrategias utilizadas para gestionar situaciones de interbloqueo en sistemas informáticos o de procesamiento.

El esquema de espera circular, también conocido como "algoritmo del banquero", se basa en la asignación segura de recursos a los procesos. Cada proceso debe declarar de antemano la cantidad máxima de cada recurso que va a requerir durante su ejecución. El sistema utiliza esta información para determinar si es posible asignar los recursos solicitados por un proceso sin incurrir en un interbloqueo. En caso contrario, el proceso se coloca en una lista de espera circular hasta que los recursos estén disponibles. Este esquema tiene como objetivo evitar el interbloqueo, pero puede provocar un retraso significativo en la ejecución de los procesos, ya que algunos pueden tener que esperar a que se liberen los recursos que necesitan.

Por otro lado, los esquemas de evasión de interbloqueos están diseñados para detectar y resolver situaciones de interbloqueo de manera más dinámica y eficiente. Estos esquemas utilizan algoritmos y técnicas para identificar y romper el interbloqueo en tiempo real, sin tener que esperar a que los recursos estén disponibles. Algunos de los esquemas de evasión de interbloqueos más comunes son:

*Detección y recuperación de interbloqueos:* En este esquema, se utiliza un algoritmo de detección de interbloqueos para identificar la existencia de un interbloqueo en el sistema. Una vez detectado, se lleva a cabo una recuperación que puede implicar la terminación de uno o más procesos involucrados en el interbloqueo.

*Prevención de interbloqueos:* Este esquema se basa en la adopción de políticas y algoritmos de planificación que evitan la ocurrencia de situaciones de interbloqueo. Por ejemplo, se pueden utilizar algoritmos de asignación de recursos que garantizan que nunca se llegue a un estado de interbloqueo.

*Detección de interbloqueos por activación:* En este esquema, los procesos pueden solicitar recursos adicionales mientras están en ejecución. Si el sistema detecta que esta solicitud puede provocar un interbloqueo, toma medidas para evitarlo, como la liberación de recursos o la reasignación de recursos a otros procesos.

En términos de tasa de procesamiento del sistema, los esquemas de evasión de interbloqueos suelen ser más eficientes que el esquema de espera circular. Esto se debe a que los esquemas de evasión de interbloqueos permiten una detección y resolución más rápida de los interbloqueos, lo que permite que los procesos continúen su ejecución sin esperas prolongadas. Por otro lado, el esquema de espera circular puede generar un retraso significativo, ya que los procesos deben esperar a que los recursos necesarios estén disponibles.

En resumen, aunque el esquema de espera circular puede evitar el interbloqueo, su tasa de procesamiento es más baja en comparación con los esquemas de evasión de interbloqueos, que son más dinámicos y eficientes en la detección y resolución de situaciones de interbloqueo.

**Pregunta 7**

**Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos;cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos.**

Para demostrar que el sistema está libre de interbloqueos, podemos utilizar el algoritmo del banquero. El algoritmo del banquero se utiliza para evitar situaciones de interbloqueo en sistemas que comparten recursos. A continuación, explicaré cómo aplicar el algoritmo del banquero al sistema dado.

En este caso, tenemos tres procesos (P1, P2, P3) y cuatro recursos (R1, R2, R3, R4). Cada proceso necesita como máximo dos recursos. Supongamos que en un momento dado, los recursos están asignados de la siguiente manera:

P1: 1 recurso asignado
P2: 2 recursos asignados
P3: 1 recurso asignado

Además, supongamos que hay recursos disponibles de la siguiente manera:

R1: 1 recurso disponible
R2: 2 recursos disponibles
R3: 2 recursos disponibles
R4: 1 recurso disponible

Para aplicar el algoritmo del banquero, realizamos una simulación para ver si todos los procesos pueden completar su ejecución. Asumimos que los procesos se ejecutan en orden: P1, P2, P3.

Consideramos el proceso P1. P1 necesita un recurso más para completarse. Verificamos si hay suficientes recursos disponibles para satisfacer su necesidad. En este caso, hay un recurso disponible (R1). Por lo tanto, asignamos el recurso a P1 y marcamos P1 como completado.

Consideramos el proceso P2. P2 necesita dos recursos más para completarse. Verificamos si hay suficientes recursos disponibles para satisfacer su necesidad. En este caso, hay dos recursos disponibles (R2 y R3). Asignamos los recursos a P2 y marcamos P2 como completado.

Consideramos el proceso P3. P3 necesita un recurso más para completarse. Verificamos si hay suficientes recursos disponibles para satisfacer su necesidad. En este caso, hay un recurso disponible (R4). Por lo tanto, asignamos el recurso a P3 y marcamos P3 como completado.

Después de completar todos los procesos, verificamos si todos los procesos se han ejecutado correctamente. En este caso, todos los procesos (P1, P2, P3) se han completado correctamente y no ha habido interbloqueo.

El algoritmo del banquero garantiza que los recursos se asignen de manera segura para evitar situaciones de interbloqueo. Si en algún punto no hay suficientes recursos disponibles para satisfacer las necesidades de un proceso, el algoritmo no asignará los recursos y esperará hasta que haya suficientes recursos disponibles para garantizar una asignación segura. Esto evita cualquier situación de interbloqueo y garantiza que los procesos puedan completarse correctamente.

En resumen, al aplicar el algoritmo del banquero al sistema dado, hemos demostrado que está libre de interbloqueos.

**Pregunta 8**

**Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una.Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos.**

Para determinar si una solicitud de palillos puede ser satisfecha sin dar lugar a interbloqueos en el problema de los filósofos, se puede utilizar la regla conocida como "la regla del comensal envidioso" o "regla del comensal desconfiado". Esta regla establece que un filósofo solo debe tomar los palillos si ambos están disponibles, de lo contrario, debe esperar.

A continuación, describiré cómo aplicar esta regla en el contexto del problema de los filósofos:

Cada filósofo solo puede tener uno de los siguientes estados: "pensando", "hambriento" o "comiendo".

Cuando un filósofo desea comer y se encuentra en estado "hambriento", debe seguir la regla del comensal envidioso antes de tomar los palillos:

a. El filósofo verifica si ambos palillos adyacentes están disponibles.

b. Si ambos palillos están disponibles, el filósofo los toma y cambia su estado a "comiendo".

c. Si al menos uno de los palillos no está disponible, el filósofo debe esperar y volver a intentarlo más tarde.

Esta regla garantiza que los filósofos solo tomen los palillos si pueden tener acceso a ambos. Evita situaciones de interbloqueo donde varios filósofos toman un palillo y no pueden avanzar porque no pueden obtener el segundo palillo requerido.

Es importante destacar que esta regla no garantiza la exclusión mutua absoluta entre los filósofos. Puede haber casos en los que todos los filósofos tomen un palillo y ninguno pueda avanzar debido a la falta de disponibilidad del segundo palillo. Sin embargo, esto no se considera un interbloqueo, ya que cualquier filósofo puede liberar su palillo y permitir que otro filósofo avance.

En resumen, la regla del comensal envidioso establece que un filósofo solo debe tomar los palillos si ambos están disponibles. Esto evita situaciones de interbloqueo en el problema de los filósofos y permite un progreso continuo en la ejecución de los filósofos.

**Pregunta 9**

**Cual es la suposición optimista realizada en el algoritmo de detección de interbloqueos y como podría violarse esta suposición?**

El algoritmo de detección de interbloqueos se basa en una suposición optimista conocida como "asignación de recursos en orden". Esta suposición establece que cuando un proceso solicita recursos adicionales, se le otorgarán solo si los recursos solicitados no causan un interbloqueo. En otras palabras, se asume que los procesos solo solicitarán los recursos que necesitan y no crearán situaciones de interbloqueo.

Sin embargo, esta suposición optimista puede ser violada en ciertos casos, lo que podría llevar a un interbloqueo. Algunas formas en las que esta suposición podría violarse son:

Solicitud de recursos en cantidad excesiva: Un proceso podría solicitar más recursos de los que realmente necesita. Si varios procesos hacen esto simultáneamente, podría agotarse la disponibilidad de recursos, creando una situación de interbloqueo.

Retención de recursos durante un tiempo prolongado: Un proceso podría solicitar y mantener recursos por un tiempo prolongado sin necesitarlos realmente. Esto puede impedir que otros procesos obtengan los recursos que necesitan y, en última instancia, puede conducir a un interbloqueo.

Espera circular: Si los procesos solicitan y mantienen recursos en un orden cíclico, es posible que se produzca un interbloqueo. Por ejemplo, el proceso A solicita el recurso X, luego el proceso B solicita el recurso Y, pero a su vez el proceso A solicita el recurso Y, creando un ciclo de espera que resulta en un interbloqueo.

En resumen, la suposición optimista de asignación de recursos en orden puede ser violada si los procesos solicitan recursos excesivos, retienen recursos innecesariamente o generan esperas circulares. Estas violaciones pueden conducir a situaciones de interbloqueo en un sistema.
