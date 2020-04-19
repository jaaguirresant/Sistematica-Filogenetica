# PARTE 1. MEDIDAS DE SOPORTE

Con base en la siguiente matriz: 

<p align="center">
  <img src="https://github.com/jaaguirresant/Sistematica-Filogenetica/blob/master/clase_4/BT.jpg" width="500" height="250" />
</p>

Crear una matriz permutada para realizar el test de PTP

Crear una pseudoréplica para un análisis de Bootstrap

Crear una pseudoréplica para un análisis de Jacknife (corte de 50%)

# PARTE 2. PROGRAMAS DE INFERENCIA FILOGENÉTICA USANDO MÁXIMA PARSIMONIA

## TNT (Tree analysis using New Technology)

TNT está especialmente diseñado para correr análisis de Máxima Parsimonia a partir de cualquier conjunto de datos y usa varias estratégias de búsqueda de árboles. El programa funciona con comando de lineas para Windows, IOs y Linux. Existe un GUI para Windows únicamente. El manual y los tutoriales los pueden encontrar en la siguiente página: http://www.lillo.org.ar/phylogeny/tnt/.

Para familiriazrse con el GUI de TNT, el siguiente es un ejercico básico para correr con las matrices que ustedes mismos generaron en el Taller 1. Pueden seguir la sigueinte guía básica o el siguiente tutorial: [bajar tutorial](/clase_4/Quick_Tutorial_TNT.ppt).

1. Subir la matriz en formato tnt 

   - File -> Open input file 

3. Correr análisis exhaustivo y/o heurístico  

   - Analyze -> Traditional Search. 

   - Escoger el tipo de búsqueda (heurística o exacta) y parámetros de búsqueda (# de réplicas, tipo de perturbación del árbol como TRB, SPR o NNI) 

3. Ejecutar 

```
Responder las siguientes preguntas y subir las respuestas al Drive: 

1. ¿Cuántos árboles más parsimonisos resultaron? 

2. ¿Cuál es el número de pasos de los árboles más cortos? 

```
4. Generar árbol de consenso estricto. 

   - Trees -> Consensus 

5. Tomar pantallazos de los resultados y subro al Drive-

## Máxima Parsimonia en R

