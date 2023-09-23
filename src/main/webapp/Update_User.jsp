<%-- 
    Document   : Update_User
    Created on : Sep 23, 2023, 7:35:17 AM
    Author     : dr264
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar datos</title>
    </head>
    <body>
        <h1 >Actualizar datos del cliente</h1>
        
        
        <form action="Servlet_update" method="POST">
            <p>
                <label>
                    id:
                </label>
                <input type="text" name="id_">
            </p>
            
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
