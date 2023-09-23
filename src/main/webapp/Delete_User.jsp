<%-- 
    Document   : Delete_User
    Created on : Sep 23, 2023, 8:09:09 AM
    Author     : dr264
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Usuario</title>
    </head>
    <body>
        <h1>Eliminar usuario del registro</h1>
        <form action="Servlet_delete" method="POST">
            <p>
                <label>
                    id:
                </label>
                <input type="text" name="id_">
            </p>
        </form>
    </body>
</html>
