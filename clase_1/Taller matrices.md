# TALLER 1: MATRICES DE CARACTERES PARA ANÁLISIS DE INFERENCIA FILOGENÉTICA

## Formatos

La matriz de caracteres es el principal requisito para utilizar cualquier programa computacional de inferencia filogenética. Esta matriz es simplemente una tabla cuyas filas coresponden a los taxones, las columnas a los caracteres individuales y las celdas contienen el estado de caracter codificado. Aunque esta matriz sería muy fácil de elaborar en una tabla de Excel, este formato no es recomendado, ya que tienen muchos caracteres de formato escondido que los programas de inferencia filogenética no pueden reconocer. Por esta razón, dichos programas exijen que la matriz de caracteres esté en el formato más simple posible. Para esta clase vamos a explorar los tres formatos más populares para construir y almacenar matrices de datos: Nexus, Phyllip y TNT. A continuación se describen los pasos a seguir:

### 1. Familiarizarse con los elementos de los archivos para cada formato.

a. Linea de reconocimiento

b. Bloque de taxones

c. Bloque de caracteres

d. Bloque de matriz

e. Fin de matriz

f. Código adicional

### 2. Paso a paso para generar matrices en Mesquite

Más detalles en el manual de [Mesquite](https://www.mesquiteproject.org/home.html)

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



