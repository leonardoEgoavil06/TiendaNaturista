<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Compras</title>
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
        <div class="mt-4">
            <div class="container">
                <h4>Mis compras</h4>
                <hr>
                <c:forEach var="c" items="${compras}">
                    <div class="card mb-2">
                        <div class="card-header">
                            <label>${c.getFecha()}</label>
                        </div>
                        <div class="card-body">
                            <label>Total : ${c.getMonto()}0</label>
                        </div>
                        <div class="p-3">
                            <form method="GET" action="Controlador">
                                <input type="hidden" name="idCompras" value="${c.getId()}">
                                <button type="submit" class="btn btn-primary">Ver compra</button>
                                <input type="hidden" name="accion" value="DetallesCompra">
                            </form>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/pie.jspf" %>
    </body>
</html>
