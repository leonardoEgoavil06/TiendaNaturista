<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Productos</title>
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
                        <a class="btn btn-info " href="agregar.jsp">Agregar producto</a>
                    </div>
                    <table class="table table-hover ">
                        <thead class="text-center">
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th class="col-5">Descripción</th>
                                <th>Precio</th>
                                <th>Stock</th>
                                <th colspan="2">Accciones</th>
                            </tr>
                        </thead>
                        <tbody class="text-center">
                            <c:forEach var="p" items="${productos}">
                                <tr>
                                    <td>${p.getId()}</td>
                                    <td>${p.getNombre()}</td>
                                    <td class="text-start">${p.getDescripcion()}</td>
                                    <td>${p.getPrecio()}</td>
                                    <td>${p.getStock()}</td>
                                    <th><a class="btn btn-warning" href="editar.jsp?id=${p.getId()}">Editar</a></th>    
                                    <th><a class="btn btn-danger" href="eliminar.jsp?id=${p.getId()}">Eliminar</a></th>
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
