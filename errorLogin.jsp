<%-- 
    Document   : index
    Author     : Beatriz Parejo Ramos
--%>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="estilo.css" rel="stylesheet">
        <link href="imagenes/favi.ico" rel="shortcut icon">
        
    
        
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        
        
        <%
          HashMap<String, String> login = new HashMap();
          login.put("admin", "admin");
          login.put("bea", "parejo");
          
          String usuario = request.getParameter("usuario");
          String contraseña = request.getParameter("contrasena");
          if (login.containsKey(usuario)) {
            if (login.get(usuario).equals(contraseña)) {
              session.setAttribute("nombre", usuario);
              response.sendRedirect("principal.jsp");
            } else {
              out.println("<div><p>Contraseña incorrecta</p></div>");
              out.println("<a href='login.jsp' class='icon' <button class = 'boton'> Login </button></a>");
            }
          } else {
            out.println("<div><p>El usuario no existe</p></div>");
            out.println("<a href='login.jsp' class='icon'<button class = 'boton'>Login</button></a>");
          }
        %>
       
    </body>
</html>
