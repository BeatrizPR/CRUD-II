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
        <h2>Personas</h2>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/artdb","root", "");
          Statement s = conexion.createStatement();
          ResultSet listado = s.executeQuery ("SELECT * FROM Persona");
        %>

        <table class="container">
            <thead>
            <tr>
                <th><h1>Cod.Persona</h1></th>
                <th><h1>Nombre</h1></th>
                <th><h1>Apellido</h1></th>
                <th><h1>Sexo</h1></th>
                <th><h1>Titulación</h1></th>
                <th><h1>Tipo de Persona</h1></th>
            </tr>
            </thead>
            <form method="get" action="grabaPersona.jsp">
                <tr><th><input type="text" name="CodPer" required size="5"</th>
                <th><input type="text" name="NomPer" required size="25"></th>
                <th><input type="text" name="ApePer" required size="35"></th>
                <th><input type="text" name="Sexo" size="20"></th>
                <th><input type="text" name="Titulacion" size="20"></th>
                <th><input type="text" name="TipoPer" required size="20"></th>
                <td><button type="submit" value="Añadir" class="icon"><span class="icon"></span> Añadir</button></td>
              
            </tr>           
        </form>
        <%
          while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("CodPer") + "</td>");
            out.println("<td>" + listado.getString("NomPer") + "</td>");
            out.println("<td>" + listado.getString("ApePer") + "</td>");
            out.println("<td>" + listado.getString("Sexo") + "</td>");
            out.println("<td>" + listado.getString("Titulacion") + "</td>");
            out.println("<td>" + listado.getString("TipoPer") + "</td>");
        %>
        <td>
        <form method="get" action="modificaPersona.jsp">
            <input type="hidden" name="CodPer" value="<%=listado.getString("CodPer") %>">
          <input type="hidden" name="NomPer" value="<%=listado.getString("NomPer") %>">
          <input type="hidden" name="ApePer" value="<%=listado.getString("ApePer") %>">
          <input type="hidden" name="Sexo" value="<%=listado.getString("Sexo") %>">
          <input type="hidden" name="Titulacion" value="<%=listado.getString("Titulacion") %>">
          <input type="hidden" name="TipoPer" value="<%=listado.getString("TipoPer") %>">
          <button type="submit"  class="icon"><span class="icon"></span> Modificar</button>
	</form>
	</td>
	<td>
        <form method="get" action="borraPersona.jsp">
          <input type="hidden" name="CodPer" value="<%=listado.getString("CodPer") %>"/>
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