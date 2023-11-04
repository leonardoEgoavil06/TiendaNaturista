<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Usuarios</title>
        <%@include file="WEB-INF/jspf/enlaces.jspf" %>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

            *{
                font-family: 'Poppins', sans-serif;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/encabezado.jspf" %>
        <div class="container-fluid mt-4 content_1">
            <div class="row">
                <div class="col-sm-12">
                    <div class="d-flex justify-content-end">
                        <a class="btn btn-info " href="agregar_u.jsp">Agregar usuario</a>
                    </div>
                    <table class="table table-hover ">
                        <thead class="text-center">
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Correo</th>
                                <th>Contraseña</th>
                                <th colspan="2">Accciones</th>
                            </tr>
                        </thead>
                        <tbody class="text-center">
                            <c:forEach var="p" items="${usuariosa}">
                                <tr>
                                    <td>${p.getIdUsuario()}</td>
                                    <td>${p.getNombre()}</td>
                                    <td >${p.getApellido()}</td>
                                    <td>${p.getCorreo()}</td>
                                    <td>${p.getContraseña()}</td>
                                    <th><a class="btn btn-warning" href="editar_u.jsp?id=${p.getIdUsuario()}">Editar</a></th>    
                                    <th><a class="btn btn-danger" href="eliminar_u.jsp?id=${p.getIdUsuario()}">Eliminar</a></th>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/pie.jspf" %>
    </body>
</html>
