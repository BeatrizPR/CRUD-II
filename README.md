# CRUD-II
CRUD sobre arte y exposiciones artísticas en Málaga. Esta práctica versa sobre exposiciones temporales artísticas desarrollas en Málaga, a través de la inclusión de registros en una base de datos que realizada con JSP y MYSQL.


El proyecto actual muestra las tablas de Exposición,Entidad y Persona.




## Tablas:



### Exposicion:

* CodExpo (PK)(autoincremental)

* NomExpo

* MoviExpo (Es el movimiento artístico)

* TipoObra



### Entidad:

* CodEnti (PK) (autoincremental)

* NomEnti

* TipoEnti (Museo, Galería, Casa, etc.)



### Persona:

* CodPer (PK) (autoincremental)

* NomPer

* ApePer

* Sexo

* Titulacion

* TipoPer (Artista o comisario - persona que organiza la exposición artística)






Tablas que surgen:




### ExpoEnti:

* CodExpoEnti (PK)

* CodExpo (FK)

* CodEnti (FK)



### ExpoPer:

* CodExpoPer (PK)

* CodExpo (FK)

* CodPer (FK)




## Esquema de la base de datos:

<img src="capturas/esquema-BD.jpg" width="680px">



## Capturas de la ampliación del CRUD con nuevas funcionalidades:

<img src="capturas/1.jpg" width="680px">


<img src="capturas/2.jpg" width="680px">


<img src="capturas/3.jpg" width="680px">


<img src="capturas/4.jpg" width="680px">


<img src="capturas/5.jpg" width="680px">


<img src="capturas/6.jpg" width="680px">


<img src="capturas/7.jpg" width="680px">


<img src="capturas/8.jpg" width="680px">


<img src="capturas/9.jpg" width="680px">


<img src="capturas/10.jpg" width="680px">


<img src="capturas/11.jpg" width="680px">


<img src="capturas/12.jpg" width="680px">




### Captura de la primera versión del CRUD.
Se puede acceder al repositorio desde aquí. ->  [CRUD ARTE]( https://github.com/BeatrizPR/CRUD)

## Capturas de pantalla con las distintas modificaciones que se pueden realizar



### Inicio:



<img src="capturas/Inicio.jpg" width="680px">

Inicio




### Acceso:



<img src="capturas/AccesoExpos.jpg" width="680px">

Acceso a las exposiciones



<img src="capturas/AccesoEnti.jpg" width="680px">

Acceso a las entidadess



### Añadir o Crear:



<img src="capturas/AñadirExpo.jpg" width="680px">

Añadir a las exposiciones



<img src="capturas/AñadirEnti.jpg" width="680px">

Añadir a las entidades



<img src="capturas/AñadidaExpoBien.jpg" width="680px">

Exposición añadida



<img src="capturas/EntidadAñadida.jpg" width="680px">

Entidad añadida




### Modificación:



<img src="capturas/ModificarExpo.jpg" width="680px">

Acceso a las exposiciones



<img src="capturas/ModificarEntidad.jpg" width="680px">
Acceso a las exposiciones




<img src="capturas/ComprobacionDelCodigo.jpg" width="680px">

Comprobación de que no se repita el Código (ID)






