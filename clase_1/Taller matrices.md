# TALLER 1: MATRICES DE CARACTERES PARA ANÁLISIS DE INFERENCIA FILOGENÉTICA

## Formatos

La matriz de caracteres es el principal requisito para utilizar cualquier programa computacional de inferencia filogenética. Esta matriz es simplemente una tabla cuyas filas coresponden a los taxones, las columnas a los caracteres individuales y las celdas contienen el estado de caracter codificado. Aunque esta matriz sería muy fácil de elaborar en una tabla de Excel, este formato no es recomendado, ya que tienen muchos caracteres de formato escondido que los programas de inferencia filogenética no pueden reconocer. Por esta razón, dichos programas exijen que la matriz de caracteres esté en el formato más simple posible. Para esta clase vamos a explorar los tres formatos más populares para construir y almacenar matrices de datos: Nexus, Phyllip y TNT. A continuación se describen los pasos a seguir:

### 1. Familiarizarse con los elementos de los archivos para cada formato.

Abrir en un editor de texto los siguientes archivos: [ADN.tnt](/clase_1/ADN.tnt), [morfologia.tnt](/clase_1/morfologia.tnt), [morfologia.nex](/clase_1/morfologia.nex), [ADN.nex](/clase_1/ADN.nex), [ADN.phy](/clase_1/ADN.phy).

Responda las siguientes preguntas para todos los formatos:

        a. ¿Cual de los archivos contiene una línea de apertura para indicar el tipo de archivo? ¿Cuál es en cada caso?

        b. ¿Qué caracter se debe usar para hacer comentarios?

        c. ¿Cómo indicar cuantos taxones hay en la matriz?

        d. ¿Cómo indicar cuantos caracteres hay en la matriz?

        e. ¿Cómo se indica el tipo de caracteres de la matriz (p.e. morfológico, ADN, etc)?

        f. Para el formato NEXUS: Explique la información de los bloques "Begin Taxa", "Begin characters" y "Begin data"

        g. ¿Que caracter y/o palabra se usa para delimitar el final del documento? 

        h. ¿Que otra información adicional indentificó en el cada archivo?


Más información sobre el formato NEXUS: [Aquí](http://informatics.nescent.org/w/images/8/8b/NEXUS_Final.pdf)

Más información sobre el formato TNT: [Aquí](http://phylo.wikidot.com/tnt-htm)

Más información sobre el formato PHY: [Aquí](http://evolution.genetics.washington.edu/phylip/doc/main.html#inputfiles)


### 2. Paso a paso para generar matrices en Mesquite

Más detalles en el manual de [Mesquite](https://www.mesquiteproject.org/home.html) o [aquí](/clase_1/Mesquite_Student_Guide.pdf)

a. Abrir Mesquite.

b. En el menú superior seleccionar File, New. Una ventana aparecerá.

c. Darle nombre al proyecto (p.e. Matriz_ejercicio.nex). Es importante que el archivo tenga la extensión .nex para que Mesquite (y otros programas) reconozcan este archivo como una matriz de datos. Hacer click en Save.

d. Una ventana llamada “New File Options” se abrirá.

   - Click en cuadro “Name” y darle un nombre (p.e. morfología).
   
   - Click en “Number of Taxa” y poner el número de taxones terminales (cinco en nuestro caso). Este número puede cambiarse después.
   
   - Seleccionar la caja “Make Character Matrix”. La caja “Make Taxa Block” también debe estar seleccionada. Click OK.
   
e. Una ventana llamada “New Character Matrix se abrirá.

   - Darle un nombre a la matriz en la caja de texto “p.e. Ejercicio”.
   
   - Ingresar el número de caracteres (en nuestro caso: 5).

   - Seleccionar “Standard Categorical Data”. Click OK.

f. Explorar las opciones de esa ventana.

g. Ingresar nombres a los taxones y caracteres.

   - Doble click a taxón 1 en la primera fila de la matriz. Ingresar el nombre del taxón. Presionar ENTER.
   
   - Doble click a la primera columna de la matriz y renombrar el carácter.
   
   - Para adicionar caracteres o taxones adicionales, seleccionar las herramientas Add Characters o Add Taxa en el menú de la izquierda. Para eliminar, basta seleccionar y presionar DELETE.
   
h. Ingresar datos.

   - Todos los datos comienzan como “?” para denotar que es información faltante o desconocida.
   
   - Ingresar manualmente los datos con la herramienta Edit Tool o haciendo doble click en la celda.
   
   - Ingresar estados codificados de los caracteres (0, 1, 2…etc).
   
   - Si quiere describir cada estado: seleccionar Show Matrix Info en la esquina inferior izquierda de la ventana (cualquier modificación es solo visual, no afecta la codificación de la matriz).
   
   - Guardar con Save.
   
i. Exportar la matriz a diferentes formatos.

   - File, Export y escoger el formato.

### 3. Generar y subir matrices en R



