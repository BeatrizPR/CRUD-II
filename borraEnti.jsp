<%-- 
    Document   : borraExpo
    Author     : Bea
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/artdb","root", "");
      Statement s = conexion.createStatement();
      s.execute ("DELETE FROM entidad WHERE CodEnti=" + request.getParameter("CodEnti"));
      
      s.close();
    %>	
    <script>document.location = "museo.jsp"</script> 
  </body>
</html>
