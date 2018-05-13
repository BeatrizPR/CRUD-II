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
                <th><h3>Modificación de Personas</h3></th>
            </tr>
        </thead>
          <form method="get" action="grabaPersonaModificada.jsp">
            <div class="formu"> 
              <label>&nbsp;&nbsp;Cod. Persona: &nbsp;</label>
              <input type="text" size="5" name="CodPer" value="<%= request.getParameter("CodPer") %>" readonly>
            </div>
            <div class="formu">
            <label>&nbsp;&nbsp;Nombre: &nbsp;</label><input type="text" size="40" name="NomPer" value="<%= request.getParameter("NomPer") %>">
            </div>
            <div class="formu">
            <label>&nbsp;&nbsp;Apellido: &nbsp;</label><input type="text" size="40" name="ApePer" value="<%= request.getParameter("ApePer") %>">
            </div>
            <div class="formu">
            <label>&nbsp;&nbsp;Sexo: &nbsp;</label><input type="text" size="40" name="Sexo" value="<%= request.getParameter("Sexo") %>">
            </div>
            <div class="formu">
             <label>&nbsp;&nbsp;Titulacion: &nbsp;</label><input type="text" size="20" name="Titulacion" value="<%= request.getParameter("Titulacion") %>">
            </div>
            <div class="formu">
            <label>&nbsp;&nbsp;Tipo de persona: &nbsp;</label><input type="text" size="40" name="TipoPer" value="<%= request.getParameter("TipoPer") %>">
            </div>
            <br>
            <hr>
            &nbsp;&nbsp;<a href="persona.jsp" class="icon"><span class="icon"></span>Cancelar   </a>
            <button type="submit" class="icon"><span class="icon"></span>  Aceptar</button><br><br>
          </form>

            <br>
            <br>
      <div>&copy; Beatriz Parejo Ramos</div>
    </div>
  </body>
</html>
