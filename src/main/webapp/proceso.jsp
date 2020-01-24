<%-- 
    Document   : proceso
    Created on : 24 ene. 2020, 10:44:44
    Author     : andrei
--%>
<%@page import="daw.andreiweb.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos del cliente</title>
    </head>
    <body>
        <!-- Se recogen los valores que envía el formulario mediante el objeto request y su método getParameter() -->
        <%
            Cliente cli;
            String nombre = request.getParameter("nombre");
            String edad = request.getParameter("edad");
            String correo = request.getParameter("correo");

            if (correo.equals("") || edad.equals("") || nombre.equals("")) {
        %>

        <!-- Si no se ha introducido algún parámetro se muestra el error -->

    <center> <h2>Faltan parámetros</h2> </center>
    <!-- Se han introducido correctamente, creamos el objeto con los datos -->
    <% } else {
        cli = new Cliente(nombre, Integer.parseInt(edad), correo);

    %>
    <p>
        Información recogida por el servidor:<br>

        Edad: <%= cli.getEdad()%> <br>
        Nombre: <%= cli.getNombre()%> <br>
        Correo: <%= cli.getCorreo()%> <br>
        
        <p><a href="index.html">Volver<a/></p>

        <% }%> <!-- LLave del else -->

    </body>
</html>

