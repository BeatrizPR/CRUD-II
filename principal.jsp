<%-- 
    Document   : principal
    Author     : Beatriz Parejo Ramis
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minumun-scale=1">
        <link href="estilo.css" rel="stylesheet">
        <link href="imagenes/favi.ico" rel="shortcut icon">

        <title>Base de datos de exposiciones artísticas</title>

    </head>

    <body class="portada">
        <header>

        </header>
        <div class="wrap">
            <h2>Bienvenidos a la base de datos de exposiciones artísticas temporales de Málaga</h2>
            <p>Accede a la base de datos</p>
            <br>
            <button onclick="location.href = 'expoActual.jsp'" type="button" class="boton">Exposiciones actuales</button>
            <br>
            <br>
            <button onclick="location.href = 'exposiciones.jsp'" type="button" class="boton">
                Accede a las exposiciones
            </button>
            <button onclick="location.href = 'museo.jsp'" type="button" class="boton">
                Accede a las entidades
            </button>
            <button onclick="location.href = 'persona.jsp'" type="button" class="boton">
                Accede a las personas
            </button>
            <br>
            <br>
            <button onclick="location.href='manual.jsp'" type="button" class="boton">
        Accede al manual
    </button>
            <br>
        </div>
        <br><br>
        <div class="copy">&copy; Beatriz Parejo Ramos</div>
    </body>
</html>
