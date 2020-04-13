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
- R y R Studio (bajar los paquetes: Ape, Claddis, Phangorn, Phytools).
- [TNT](http://www.lillo.org.ar/phylogeny/tnt/). GUI solo para Windows. Para análisis de Máxima Parsimonia.
- [jmodelTest](https://github.com/ddarriba/jmodeltest2). Para selección de modelos evolutivos de secuencias de nucleótidos.
- [RAxML-GUI](https://antonellilab.github.io/raxmlGUI/). Para análisis de Máxima Verosimilitud.
- [MrBayes](http://nbisweden.github.io/MrBayes/download.html). Para análisis de Inferencia Bayesiana.
- [ASTRAL](https://github.com/smirarab/ASTRAL/blob/master/README.md). Para inferencia de árboles de especies a partir de árboles de genes.
- [FigTree](https://github.com/rambaut/figtree/releases). Para visualización y edición de árboles filogenéticos.
- [Tracer](https://github.com/beast-dev/tracer/releases/tag/v1.7.1). Para visualizar resultados de MCMC.

**Nota:** Es posible que usemos otros programas, pero les avisaré con tiempo. Todos los programas de inferencia filogenética vienen acompañados con sus respectivos tutoriales. Se sugiere seguirlos en su tiempo libre; no se limiten únicamente a los ejercicios de la clase.  

B. Abrir una cuenta en el portal [CIPRES](http://www.phylo.org/).

C. Disponibilidad técnica (conexión a internet) para las sesiones virtuales. Si tiene problemas para conectarse, ponerse en contacto directamente conmigo con suficiente anticipación (jaaguirresa@unal.edu.co).

### Dinámica de las clases

Para facilitar el trabajo autónomo de los estudiantes desde sus casas y minimizar la presencialidad en las sesiones virtuales, este módulo está principalmente enfocado en talleres y lecturas en casa. Las sesiones virtuales estarán limitadas a clases cortas sobre conceptos fundamentales de los métodos, explicación de las tareas, resolución de dudas y presentación de resultados. Todas las presentaciones con diapositivas, artículos y talleres serán subidos a esta plataforma en su debido momento. Se recomienda enfáticamente replicar los ejercicios practicados en clase con los datos de sus proyecto de semestre.

## Contenido

### Semana 1

**[Clase 1](/clase_1/Taller_matrices.md). Repaso y corto taller de manejo de matrices y datos en R.** se hará un breve repaso de los recursos informáticos para construcción de matrices con editor de texto, el programa Mesquite y R. Descargar la presentación [aquí](/clase_1/Clase_1.pdf). Para esta parte se deben descargar las siguientes matrices para este ejercicio: [ADN.tnt](/clase_1/ADN.tnt), [morfologia.tnt](/clase_1/morfologia.tnt),[morfologia.nex](/clase_1/morfologia.nex), [ADN.nex](/clase_1/ADN.nex), [ADN.phy](/clase_1/ADN.phy). 

**[IR AL TALLER](/clase_1/Taller_matrices.md)**

#

**[Clase 2](/clase_2/Taller_2.md). Métodos de distancia y argumentación Hennigiana.** Esta clase hace una breve mención a los métodos que dieron origen a los métodos modernos de inferencia filogenética. Descargar diapositivas [aquí](/clase_2/Clase_2.pdf). Para la parte práctica hacer el taller de ejercicios manuales con datos morfológicos para inferir árboles filogenéticos usando UPGMA y argumentación Hennigiana. 

**[IR AL TALLER 2](/clase_2/Taller_2.md)**

**_NOTA:_** Para esta y las próximas dos clases se requiere leer los siguientes artículos:

- Métodos de distancia: [Van de Peer 2009](/clase_2/distancia.pdf)

- Argumentación Hennigiana y Máxima Parsimonia: [Wiley & Lieberman 2011 - Capítulo 6](/clase_2/MP_Wiley_Lieberman.pdf)

#

**[Clase 3](/Clase_3/Taller_MP1.md). Criterio de optimalidad y Máxima Parsimonia.** En esta clase se define el concepto de "criterio de optimalidad" para la inferencia filogenética y se presenta el primer método que incorpora este criterio: la Máxima Parsimonia (Descargar diapositivas[aquí](/Clase_3/Clase_3.pdf)). Esta clase se complementa con un taller básico de inferencia manual de hipótesis filogenéticas usando este método. 

**[IR AL TALLER 3](/Clase_3/Taller_MP1.md).**

<img src="https://github.com/Jaaguirresant/ /Clase_3/Strict.png" width="200" height="200" />

**NOTA:** Para la próxima clase leer los siguientes artículos: 

- [Wiens 2011](/Clase_3/Wiens_2011.pdf)

- [González 1999](/Clase_3/Gonzalez_1999_Aristolochia.pdf)
