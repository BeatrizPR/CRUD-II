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
      String consultaCodEnti = "SELECT * FROM entidad WHERE CodEnti="
                                + Integer.valueOf(request.getParameter("CodEnti"));      
      
      ResultSet numeroDeEnti = s.executeQuery (consultaCodEnti);
      numeroDeEnti.last();
      
      if (numeroDeEnti.getRow() != 0) {
        out.println("Lo siento, no se ha podido dar de alta, ya existe una exposición con ese código "
                    + request.getParameter("CodEnti") + ".");
      } else {
        String insercion = "INSERT INTO entidad VALUES (" + Integer.valueOf(request.getParameter("CodEnti"))
                           + ", '" + request.getParameter("NomEnti")
                           + "' , '" + request.getParameter("TipoEnti")+ "')";
        s.execute(insercion);
        out.println("Exposición dada de alta de forma correcta.");
      }
      conexion.close();
    %>
    <br>
    <a href="museo.jsp" class="icon"><span class="icon"></span> Volver a las Entidades </button>
    <br>
    <br>
    <a href="index.html" class="icon"><span class="icon"></span> Página principal </button>
   
  </body>
</html>