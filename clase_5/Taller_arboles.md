# Manejo de arboles y datos filogenéticos en R

El objetivo de este corto taller es el de aprender a manipular árboles filogenéticos en R y FigTree para generar visualizaciones informativas de resultados de analisis filogenéticos.

#

# PARTE 1. Visualización y manipulación de árboles con R

_Ejercicio basado en los ejemplos de Liam Revell y Luke Harmon https://lukejharmon.github.io/ilhabela/instruction/2015/07/02/introduction-phylogenies-in-R/_

Para este ejercicio usaremos los paquetes ape y phytools. Este último paquete es excelente para crear visualizaciones y hacer análisis complejos con datos filogenéticos. Para explorar todo el potencial de este paquete, recomiendo visitar el blog de Liam Revel, creador del paquete: http://blog.phytools.org/

```
setwd("working directory") 
library(ape)
library(phangorn)
library(phytools)
```

## 1. Generar un árbol manual.

Primero, crear la base del árbol con dos taxones para poder enraizar los otros taxones.

```
tree<-pbtree(n=2,tip.label=c("Salamandra","humano"))
```

Con la función bind.tip podemos agregar interactivamente nuevas especies a la rama que queramos:

```
tips<-c("Rana","Serpiente","Ave")
for(i in 1:length(tips)) tree<-bind.tip(tree,tips[i],interactive=TRUE)
```

También podemos hacer el árbol manualmente usando el formato Newick (parentético) y la función "read.tree":

```
tt="(((((((vaca, cerdo),ballena),(murciélago,(lemur,humano))),(cardenal,iguana)),coelacanto),bagre),tiburón);"
vert.tree<-read.tree(text=tt)
plot(vert.tree)
```

Finalmente, podemos exportar el árbol con la función "write.tree"

```
write.tree(tree, file = "Árbol_tetrapodos.tre")
```

**Tarea:** Dibujar un árbol filogenético de los animales usando únicamente 8 terminales y exportarlo a un archivo.

## 2. Manipulación de árboles filogenéticos.

La función "plot" y "plot.phylo" de ape permite hacer variaciones visuales al árbol filogenético. Por ejemplo:

```
plot(vert.tree,type="cladogram") # 
plot(unroot(vert.tree),type="unrooted")
plot(vert.tree,type="fan")
roundPhylogram(vert.tree)
```
**Tarea:** Explore que otros argumentos tiene la función "plot" y genere una imagen de un árbol filogenético diferente a los mostrados en el ejemplo.

Para realmente tener control del sinnúmero de ediciones que se pueden hacer con árboles filogenéticos, es muy importante entender que estos árboles son elementos de clase "phylo". Un objeto de clase "phylo" está compuesto de cuatro listas: (1) los nombres de los terminales del árbol "$tip.label"; (2)los nodos a los dos extremos de cada rama "$edge"; (3) el número de nodos internos "$Nnode"; y (4) la longitud de las ramas "$edge.length".

Para ver estos valores en nuestro árbol podemos usar la función "str"

```
vert.tree
str(vert.tree)
```

Para entender mejor un objeto de clase "phylo", generemos el siguiente árbol:

```
tree<-read.tree(text="(((A,B),(C,D)),E);")
plot(tree,type="cladogram",edge.width=2)
tree$edge # ¿Que significa esta matriz?
tree$tip.label
tree$Nnode
```

Conocer los valores de estos elementos nos permiten tener control absoluto de todas las partes del árbol y modificarlo de la manera que queramos. Una forma visual de identificar específicamente cada nodo y su ubicación en el árbol es usar las funciones "nodelables" y "tiplabels":

```
plot(tree,edge.width=2,label.offset=0.1,type="cladogram")
tree$Nnode
nodelabels()
tiplabels()
```

## 3. Exportar árboles filogenéticos en diferentes formatos.

Los dos formatos más populares para almacenar árboles filogenéticos son NEWICK y NEXUS. Para guardar nuestros áboles en estos formatos, usamos las funciones "write.tree" y "writeNexus":

```
write.tree(tree,"example.tre")
cat(readLines("example.tre"))

writeNexus(tree,"example.nex")
cat(readLines("example.nex"),sep="\n")
```
**Tarea:** describa estos dos formatos.

## 4. Simulación, visualización, extracción de clados y eliminación de terminales.

La función "pbtree" permite simular un árbol usando el módelo de nacimiento-muerte. La simulacion de arboles es extremadamente importante en la evaluación de hipótesis evolutivas de diversificación y evolución de carateres. Como ejemplo, simularemos un árbol de 40 terminales con una tasa de especiación de 1 y una tasa de extinción de 0.2:

```
set.seed(1) # Este comando lo pongo solo para poder repetir los análisis con el mismo árbol.
tree<-pbtree(b=1,d=0.2,n=40) # los 40 terminales son todos existentes (p.e. no extintos). Sin embargo, como hay extinción, la función generará terminales extintos.
plotTree(tree)
```

Digamos que solo me interesa investigar el clado cuyo ancestro es el nodo número 62. Para esto, es posible extraer el clado usando la función "extract.clade". Primero debemos visualizar donde se ubica el nodo 62 y despues ejecutar la funcion:

```
nodelabels()
tt62<-extract.clade(tree,62)
plotTree(tt62)
```
También es posible queramos quitar algunos terminales del árbol (p.e. si tenemos varias accesiones por especie). Con la función "drop.tip" vamos a extraer 10 terminales aleatoriamente del árbol simulado:

```
dtips<-sample(tree$tip.label,10)
dt<-drop.tip(tree,dtips)
plotTree(dt)
```
También podemos seleccionar cuales especies eliminar (p.e. las especies extintas):

```
plotTree(et<-drop.tip(tree,getExtinct(tree)),cex=0.7)
```

**Tarea:** Repita el ejercicio del punto 4 simulando un árbol de 50 terminales.

## 5. Árboles binarios y politómicos

Muchas veces los programa de filogenética resultan en árboles de consenso que contienen politomías o a veces en un solo árbol perfectamente bifurcado. El paquete "ape" lee ambos tipos de árboles; sin embargo, para análisis posteriores es importante estar seguro de que el árbol es bifucardo. Para esto, la función "is.binary.tree" es muy útil. Construyamos un árbol politómico y verificamos que nos dice la función "is.binary.tree":

```
t1<-read.tree(text="((A,B,C),D);")
plot(t1,type="cladogram")
is.binary.tree(t1)
```

Si el árbol no es binario, podemos resolver las politomias de forma aleatoria usando la función "multi2di":

```
t2<-multi2di(t1)
plot(t2,type="cladogram")
is.binary.tree(t2)
```

## 6. Otros rearreglos del árbol.

Además de las funciones explicadas arriba, podemos manipular los árboles de otras maneras. Por ejemplo:
 
   - Podemos rotar los nodos con función "rotate" y "rotateNodes":

```
plotTree(tree,node.numbers=T)
rt.50<-rotate(tree,50) ## primero, rotemos el nodo #50
plotTree(rt.50)

## o podemos rotar todos los nodos:

rt.all<-rotateNodes(tree,"all")
plotTree(rt.all)
```

   - Podemos enraizar el árbol con las funciones "root" y "reroot":

```
rr.67<-root(tree,node=67) # Enraizamos en el nodo 67.
plotTree(rr.67)

# Esto crea una trifurcación en la raiz. Para evitar esto, podríamos enraizar a lo largo de una rama usando la función "reroot":

rr.62<-reroot(tree,62,position=0.5*tree$edge.length[which(tree$edge[,2]==62)])
plotTree(rr.62)

# o podemos enraizar escogiendo un grupo externo:

tree_outgroup <-root(tree,outgroup="t33")
plotTree(tree_outgroup)
```

   - Podemos comparar dos árboles filogenéticos:

```

# Vamos a comparar el árbol original con el árbol rotado. Para ello, es necesario asegurarse que los dos árboles son idénticos con la función "all.equal":

all.equal(tree,rt.all)

## Se puede hacer lo mismo comparando el árbol original con rr.62:

all.equal(tree,rr.62) # En este caso, ¿son iguales o no?

## Ahora intentemos lo mismo pero con el árbol rr.62 sin enraizar:

all.equal(unroot(tree),unroot(rr.62)) #¿son iguales?
```

#

# PARTE 2. Visualización y manipulación de árboles con FigTree

[FigTree](https://github.com/rambaut/figtree/releases) es un GUI diseñado para leer árboles filogenéticos en formato Newick y Nexus y editar visualmente todos sus elementos (ramas, nodos y terminales). El GUI es altamente intuitivo y no se requiere mayor destreza para utilizarlo. Para este ejercicio siga los siguientes pasos:

1. Exporte el árbol simulado de 40 terminales del ejercicio anterior en formato Newick o Nexus.

2. Abra el árbol en FigTree

3. Enraice el árbol con cualquier grupo ajeno.

4. Resalte un clado de interés.

5. Genere una figura en formato jpg del árbol y súbalo al Drive.

