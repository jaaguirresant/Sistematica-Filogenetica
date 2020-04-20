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

Realice el siguiente ejercicio en R y responda las preguntas.

1. Para este ejercicio usaremos los paquetes ape, phangorn y seqinr.

```
setwd("working directory") 

library(ape)
library(phangorn)
library(seqinr)

```

2. Cargamos la matriz de ADN en formato Nexus con la función "read.phyDat", ya que phangorn requiere que la matriz sea de clase phyDat.

```
Primates_ADN <- read.phyDat("ADN.nex", format = "nexus")
class(Primates_ADN)

```

3. Antes de hacer los análisis de parsimonia, podemos generar un árbol rápido usando métodos de distancia. Para generar una matriz de distancias corregidas, debemos buscar el módelo evolutivo que mejor se ajuste a nuestra matriz de datos con la función "modelTest".

```
mt <- modelTest(Primates_ADN)
print(mt)
dna_dist <- dist.ml(Primates_ADN, model="F81") # Esta es la matriz de distancias corregidas
```

   - Generamos el fenograma con UPGMA primero

```
Primates_UPGMA <- upgma(dna_dist)
plot(Primates_UPGMA, main="UPGMA")
```

   - y generamos uno con Neighbor-Joining

```
Primates_NJ  <- NJ(dna_dist)
plot(Primates_NJ, main = "Neighbor Joining")
```

4. Usaremos ahora sí las funciones "parsimony", "optim.parsimony" y "pratchet" para inferir el o los árboles más parsimoniosos a partir de la matriz de datos.

4.1. Una opción sería calcular la longitud de los árbolde de UPGMA y NJ para ver cual es más parsimonioso. Para esto usamos la función "parsimony"

```
parsimony(Primates_UPGMA,Primates_ADN)
parsimony(Primates_NJ,Primates_ADN)
```
    - ¿Cuál de los dos árboles es el más parsimonioso?

4.2. Otra opción es inferir los árboles a partir de los datos, usando los métodos tradicionales con la función "optim.parsimony"

```
Primates_optim <- optim.parsimony(Primates_NJ, Primates_ADN)
plot(Primates_optim)
Primates_optim
```

    - ¿Por qué la función requiere un árbol como el de NJ para comenzar el análisis?

    - Explore la función "optim.parsimony" e identifique como se pueden cambiar los parámetros de búsqueda y el número de repeticiones de los análisis. Escriba un breve sumario de este ejercicio

    - ¿Cuántos árboles más parsimoniosos se encontraron?

4.3. Finalmente, para matrices con muchos datos y más de 100 terminales se puede usar la metodología Ratchet. Para esto se usa la función "pratchet"

```
Primates_pratchet <- pratchet(Primates_ADN)
plot(Primates_pratchet)
Primates_pratchet
```

    - ¿Cuántos árboles más parsimoniosos se encontraron?

    - Compare los resultados de los árboles de distancia con los de parsimonia 

    - ¿Que diferencias encuentra?

4.4. Los árboles se pueden guardar en un archivo newick para análisis posteriores

```
write.tree(Primates_pratchet, file="ratchet_Primates.tre")

```

