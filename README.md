## Automatización de Servicios - Karate Framework
Proyecto de evalucion de automatización de servicios.  

## Requisitos
- Tener instalado **JDK 17**
- Tener instalado **última versión** de **Maven**
- Plugin Cucumber for java
- Plugin Gerking

## Ejecución
Para ejecutar la prueba, abrir el proyecto y ejecutar la clase PetRunner.java dentro del directorio  src/java/
``` 
 src/java/PetRunner.java
``` 
## Datos de prueba
Para cambiar los datos de pureba se deben modificar los archivos dentro de src/java/data/
``` 
 dataPet.csv //Datos para la prueba de creacion de mascota y consulta de la misma
```
``` 
 dataPetUpdate.csv //Datos para la actualización y consulta por estado de la mascota
```
``` 
 pet.json //Estructura de la petición json de las mascota
```
## Ver los reportes
Los reportes se crearLa ejecución de la prueba, producirá un reporte de prueba de Karate Framework en el directorio `target/karate-reports/karate-summary.html`.

