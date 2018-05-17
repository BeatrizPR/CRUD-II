<%-- 
    Document   : index
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
     <link href="imagenes/favi.ico" rel="shortcut icon">
     
    <title>Base de datos de exposiciones artísticas</title>
  </head>

  <body>
			<br><br>			
      
        <h2>Base de datos de exposiciones artísticas</h2>
        <h2>Exposiciones</h2>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/artdb","root", "");
          Statement s = conexion.createStatement();
          ResultSet listado = s.executeQuery ("SELECT * FROM Exposicion");
        %>

        <table class="container">
            <thead>
            <tr>
                <th><h1>CodExpo</h1></th>
                <th><h1>Nombre</h1></th>
                <th><h1>Movimiento</h1></th>
                <th><h1>Tipo de Obra</h1></th>
            </tr>
            </thead>
            <form method="get" action="grabaExpo.jsp">
                <tr><th><input type="text" name="CodExpo" required size="5"</th>
                <th><input type="text" name="NomExpo" required size="60"></th>
                <th><input type="text" name="MoviExpo" size="35"></th>
                <th><input type="text" name="TipoObra" size="20"></th>
                <td><button type="submit" value="Añadir" class="icon"><span class="icon"></span> Añadir</button></td>
              
            </tr>           
        </form>
        <%
          while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("CodExpo") + "</td>");
            out.println("<td>" + listado.getString("NomExpo") + "</td>");
            out.println("<td>" + listado.getString("MoviExpo") + "</td>");
            out.println("<td>" + listado.getString("TipoObra") + "</td>");
        %>
        <td>
        <form method="get" action="modificaExpo.jsp">
          <input type="hidden" name="CodExpo" value="<%=listado.getString("CodExpo") %>">
          <input type="hidden" name="NomExpo" value="<%=listado.getString("NomExpo") %>">
          <input type="hidden" name="MoviExpo" value="<%=listado.getString("MoviExpo") %>">
          <input type="hidden" name="TipoObra" value="<%=listado.getString("TipoObra") %>">
          <button type="submit"  class="icon"><span class="icon"></span> Modificar</button>
	</form>
	</td>
	<td>
        <form method="get" action="borraExpo.jsp">
          <input type="hidden" name="CodExpo" value="<%=listado.getString("CodExpo") %>"/>
          <button type="submit" class="icon"><span class="icon"></span> Eliminar</button>
        </form>
        </td></tr>
        <%
          } // while   
          conexion.close();
        %>

        </table>
        <a href="principal.jsp" class="icon"><span class="icon"></span> Página principal </button>
        <br>
      
      <div class="text-center">&copy; Beatriz Parejo Ramos</div>
  </body>
</html>