<%-- 
    Document   : Delete_User
    Created on : Sep 23, 2023, 8:09:09 AM
    Author     : dr264
--%>
<% int id = Integer.parseInt(request.getParameter("id")); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Usuario</title>
        <link rel="stylesheet" href="./css/main.css">
    </head>
    <body>
        
        <form action="Servlet_delete" method="POST" class="formulario">
            <h1>Eliminar usuario del registro</h1>
            <div class="inputContainer">
                <label>
                    id:
                </label>
                <input type="text" name="id_" value="<%=id%>">
            </div>
            <button type="submit" class="btnSubmit ">Eliminar</button>
        </form>
    </body>
</html>
