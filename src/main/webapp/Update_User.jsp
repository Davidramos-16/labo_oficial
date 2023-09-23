<%-- 
    Document   : Update_User
    Created on : Sep 23, 2023, 7:35:17 AM
    Author     : dr264
--%>

<% 
    int id = Integer.parseInt(request.getParameter("id")); 
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String email = request.getParameter("email");
    String telefono = request.getParameter("telefono");
    Double saldo = Double.parseDouble(request.getParameter("saldo"));
    Byte estado = Byte.parseByte(request.getParameter("estado"));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar datos</title>
        <link rel="stylesheet" href="./css/main.css">
    </head>
    <body>
        <form action="Servlet_update" method="POST" class="formulario">
            <h2 >Actualizar datos del cliente</h2>
            <div class="inputContainer">
                <label>
                    id:
                </label>
                <input type="text" name="id_" value="<%=id%>">
            </div>
            
            <div class="inputContainer">
                <label>
                    Nombre:
                </label>
                <input type="text" name="nombre_" value="<%=nombre%>">
            </div>
            <div class="inputContainer">
                <label>
                    Apellido:
                </label>
                <input type="text" name="apellido_" value="<%=apellido%>">
            </div>
            <div class="inputContainer">
                <label>
                    Email:
                </label>
                <input type="text" name="email_" value="<%=email%>">
            </div>
            <div class="inputContainer">
                <label>
                    Telefono:
                </label>
                <input type="text" name="telefono_" value="<%=telefono%>">
            </div>
            <div class="inputContainer">
                <label>
                    Saldo:
                </label>
                <input type="text" name="saldo_" value="<%=saldo%>">
            </div>
            <div class="inputContainer">
                <label>
                    Estado:
                </label>
                 <input type="text" name="estado_" value="<%=estado%>">
            </div>
            <button type="submit" class="btnSubmit">Agregar</button>
        </form>
    </body>
</html>
