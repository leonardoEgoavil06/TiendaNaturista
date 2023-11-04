<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Compra</title>
        <%@include file="WEB-INF/jspf/enlaces.jspf" %>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

            *{
                font-family: 'Poppins', sans-serif;
            }
            .timg{
                height: 20px;
                width: 20px;
            }
            .color{
                background: white;
                color: black;
                text-align: center;
                font-size: 14px;
                font-style: inherit;
            }
            .btn-small:hover{
                background-color: greenyellow;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/encabezado.jspf" %>
        <div class="container mt-4 mb-4">
            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="Controlador?accion=MostrarCompras">Compras</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Detalles</li>
                </ol>
            </nav>
        </div>
        <div class="mt-4">
            <div class="container">
                <div class="row">
                    <div class="col-4 col-md-4">
                        <div class="card mb-3">
                            <div class="card-header">
                                <strong>Detalles de la compra</strong>
                            </div>
                            <div class="card-body">
                                <p>
                                    <strong>Fecha: </strong>${fechaCompra}
                                </p>
                                <p>
                                    <strong>Subtotal: </strong>S/.${subtotalCompra}0
                                </p>
                                <p>
                                    <strong>IGV: </strong>S/.${igvCompra}0
                                </p>
                                <p>
                                    <strong>Total: </strong>S/.${totalPagarCompra}0
                                </p>
                                <p>
                                    <strong>Estado: </strong>${estadoCompra}
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-8">
                        <div class="table-responsive">
                            <table class="table text-center">
                                <thead>
                                    <tr>
                                        <th>Producto</th>
                                        <th>Precio</th>
                                        <th>Cantidad</th>
                                        <th>Subtotal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="d" items="${detalle_compras}">
                                        <tr>
                                            <td>${d.getNombreProducto()}</td>
                                            <td>S/.${d.getPrecioProducto()}0</td>
                                            <td>${d.getCantidad()}</td>
                                            <td>S/.${d.getPrecioTotalProducto()}0</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="d-flex justify-content-end">
                            <form action="Controlador">
                                <button type="submit" name="accion" value="ExportarPDF" class="btn btn-small shadow color"><i class="material-icons left"><img class="timg" src="imagenes/pdf.png"></i> Exportar PDF</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/pie.jspf" %>
    </body>
</html>
