<%-- 
    Document   : ModificaExpo
    Author     : Beatriz Parejo Ramos
--%>

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
    <div class="container">
      <br><br>
   
        <thead>
            <tr>
                <th><h3>Modificación de Exposición</h3></th>
            </tr>
        </thead>
          <form method="get" action="grabaExpoModificado.jsp">
            <div class="formu"> 
              <label>&nbsp;&nbsp;Cod. Exposición: &nbsp;</label>
              <input type="text" size="5" name="CodExpo" value="<%= request.getParameter("CodExpo") %>" readonly>
            </div>
            <div class="formu">
            <label>&nbsp;&nbsp;Nombre: &nbsp;</label><input type="text" size="40" name="NomExpo" value="<%= request.getParameter("NomExpo") %>">
            </div>
            <div class="formu">
             <label>&nbsp;&nbsp;Movimiento artístico: &nbsp;</label><input type="text" size="35" name="MoviExpo" value="<%= request.getParameter("MoviExpo") %>">
             
            </div>
            <div class="formu">
             <label>&nbsp;&nbsp;Tipo de obra: &nbsp;</label><input type="text" size="20" name="TipoObra" value="<%= request.getParameter("TipoObra") %>">
            </div>
            <br>
            <hr>
            &nbsp;&nbsp;<a href="exposiciones.jsp" class="icon"><span class="icon"></span>Cancelar   </a>
            <button type="submit" class="icon"><span class="icon"></span>  Aceptar</button><br><br>
          </form>

            <br>
            <br>
      <div>&copy; Beatriz Parejo Ramos</div>
    </div>
    
  </body>
</html>