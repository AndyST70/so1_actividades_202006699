Nombre: Andy Ezequiel Sanic Tiul 
Carnet: 202006699

El Completely Fair Scheduler (CFS) es un componente fundamental del kernel de Linux que gestiona la asignación de recursos de CPU entre los procesos en ejecución. Su diseño se basa en el principio de equidad, priorizando la justicia en la distribución del tiempo de CPU sobre otros factores como la velocidad de ejecución de los procesos.

Una de las características más destacadas del CFS es su capacidad para adaptarse dinámicamente a las condiciones cambiantes del sistema. En lugar de asignar prioridades estáticas, el CFS utiliza un sistema de pesos dinámicos basados en el concepto de "tiempo virtual" (vruntime). Este enfoque garantiza que los procesos con mayor prioridad obtengan una porción justa del tiempo de CPU en relación con su importancia relativa en el sistema.

La implementación del CFS se basa en una estructura de datos eficiente conocida como árbol rojo-negro. Este árbol organiza las tareas en función de su tiempo virtual, lo que permite una búsqueda rápida del próximo proceso a ejecutar. Al seleccionar el proceso con el menor tiempo virtual, el CFS asegura una distribución equitativa del tiempo de CPU entre todos los procesos en ejecución.

Además, el CFS incorpora un mecanismo de "sleeper fairness" para garantizar que los procesos que han estado inactivos reciban una oportunidad justa de ejecución cuando vuelven a estar activos. Esto es crucial para evitar la inanición de procesos y garantizar una respuesta ágil del sistema en entornos de múltiples tareas.

Características:
- Distribución equitativa del tiempo de CPU: El CFS garantiza que todos los procesos en ejecución reciban una cantidad justa de tiempo de CPU, priorizando la equidad sobre la velocidad de ejecución.
- Pesos dinámicos basados en prioridad: En lugar de asignar prioridades estáticas, el CFS asigna pesos dinámicos a cada tarea en función de su prioridad, utilizando el concepto de "tiempo virtual" (vruntime).
- Utilización de árbol rojo-negro: El CFS organiza las tareas en un árbol rojo-negro según su tiempo virtual, lo que permite una búsqueda eficiente del próximo proceso a ejecutar y garantiza una distribución equitativa del tiempo de CPU.
- Mecanismo de "sleeper fairness": El CFS implementa un mecanismo para garantizar que los procesos inactivos reciban una oportunidad justa de ejecución cuando vuelvan a estar activos, evitando así la inanición de procesos y mejorando la respuesta del sistema en entornos multitarea.
- Flexibilidad y adaptabilidad: El diseño del CFS se adapta dinámicamente a las condiciones cambiantes del sistema, garantizando un comportamiento equitativo y predecible incluso en entornos de carga variable.
