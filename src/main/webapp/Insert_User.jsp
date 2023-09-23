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
        <link rel="stylesheet" href="./css/main.css">
    </head>
    <body>
        
        <form action="Servlet_add" method="POST" class="formulario">
            <h2>Datos del Cliente</h2>
            <div class="inputContainer">
                <label>
                    Nombre:
                </label>
                <input type="text" name="nombre_">
            </div >
            <div class="inputContainer">
                <label>
                    Apellido:
                </label>
                <input type="text" name="apellido_">
            </div >
            <div class="inputContainer">
                <label>
                    Email:
                </label>
                <input type="text" name="email_">
            </div >
            <div class="inputContainer">
                <label>
                    Telefono:
                </label>
                <input type="text" name="telefono_">
            </div >
            <div class="inputContainer">
                <label>
                    Saldo:
                </label>
                <input type="text" name="saldo_">
            </div >
            <div class="inputContainer">
                <label>
                    Estado:
                </label>
                 <input type="text" name="estado_">
            </div >
            <button type="submit" class="btnSubmit ">Agregar</button>
        </form>
        
        
    </body>
</html>
