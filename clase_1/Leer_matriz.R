setwd("working directory") 
# En mi computador sería: 
#setwd("~/Google Drive/UNAL/Clases/Sistemática y Nomenclatura/2020-1/Clase 1")

install.packages("ape")
install.packages("phangorn")
library(ape)
library(phangorn)

# 1. Crear una matriz manualmente y exportarla

# Primero creamos nuestra matriz de 5 taxones y 5 caracteres con la función "matrix". 
# Nombrar las especies con el argumento "dimnames" usando guión al piso en vez de espacios.
# Seguido a esto, hacer la lista de los caracteres.
Matriz_manual <- matrix(
c(0, 0, 0, 1, 0,  #Taxon_1
  1, 1, 1, 0, 0,  #Taxon_2
  1, 1, 0, 0, 1,  #Taxon_3
  1, 0, 0, 1, 1,  #Taxon_4
  1, 1, 0, 1, 1), #Taxon_5
nrow = 5, ncol = 5, byrow = TRUE, dimnames = list(c('Taxon_1', 'Taxon_2','Taxon_3','Taxon_4','Taxon_5'),
c('Caracter_1', 'Caracter_2', 'Caracter_3','Caracter_4', 'Caracter_5')))

#Visualizar la matriz:
Matriz_manual
class(Matriz_manual)

# Para que la matriz se pueda guardar en formato nexus, se debe convertir a un objeto de clase "phyDat":
# Al asignar type=USER, se le puede indicar a la función que nuestros datos son binarios (0 y 1).
mi_matriz <- as.phyDat(Matriz_manual, type="USER", levels = c(0,1))
class(mi_matriz)

# Guardar el archivo en formato Nexus con la función "read.nexus.data
write.nexus.data(mi_matriz, "mi_matriz_en_R.nex", format= "standard", datablock=FALSE)

# 2. Leer un archivo que contiene una matriz en formato Nexus
# Las matrices de ADN se leen fácilemente con las funciones "read.DNA (para archivos fasta) y "read.nexus.data" para archivos nexus) 
matriz_ADN <- read.nexus.data("ADN.nex")
matriz_ADN
class(matriz_ADN)
ls(matriz_ADN)

# Las matrices morfológicas son más complicadas de leer, pero el paquete "claddis" tiene la función "ReadMorphNexus" que facilita este trabajo. Sin embargo, hay que asegurarse de que el archivo siga un formato estándar y que tenga el bloque de supuestos "Assumption block" al final del archivo. Seguir el ejemplo "morphomatrix.nex" ejecuntando los siguientes comando y revisando el archivo en sus carpetas de trabajo:

cat("#NEXUS\n\nBEGIN DATA;\n\tDIMENSIONS  NTAX=5 NCHAR=5;\n\t
    FORMAT SYMBOLS= \" 0 1 2\" MISSING=? GAP=- ;\nMATRIX\n\n
    Taxon_1  010?0\nTaxon_2  021?0\nTaxon_3  02111\nTaxon_4  011-1
    \nTaxon_5  001-1\n;\nEND;\n\nBEGIN ASSUMPTIONS;\n\t
    OPTIONS  DEFTYPE=unord PolyTcount=MINSTEPS ;\n\t
    TYPESET * UNTITLED  = unord: 1 3-5, ord: 2;\n\t
    WTSET * UNTITLED  = 1: 2, 2: 1 3-5;\nEND;", file = "morphmatrix.nex")
morph.matrix <- ReadMorphNexus("morphmatrix.nex")
morph.matrix

# Una vez nos aseguramos de que nuestra matriz tiene el formato correcto, podemos leerla:

matriz_morfo <- ReadMorphNexus("morfologia.nex")
matriz_morfo
