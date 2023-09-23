<%-- 
    Document   : index
    Created on : Sep 23, 2023, 4:50:12 AM
    Author     : hecto
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Objects.Client"%>
<% List<Client> listClient = (List<Client>) request.getAttribute("listClient"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
        <link rel="stylesheet" href="./css/main.css">
    </head>
    <body>
        <header class="header">
            <h1 class="mainTitle">Administrador de clientes</h1>
        </header>
        <main>
            <!-- <a href="<%=request.getContextPath()%>/new" class="addUsers">Agregar usuarios</a> -->
            <form action="Servlet_add" method="GET">
                <button class="addUsers">Agregar  Usuarios</button>
            </form>
            <table class="table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>E-mail</th>
                    <th>Telefono</th>
                    <th>Saldo</th>
                    <th>Acciones</th>
                </tr>
                </thead>
                <tbody>
                <%
                        //List<Client> lista = (ArrayList<Client>).request.getAttribute("listClient");

                        for (Client obj : listClient) {
                                Client newClient = new Client();
                                newClient.setId(obj.getId());
                                newClient.setNombre(obj.getNombre());
                                newClient.setApellido(obj.getApellido());
                                newClient.setEmail(obj.getEmail());
                                newClient.setTelefono(obj.getTelefono());
                                newClient.setSaldo(obj.getSaldo());
                                newClient.setEstado(obj.getEstado());                
                %>
                <tr>
                    <td><%=newClient.getId()%></td>
                    <td><%=newClient.getNombre()%></td>
                    <td><%=newClient.getApellido()%></td>
                    <td><%=newClient.getEmail()%></td>
                    <td><%=newClient.getTelefono()%></td>
                    <td><%=newClient.getSaldo()%></td>
                    <td class="tdAction">
                        <!-- <div>
                            <a href="edit?id=<c:out value='${client.id}' />" class="editUsers btnAction" >Editar</a>
                        </div> -->
                        <form action="Servlet_update" method="GET">
                            <button  class="editUsers btnAction" >Modificar Usuarios</button>
                        </form>
                        <!-- <div>
                            <a href="delete?id=<c:out value='${client.id}' />" class="deleteUsers btnAction">Borrar</a>
                        </div> -->
                        <form action="Servlet_delete" method="GET">
                            <button  class="deleteUsers btnAction">Eliminar Usuarios</button>
                        </form>
                    </td>
                </tr>
                <%}%>  
                </tbody>
            </table>
        </main>
        <footer class="footer">
            <h3 class="title">Creado por: </h3>
            <section class="authors">
                <p>Hector</p>
                <p>David</p>
                <p>Yaritza</p>
                <p>Hilda</p>
                <p>Jesus</p>
                <p>Daniel</p>
            </section>
            <center>
                <small>UFG 2023</small>
            </center>
        </footer>
    </body>
</html>
