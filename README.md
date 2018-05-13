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
<p align="center">
<img src="capturas/esquema-BD.jpg" width="680px">

</p>

## Capturas de la ampliación del CRUD con nuevas funcionalidades:
Index
<p align="center">
<img src="capturas/1.jpg" width="680px">

</p> 

Exposiciones actuales
<p align="center">
<img src="capturas/2.jpg" width="680px">

</p>


### Implementacion del arrayList con desplegables en un manual para rellenar la B.D.
Manual
<p align="center">
<img src="capturas/3.jpg" width="680px">

</p>

Manual con desplegables
<p align="center">
<img src="capturas/4.jpg" width="680px">

</p>


### Implementación del hashmap con un login
Login
<p align="center">
<img src="capturas/5.jpg" width="680px">

</p> 

El login no está complementado  ya que si valida si el usuario y contraseña son correctos, pero no estoy haciendo un login real. (Tengo que implementarlo en un futuro).

Error. El usuario no existe.
<p align="center">
<img src="capturas/5-error.jpg" width="680px">
</p> 

Error. La contraseña es incorrecta
<p align="center">
<img src="capturas/5-error1.jpg" width="680px">
</p> 

Si el usuario y la contraseña es correcta, lleva a la página principal pero con más funcionalidades.
<p align="center">
<img src="capturas/6.jpg" width="680px">
</p> 

Tabla de exposiciones
<p align="center">
<img src="capturas/7.jpg" width="680px">

</p> 

Modificacion de una exposición
<p align="center">
<img src="capturas/8.jpg" width="680px">

</p>

Exposición modificada correctamente
<p align="center">
<img src="capturas/9.jpg" width="680px">

</p> 

Tabla de entidades
<p align="center">
<img src="capturas/10.jpg" width="680px">

</p>

Modificación de entidades con un arrayList en el tipo de entidad(Museo, Galería)
<p align="center">
<img src="capturas/11.jpg" width="680px">

</p>

Vista de la tabla de exposiciones cuando pasas el cursor sobre el botón modificar
<p align="center">
<img src="capturas/12.jpg" width="680px">

</p> 

### Nueva tabla creada:

Tabla de personas
<p align="center">
<img src="capturas/13.jpg" width="680px">

</p>

Modificación de personas
<p align="center">
<img src="capturas/14.jpg" width="680px">

</p>

Persona modificada correctamente
<p align="center">
<img src="capturas/15.jpg" width="680px">

</p>

### Captura de la primera versión del CRUD.
Se puede acceder al repositorio desde aquí. ->  [CRUD ARTE]( https://github.com/BeatrizPR/CRUD)

## Capturas de pantalla con las distintas modificaciones que se pueden realizar



### Inicio:



<p align="center">
<img src="capturas/Inicio.jpg" width="680px">






### Acceso:




Acceso a las exposiciones<p align="center"><img src="capturas/AccesoExpos.jpg" width="680px">




Acceso a las entidades
<p align="center">
<img src="capturas/AccesoEnti.jpg" width="680px">

</p>



### Añadir o Crear:




Añadir a las exposiciones<p align="center"><img src="capturas/AñadirExpo.jpg" width="680px">
</p>




Añadir a las entidade<p align="center">
<img src="capturas/AñadirEnti.jpg" width="680px">

</p>s



Exposición añadida<p align="center"><img src="capturas/AñadidaExpoBien.jpg" width="680px">

</p>



Entidad añadida

<p align="center"><img src="capturas/EntidadAñadida.jpg" width="680px">

</p>


### Modificación:


Acceso a la modificación de exposiciones

<p align="center">
<img src="capturas/ModificarExpo.jpg" width="680px">

</p>

Acceso a la modificación de entidades<p align="center"><img src="capturas/ModificarEntidad.jpg" width="680px"></p>
Comprobación de que no se repita el Código (ID)<p align="center">
<img src="capturas/ComprobacionDelCodigo.jpg" width="680px">

</p>






