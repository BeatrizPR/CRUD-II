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
        <h2>Exposiciones que puedes visitar actualmente</h2>
        <%

          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/artdb", "root", "");
          Statement s = conexion.createStatement();
          ResultSet listado = s.executeQuery("SELECT exposicion.CodExpo,exposicion.NomExpo,  entidad.NomEnti, persona.NomPer, persona.ApePer, expoenti.FechaIni, expoenti.FechaFin  FROM `exposicion` INNER JOIN entidad ON entidad.CodEnti = exposicion.CodEnti INNER JOIN persona ON persona.CodPer = exposicion.CodPer INNER JOIN expoenti ON expoenti.CodEnti = exposicion.CodEnti ORDER BY exposicion.CodExpo ");
        %>

        <table class="container">
            <thead>
                <tr>
                    <th><h1>Cod.Expo</h1></th>
                    <th><h1>Exposicion</h1></th>
                    <th><h1>Entidad</h1></th>
                    <th><h1>Comisario</h1></th>
                    <th><h1>Fecha Inicio</h1></th>
                    <th><h1>Fecha Fin</h1></th>
                </tr>
            </thead>
            
            <%          try {
                while (listado.next()) {
                  out.println("<tr><td size='2'>");
                  out.println(listado.getString("CodExpo") + "</td>");
                  out.println("<td size='25'>" + listado.getString("NomExpo") + "</td>");
                  out.println("<td>" + listado.getString("NomEnti") + "</td>");
                  out.println("<td>" + listado.getString("NomPer") + " " + listado.getString("ApePer") + "</td>");
                  out.println("<td>" + listado.getString("FechaIni") + "</td>");
                  out.println("<td>" + listado.getString("FechaFin") + "</td>");
            %>
            <td>
                <form method="get" action=" ">
                    <input type="hidden" name="CodExpo" value="<%=listado.getString("CodExpo")%>">
                    <input type="hidden" name="NomExpo" value="<%=listado.getString("NomExpo")%>">
                    <input type="hidden" name="NomEnti" value="<%=listado.getString("NomEnti")%>">
                    <input type="hidden" name="NomPer" value="<%=listado.getString("NomPer")%>">
                    <input type="hidden" name="FechaIni" value="<%=listado.getString("FechaIni")%>">
                    <input type="hidden" name="FechaFin" value="<%=listado.getString("FechaFin")%>">
                </form>
            </td>
        </tr>
        <%
            } // while   

          } catch (Exception e) {
            out.println(e.fillInStackTrace());
          } finally {
            conexion.close();
          }
        %>

    </table>
        <a href="index.html" class="icon"><span class="icon"></span> Página principal </button>
    <br>

    <div class="text-center">&copy; Beatriz Parejo Ramos</div>
</body>
</html>