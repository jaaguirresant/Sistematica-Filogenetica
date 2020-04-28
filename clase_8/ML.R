# Ejercicio modificado de Schliep (2019): https://cran.r-project.org/web/packages/phangorn/vignettes/Trees.pdf

# Abrir los paquetes:
library(ape)
library(phangorn)

# Leer los datos en formato phyDat
primates <- read.phyDat("ADN.nex", format = "nexus")

# Inferiremos los árboles de distancia para comenzar y los visualizamos. dist.ml calcula las distancias evolutivas usando JC69 por default.
dm <- dist.ml(primates)
treeUPGMA <- upgma(dm)
treeNJ <- NJ(dm)

layout(matrix(c(1,2), 2, 1), height=c(1,2))
par(mar = c(0,0,2,0)+ 0.1)
plot(treeUPGMA, main="UPGMA")
plot(treeNJ, "unrooted", main="NJ")

# Usar la función modelTest (esta función calcula un árbol de NJ por default)

mt <- modelTest(primates)

# Pregunta 1: ¿Que cálculos está haciendo modelTest?

# Veamos los valores de verosimilitud y las pruebas estadísticas comparativas
print(mt)

# Pregunta 2: Con base en los resultados ¿Cuál es el mejor modelo para nuestros datos?

mt[order(mt$AICc),]
bestmodel <- mt$Model[which.min(mt$AICc)]
bestmodel

# Si queremos ver las estimaciones de los parámetros del mejor modelo, podemos extraer la información así:

env <- attr(mt, "env")
ls(env=env)
HKG_G <- get("HKY+G", env) 
eval(HKG_G, env=env)

# Ahora haremos las inferencias usando Máxima Verosimilitud:

# 1. Podemos simplemente calcular la verosimilitud de un árbol partícular con longitudes de rama conocidas bajo el modelo JC69. En este caso el árbol de NJ:
fit <- pml(treeNJ, data=primates)
fit

# 2. Podemos optimizar la longitud de las ramas bajo el modelo JC69 con la función "optim.pml":

fitJC <- optim.pml(fit, TRUE)
logLik(fitJC)

# También podemos optimizar otros parámetros si especificamos un modelo más complejo, por ejemplo GTR + gamma:
fitGTR <- update(fit, k=4, inv=0.2)
fitGTR
fitGTR <- optim.pml(fitGTR, model="GTR", optInv=TRUE, optGamma=TRUE, rearrangement = "NNI", control = pml.control(trace = 0))

# o podemos hacer una búsqueda más sofisticada:

fitGTR <- optim.pml(fitGTR, model="GTR", optInv=TRUE, optGamma=TRUE, rearrangement = "stochastic", control = pml.control(trace = 0))
fitGTR
root(fitGTR$tree,outgroup="Tarsius_syrichta")->rooted_GTRtree
plot(rooted_GTRtree)

# Finalmente, podemos hacer un bootstrap:

bs = bootstrap.pml(fitJC, bs=100, optNni=TRUE, control = pml.control(trace = 0))
par(mfrow=c(2,1))
par(mar=c(1,1,3,1))
plotBS(midpoint(fitJC$tree), bs, p = 50, type="p")
title("a)")
cnet <- consensusNet(bs, p=0.2)
plot(cnet, "2D", show.edge.label=TRUE)
title("b)")
