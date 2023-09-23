<%-- 
    Document   : Insert_User
    Created on : Sep 23, 2023, 6:25:23 AM
    Author     : dr264
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Cliente</title>
    </head>
    <body>
        <h1>Datos del Cliente</h1>
        
        <form action="Servlet_add" method="POST">
            <p>
                <label>
                    Nombre:
                </label>
                <input type="text" name="nombre_">
            </p>
            <p>
                <label>
                    Apellido:
                </label>
                <input type="text" name="apellido_">
            </p>
            <p>
                <label>
                    Email:
                </label>
                <input type="text" name="email_">
            </p>
            <p>
                <label>
                    Telefono:
                </label>
                <input type="text" name="telefono_">
            </p>
            <p>
                <label>
                    Saldo:
                </label>
                <input type="text" name="saldo_">
            </p>
            <p>
                <label>
                    Estado:
                </label>
                 <input type="text" name="estado_">
            </p>
            <button type="submit">Agregar</button>
        </form>
        
        
    </body>
</html>
