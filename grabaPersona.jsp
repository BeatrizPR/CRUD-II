<%-- 
    Document   : grabaExpo
    Author     : Beatriz Parejo Ramos
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
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/artdb","root", "");
      Statement s = conexion.createStatement();
      request.setCharacterEncoding("UTF-8");
      
      // Comprueba si hay una expo con el mismo código
      String consultaCodPer = "SELECT * FROM Persona WHERE CodPer="
                                + Integer.valueOf(request.getParameter("CodPer"));      
      
      ResultSet numeroDePer = s.executeQuery (consultaCodPer);
      numeroDePer.last();
      
      if (numeroDePer.getRow() != 0) {
        out.println("Lo siento, no se ha podido dar de alta, ya existe una persona con ese código "
                    + request.getParameter("CodPer") + ".");
      } else {
        String insercion = "INSERT INTO Persona VALUES (" + Integer.valueOf(request.getParameter("CodPer"))
                           + ", '" + request.getParameter("NomPer")
                           + "', '" + request.getParameter("ApePer")
                           + "', '" + request.getParameter("Sexo")
                           + "', '" + request.getParameter("Titulacion")
                           + "', '" + request.getParameter("TipoPer")+ "')";
        s.execute(insercion);
        out.println("Persona dada de alta de forma correcta.");
      }
      conexion.close();
    %>
    <br>
    <a href="persona.jsp" class="icon"><span class="icon"></span> Volver a las Personas </button>
    <br>

   
  </body>
</html>