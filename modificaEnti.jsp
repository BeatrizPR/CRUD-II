<%-- 
    Document   : ModificaExpo
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
    <% request.setCharacterEncoding("UTF-8"); %>
    <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/artdb","root", "");
          Statement s = conexion.createStatement();
          ResultSet listado = s.executeQuery ("SELECT NomEnti FROM entidad");
        %>
    <div class="container">
      <br><br>
   
        <thead>
            <tr>
                <th><h3>Modificación de Entidades</h3></th>
            </tr>
        </thead>
          <form method="get" action="grabaEntiModificada.jsp">
            <div class="formu"> 
              <label>&nbsp;&nbsp;Cod. Entidad: &nbsp;</label>
              <input type="text" size="5" name="CodEnti" required value="<%= request.getParameter("CodEnti") %>" readonly>
            </div>
            <br>
            <div class="formu">
            <label>&nbsp;&nbsp;Nombre: &nbsp;</label><input type="text" size="40" name="NomEnti" required value="<%= request.getParameter("NomEnti") %>">
            </div>
            <br>
            <div class="formu">
                <label>&nbsp;&nbsp;Tipo de entidad: &nbsp;</label>
                <select name="TipoEnti" required="">
            <%ArrayList<String> entidadesTipo = new ArrayList<String>();
              entidadesTipo.add("Museo");
              entidadesTipo.add("Centro de Arte Contemporáneo");
              entidadesTipo.add("Galería");
              entidadesTipo.add("Casa Natal");
              entidadesTipo.add("Fundación");
            for (String enti : entidadesTipo) {
                out.println("<option>" + enti + "</option>");
                
              } %></select>
            </div>
            <br>
            <!--<div class="formu">
             <label>&nbsp;&nbsp;Tipo de entidad: &nbsp;</label><input type="text" size="20" name="TipoEnti" value="<%= request.getParameter("TipoEnti") %>">
            </div> -->
            <br>
            <hr>
            &nbsp;&nbsp;<a href="museo.jsp" class="icon"><span class="icon"></span>Cancelar   </a>
            <button type="submit" class="icon"><span class="icon"></span>  Aceptar</button><br><br>
          </form>
          <% conexion.close(); %>
            <br>
            <br>
      <div>&copy; Beatriz Parejo Ramos</div>
    </div>
    
  </body>
</html>