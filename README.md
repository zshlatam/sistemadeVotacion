# Sistema de Votación
Proyecto Formulario de Votación - Utilizando PHP &amp; MySQL

## Requisitos del proyecto:
1. PHP 8.2.0
2. MySQL 5.7.39
3. Servidor Http Apache 

## Herramientas utilizadas
1. VSCode (Editor )
2. PHPMyAdmin5 (Administrador DB)
3. Miro (Diseño de DB)
4. Bootstrap 5 (Framework CSS)

## Qué resuelve?
En un sistema de votación, se requiere validar varias varios puntos, este sistema valida cada punto del formulario de votación, aplicando las restricciones según los requisitos del cliente.

## Formulario de votación

 ![formulario](https://raw.githubusercontent.com/zshlatam/sistemadeVotacion/main/public/img/Formulario.png)

  

## Cómo descargar el proyecto?
```
git clone git@github.com:zshlatam/sistemadeVotacion.git

```
## Desarrollo del sistema

### Base de datos
Si bien se puede guardar toda la información del formulario en una tabla, es recomendable hacer un modelo relacional.
A continuación se muestra del modelo relacional

![DDBB](https://raw.githubusercontent.com/zshlatam/sistemadeVotacion/main/public/img/Diagrama-DDBB.jpg)

### Estructura 
Si bien este proyecto se realiza con PHP puro, se opto por tratar de realizar este proyecto con la estructura MVC. 
A continuación, un resumen de la estructura:

```
├── SistemadeVotacion
│   ├── carga-regiones-comunas          <- Almacena el script para la carga de comunas y regiones
│   │   ├── carga_json.php              <- Script de carga
│   │   └── comunas-regiones.json       <- Archivo JSON
│   │   
│   ├── config
│   │   └── database.php                <- Guarda la configuración de la conexión con la db
│   └── controllers
│       ├── CandidatoController.php     <- Obtiene el listado de candidatos a mostrar en el formulario
│       ├── CuestionarioController.php  <- Archivo principal, almacena las respuestas en las tablas votos y votos_referencia
│       ├── ReferenciaController.php    <- Obtiene el listado de referencias a mostrar en el formulario
│       ├── RegionController.php        <- Obtiene el listado de regiones a mostrar en el formualrio
│       ├── verificar_rut.php           <- Contiene la validación si RUT existe
│       └── VotosReferenciaController.php     <- Tiene función de guardar votos_referencia, esta fn es usada por CuestionarioController
├── public
│   ├── img     -> archivos estáticos
│   └── js
│       ├── carga-comunas.js            <- encargado de hacer la petición a la db y agregar dinámicamente las comunas en el <select>
│       ├── validar-rut.js              <- En conjunto a verificar_rut.php, hacen la validación si RUT existe. 
│       └── carga-comunas.js            <- Encargado de validar cada punto del formulario de votación
├── scriptDatabase   
│   ├── Scrip-db-Completo.sql           <- script de la base de datos poblada en su totalidad.
│   └── Script-db-sin-regiones-comunas  <- script de la base de datos con todas las tablas pero sin poblar data en regiones y comunas
├── views
│    ├── layout                         <- Templates
│    │   └── footer.php 
│    │   └── header.php 
│    ├── cuestionario.php               <- vista del Cuestionario                                           
├── index.php                           <- archivo raiz /    
├── LEEME.txt                           <- Instrucciones de instalación y uso 
└── README.md

```
### Validaciones
![Validaciones](https://raw.githubusercontent.com/zshlatam/sistemadeVotacion/main/public/img/Validaciones-formulario.png)
El formulario:
1. Valida que no haya respuestas vacias
2. Valida que el alias tenga 5 letras al menos y validar solo texto y numeros
3. Solo un formulario por RUT
4. El RUT debe ser real(usa formula DV = ConversiónRUT) y en formato 12345678-9
5. Que valide el formato del email (incluya @ y .)
6. Dependiendo de la región, debe mostrar las comunas de dicha región
7. Debe referir al menos 2 opciones

## Mejoras 
Como mejoras a futuro se podrían agregar validaciones también en el lado del servidor, agregar AUTH y responsibidad del sitio.


