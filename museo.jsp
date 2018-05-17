<%-- 
    Document   : index
    Author     : Beatriz Parejo Ramos
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
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
        <h2> Entidades</h2>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/artdb","root", "");
          Statement s = conexion.createStatement();
          ResultSet listado = s.executeQuery ("SELECT * FROM entidad");
        %>

        <table class="container">
            <thead>
            <tr>
                <th><h1>CodEnti</h1></th>
                <th><h1>Nombre</h1></th>
                <th><h1>Tipo</h1></th>
            </tr>
            </thead>
            <form method="get" action="grabaEnti.jsp">
                <tr><th><input type="text" name="CodEnti" required size="5"</th>
                <th><input type="text" name="NomEnti" required size="60"></th>
                <th> <div class="dropdown" ><select name="TipoEnti" required  class="dropdown-select">
            <%ArrayList<String> entidadesTipo = new ArrayList<String>();
              entidadesTipo.add("Museo");
              entidadesTipo.add("Centro de Arte Contemporáneo");
              entidadesTipo.add("Galería");
              entidadesTipo.add("Casa Natal");
              entidadesTipo.add("Fundación");
            for (String enti : entidadesTipo) {
                out.println("<option>" + enti + "</option>");
                
} %></select></div></th>
                <td><button type="submit" value="Añadir" class="icon"><span class="icon"></span> Añadir</button></td>
              
            </tr>           
        </form>
        <%
          while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("CodEnti") + "</td>");
            out.println("<td>" + listado.getString("NomEnti") + "</td>");
            out.println("<td>" + listado.getString("TipoEnti") + "</td>");
        %>
        <td>
        <form method="get" action="modificaEnti.jsp">
            <input type="hidden" name="CodEnti" value="<%=listado.getString("CodEnti") %>">
          <input type="hidden" name="NomEnti" value="<%=listado.getString("NomEnti") %>">
          <input type="hidden" name="TipoEnti" value="<%=listado.getString("TipoEnti") %>">
          
          <button type="submit"  class="icon"><span class="icon"></span> Modificar</button>
	</form>
	</td>
	<td>
        <form method="get" action="borraEnti.jsp">
          <input type="hidden" name="CodEnti" value="<%=listado.getString("CodEnti") %>"/>
          <button type="submit" class="icon"><span class="icon"></span> Eliminar</button>
        </form>
        </td></tr>
        <%
          } // while   
          conexion.close();
        %>

        </table>
        <br>
        <a href="principal.jsp" class="icon"><span class="icon"></span> Página principal </button>
        <br>
        <br>
      <div class="text-center">&copy; Beatriz Parejo Ramos</div>
  </body>
</html>