<%-- 
    Document   : index
    Created on : 1/04/2020, 07:42:36 AM
    Author     : Marino botina
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="javax.xml.transform.Result"%>
<%@page import="clasesgenericas.ConectorBD"%> 
<%@page import="clases.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Persona pepe=new Persona("9800000", "pepe suarez", "7202020","pepe@gmail.com", "123");
            Persona maria=new Persona();
            maria.setIdentificacion("50000000");
            maria.setNombres("maria camila");
            maria.setTelefono("7212121");
            maria.setEmail("maria@gmail.com");
            maria.setClave("123");
            System.out.println("probando");
            
            String nombres="";
            ResultSet resultado=Persona.getLista();
            while (resultado.next()) {
                nombres+=resultado.getString("nombres")+" "+ resultado.getString("telefono")+ "<br>";
            }
            
            
            
         %> 
         cédula de pepe <%=pepe.getIdentificacion()%><p>
         teléfono de maria<%=maria.getTelefono()%><p>
         E-mail de maria: <%=maria.getEmail()%>
         lista de personas <p>
         <%=nombres%>
         
             
    </body>
</html>
