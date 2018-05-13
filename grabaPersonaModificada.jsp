<%-- 
    Document   : grabaExpoModificado
    Author     : Bea
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="estilo.css" rel="stylesheet">
    
    <title>Base de datos de exposiciones artísticas</title>
  </head>
  <body>
      <table class="container">
          <br>
          <br>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/artdb","root", "");
      Statement s = conexion.createStatement();
      request.setCharacterEncoding("UTF-8");
      
      String actualizacion = "UPDATE persona SET "
                           + " NomPer='" + request.getParameter("NomPer")
                           + "', ApePer='" + request.getParameter("ApePer")
                           + "', Sexo='" + request.getParameter("Sexo")
                           + "', Titulacion='" + request.getParameter("Titulacion")
                           + "', TipoPer='" + request.getParameter("TipoPer")
                           + "' WHERE CodPer=" + Integer.valueOf(request.getParameter("CodPer"));
      s.execute(actualizacion);
      out.println("Persona actualizada correctamente.");
      
      conexion.close();
    %>
    <br>
    <br>
    <a href="persona.jsp" class="icon"><span class="icon"></span>Volver a las personas</button>
    <br>
    <br>
    <a href="principal.jsp" class="icon"><span class="icon"></span>Página principal</button>
      </table>
  </body>
</html>