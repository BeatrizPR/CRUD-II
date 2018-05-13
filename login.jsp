<%-- 
    Document   : index
    Author     : Beatriz Parejo Ramos
--%>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="estilo.css" rel="stylesheet">
        <link href="imagenes/favi.ico" rel="shortcut icon">
        
    <script>
      $('.message a').click(function () {
        $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
      });
    </script>
        
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <br>
        <br>
        <form method="get" action="errorLogin.jsp">
            <center>
                <table  cellpadding="10">
                    <tr>
                        <td>Usuario</td>
                        <td><center><input type="text" name="usuario" />

                    </center></td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><center><input type="password" name="contrasena" value="" /></center></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><center><input type="submit" value="Acceder" /></center></td>
                    </tr>
                </table>
            </center>
</form>
    </body>
</html>
