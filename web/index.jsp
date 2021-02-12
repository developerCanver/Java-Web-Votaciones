<%-- 
    Document   : index
    Created on : 2/04/2020, 12:20:04 PM
    Author     : Canver
--%>

<%@page import="clases.persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenidos</h1>
        <%
        persona pp = new persona("1084551311", "pp", "3216549872", "carlos@hotmail.com", "123");
        persona maria = new persona();
        maria.setIdentificacion("1235645");
        maria.setNombre("maria Andrea");
        maria.setTelefono("3216549871");
        maria.setEmail("maria@hotmail.com");
        maria.setClave("123");

        
        %>
        
        cedula de pepe <%= pp.getIdentificacion() %> <p>
            Telefono maria <%= maria.getTelefono() %>
    </body>
</html>
