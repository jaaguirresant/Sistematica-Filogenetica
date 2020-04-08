# Sistematica-Filogenetica

# MÓDULO INFERENCIA FILOGENÉTICA


## Objetivos

1. Aprender las bases metodológicas de los principales métodos de inferencia filogenética a partir de matrices de caracteres homólogos y evaluar críticamente los supuestos, virtudes y desventajas de estos métodos.

2. Conocer los principios estadísticos para medición de la confianza de las hipótesis filogenéticas.  

3. Adquirir destrezas computacionales para llevar a cabo análisis de inferencia filogenética a partir de matrices de caracteres empíricas.

## Competencias

1. Habilidad de inferir e interpretar críticamente hipótesis de relaciones filogenéticas en cualquier grupo de organismos generadas bajo distintas metodologías a partir de matrices de caracteres.

2. Capacidad para interpretar fundamentos de la biología evolutiva en un árbol filogenético generado a partir de matrices de caracteres empíricas.

3. Entendimiento de la importancia de la inferencia filogenética para abordar problemas biológicos en un contexto evolutivo.

## Estructura general del módulo

### Preparación

Este módulo ha sido diseñado para estudiantes del curso de posgrado "Sistemática Filogenética y Nomenclatura Botánica/Zoológica" del programa de Maestría en Ciencias-Biología de la Universidad Nacional de Colombia. Los estudiantes inscritos en este curso ya debieron haber tomado cinco semanas de temas introductorios sobre evolución y sistemática filogenética para poder seguir con los contenidos de este módulo. Este módulo fue diseñado para ser tomado de manera remota dada la emergencia generada por el virus COVID-19. 

#### Los requerimientos y materiales básicos para llevar a cabo este módulo son los siguientes:

A. Computador o laptop con los siguientes programas instalados: 
- Editor de texto (recomendados notepad++ para Windows y Atom para Mac).
- [Mesquite](https://www.mesquiteproject.org/). Útil para construir y/o visualizar matrices de caracteres.
- R y R Studio (bajar los paquetes: Ape, Phangorn, Phytools).
- [TNT](http://www.lillo.org.ar/phylogeny/tnt/). GUI solo para Windows. Para análisis de Máxima Parsimonia.
- [jmodelTest](https://github.com/ddarriba/jmodeltest2). Para selección de modelos evolutivos de secuencias de nucleótidos.
- [RAxML-GUI](https://antonellilab.github.io/raxmlGUI/). Para análisis de Máxima Verosimilitud.
- [MrBayes](http://nbisweden.github.io/MrBayes/download.html). Para análisis de Inferencia Bayesiana.
- [ASTRAL](https://github.com/smirarab/ASTRAL/blob/master/README.md). Para inferencia de árboles de especies a partir de árboles de genes.
- [FigTree](https://github.com/rambaut/figtree/releases).

**Nota:** Es posible que usemos otros programas, pero les avisaré con tiempo. Todos los programas de inferencia filogenética vienen acompañados con sus respectivos tutoriales. Se sugiere seguirlos en su tiempo libre; no se limiten únicamente a los ejercicios de la clase.  

B. Abrir una cuenta en el portal [CIPRES](http://www.phylo.org/).

C. Disponibilidad técnica (conexión a internet) para las sesiones virtuales. Si tiene problemas para conectarse, ponerse en contacto directamente conmigo con suficiente anticipación (jaaguirresa@unal.edu.co).

### Dinámica de las clases

Para facilitar el trabajo autónomo de los estudiantes desde sus casas y minimizar la presencialidad en las sesiones virtuales, este módulo está principalmente enfocado en talleres y lecturas en casa. Las sesiones virtuales estarán limitadas a clases cortas sobre conceptos fundamentales de los métodos, explicación de las tareas, resolución de dudas y presentación de resultados. Todas las presentaciones con diapositivas, artículos y talleres serán subidos a esta plataforma en su debido momento. Se recomienda enfáticamente replicar los ejercicios practicados en clase con los datos de sus proyecto de semestre.

## Contenido

### Semana 1: 13–16 abril.

1. **Métodos de distancia y argumentación Hennigiana.** Esta clase hace una breve mención a los métodos que dieron origen a los métodos modernos de inferencia filogenética. [Descargar diapositivas aquí](enlace). Para la parte práctica bajar el taller de ejercicios manuales con datos morfológicos para inferir árboles filogenéticos usando UPGMA y argumentación Hennigiana [aquí](enlace). Finalmente, se hará un breve repaso de los recursos informáticos para construcción de matrices con editor de texto y el programa Mesquite. Bajar las siguientes matrices para este ejercicio: [primates.tnt](enlace), [primates.nex](enlace), [primates.phy](enlace).

_ _Bibliografía complementaria:_ _

- Distancias
- Argumentación Hennigiana

2. **Criterio de optimalidad y Máxima Parsimonia.** En estas dos clases se define el concepto de "criterio de optimalidad" para la inferencia filogenética y se presenta el primer método que incorpora este criterio: la Máxima Parsimonia. Se recomienda leer el siguiente artículo antes de comenzar la clase ([Descargar artículos aquí](enlace)). 

- En la primera clase se explican los fundamentos y pasos básicos de este método ([Descargar diapositivas aquí](enlace)). Además, esta clase se complementa con un taller básico de inferencia manual de hipótesis filogenéticas usando este método ([Descargar taller aquí](enlace)). 

- En la segunda clase se explican algunas ramificaciones de la Máxima Parsimonia y los métodos de estimación de confianza ([Descargar diapositivas aquí](enlace)). Esta clase termina con un taller manual de inferencia filogenética y estimación de medidas de confianza ([Descargar taller aquí](enlace)). 

_ _Bibliografía complementaria:_ _

- Tipos de parsimonia
- Indices
- Pesos
- Ventajas y desventajas

### Semana 2: 20–23 abril. 
usando Máxima Parsimonia en el programa TNT y el paquete Phangorn de R. Para este taller se usará la siguiente matriz: [primates.tnt](enlace) para TNT y [primates.nex](enlace) para phangorn. 

Inferencia filogenética usando modelos evolutivos: Máxima Verosimilitud.

### Semana 3: 27–30 abril.

_ _Bibliografía complementaria:_ _

- Tipos de parsimonia
- Indices
- Pesos
- Ventajas y desventajas


### Semana 4: 4–7 mayo.

_ _Bibliografía complementaria:_ _

- Tipos de parsimonia
- Indices
- Pesos
- Ventajas y desventajas
