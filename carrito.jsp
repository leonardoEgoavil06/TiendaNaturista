<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Carrito de Compras</title>
        <%@include file="WEB-INF/jspf/enlaces.jspf" %>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');
            *{
                font-family: 'Poppins', sans-serif;
            }
            .input-box{
                margin-top: 45px;
            }
            .input-field{
                display: flex;
                flex-direction: column;
                position: relative;
                padding: 0 10px 0 10px;
            }
            .input{
                height: 45px;
                width: 100%;
                background: transparent;
                border: none;
                border-bottom: 1px solid rgba(0, 0, 0, 0.2);
                outline: none;
                margin-bottom: 20px;
                color: #40414a;
            }
            .submit{
                border: none;
                outline: none;
                height: 45px;
                background: #ececec;
                border-radius: 5px;
                transition: .4s;
            }
            .submit:hover{
                background: rgba(37, 95, 156, 0.937);
                color: #fff;
            }
            .content_1{
                width: 95%;
            }
            .input-box .input-field label{
                position: absolute;
                top: 10px;
                left: 10px;
                pointer-events: none;
                transition: .5s;
            }
            .input-field input:focus ~ label
            {
                top: -10px;
                font-size: 13px;
            }
            .input-field input:valid ~ label
            {
                top: -10px;
                font-size: 13px;
                color: #5d5076;
            }
            .input-box .input-field .num{
                position: absolute;
                top: -10px;
                left: 10px;
                pointer-events: none;
                transition: .5s;
            }
            .input-field .num
            {
                top: -10px;
                font-size: 13px;
            }
            .input-field .num
            {
                top: -10px;
                font-size: 13px;
                color: #5d5076;
            }
            .input-field .input:focus, .input-field .input:valid{
                border-bottom: 1px solid #743ae1;
            }
            .c{
                margin-top: 0;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/encabezado.jspf" %>
        <div class="container-fluid mt-4 content_1">
            <div class="row">
                <div class="col-sm-12">
                    <table class="table table-hover ">
                        <thead class="text-center">
                            <tr colspan="4">
                                <th>Item</th>
                                <th>Nombre</th>
                                <th class="col-4">Descripción</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>Subtotal</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody class="text-center">
                            <c:forEach var="car" items="${carrito}">
                                <tr>
                                    <td>${car.getItem()}</td>
                                    <td>${car.getNombre()}</td>
                                    <td class="text-start">${car.getDescripcion()}</td>
                                    <td>S/.${car.getPrecioCompra()}0</td>
                                    <td>
                                        <input type="hidden" id="idpro" value="${car.getIdProducto()}">
                                        <input type="number" id="Cantidad" value="${car.getCantidad()}" class="form-control text-center" min="1">
                                    </td>
                                    <td>S/.${car.getSubTotal()}0</td>
                                    <td>
                                        <input type="hidden" id="idp" value="${car.getIdProducto()}">
                                        <a class="btn btn-danger shadow" id="btnDelete"><i class="bi bi-trash"></i>  Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="container mt-4 py-5 d-flex justify-content-end">
            <div class="row row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-2 row-cols-xl-2 row-cols-xxl-2 g-4 d-flex justify-content-end">
                <div class="card border-0">
                    <form class="shadow p-3 bg-body rounded" action="Controlador?accion=GenerarCompra" method="post">
                        <div class="card-header bg-white">
                            <h1>Realizar compra</h1>
                        </div>
                        <div class="card-body">
                            <input type="hidden" name="NroSerie" value="${nserie}">
                            <label>Subtotal:</label>
                            <input type="text" class="input" value="S/.${subTotal}0" readonly="" class="form-control mb-2 mt-2">
                            <label>IGV:</label>
                            <input type="text" class="input" value="S/.${IGV}0" readonly="" class="form-control mb-2 mt-2">
                            <label>Total a pagar:</label>
                            <input type="text" class="input" value="S/.${totalPagar}0" readonly="" class="form-control mb-2 mt-2">
                            <input type="hidden" name="id" value="${sessionScope.idUsuario}">
                        </div>
                        <div class="card-body d-flex justify-content-evenly p-3 bg-white">
                            <input class="col-4 btn btn-danger btn-block p-2 shadow" data-bs-toggle="modal" data-bs-target="#exampleModal" value="Realizar Pago">
                        </div>

                        <!-- Modal -->
                        <div class="modal lg fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Realizar Pago</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container">
                                            <div class="input-box c">
                                                <div class="input-field mb-4">
                                                    <img src="imagenes/tarjeta-pago.png" alt=""/>
                                                </div>
                                                <div class="input-field">
                                                    <input type="text" id="tarjeta" class="input" maxlength="19" name="tarjeta" autocomplete="off" required="">
                                                    <label class="num" for="inputNumero">Número Tarjeta</label>
                                                </div>
                                                <div class="input-field">
                                                    <input type="text" class="input" maxlength="16" name="nombre" autocomplete="off" required="">
                                                    <label class="num" for="inputNumero">Nombre</label>
                                                </div>
                                                <div class="input-field">
                                                    <input type="text" class="input" maxlength="16" name="apellido" autocomplete="off" required="">
                                                    <label class="num" for="inputNumero">Apellido</label>
                                                </div>
                                                <div class="input-field mb-4">
                                                    <input class="mt-4" type="date" placeholder="Seleccionar la fecha de expiración" required="">
                                                    <label class="num mt-2" for="inputNumero">Fecha de expiración</label>
                                                </div>
                                                <div class="input-field">
                                                    <input type="text" class="input" maxlength="3" autocomplete="off" required="">
                                                    <label class="num" for="inputNumero">CVV</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-body d-flex justify-content-evenly">
                                            <button type="button" class="col-4 btn btn-secondary p-2 shadow" data-bs-dismiss="modal">Close</button>
                                            <input type="submit" name="btnComprar" class="col-4 btn btn-danger btn-block p-2 shadow" value="Comprar">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <%@include file="WEB-INF/jspf/pie.jspf" %>
        <script>
            $(document).ready(function () {
                $("tr #btnDelete").click(function () {
                    var idp = $(this).parent().find("#idp").val();
                    swal({
                        title: "¿Estás seguro?",
                        text: "¡Una vez eliminado, no podrás recuperar este producto del carrito!",
                        icon: "warning",
                        buttons: true,
                        dangerMode: true,
                    })
                            .then((willDelete) => {
                                if (willDelete) {
                                    eliminar(idp);
                                    swal("¡El producto ha sido eliminado del carrito!", {
                                        icon: "success",
                                    }).then((willDelete) => {
                                        if (willDelete) {
                                            parent.location.href = "Controlador?accion=Carrito";
                                        }
                                    });
                                } else {
                                    swal("¡Tu producto está a salvo!");
                                }
                            });
                });
                function eliminar(idp) {
                    var url = "Controlador?accion=Delete";
                    $.ajax({
                        type: 'POST',
                        url: url,
                        data: "idp=" + idp,
                        success: function (data, textStatus, jqXHR) {
                        }
                    });
                }

                $("tr #Cantidad").click(function () {
                    var idp = $(this).parent().find("#idpro").val();
                    var cantidad = $(this).parent().find("#Cantidad").val();
                    var url = "Controlador?accion=ActualizarCantidad";
                    $.ajax({
                        type: 'POST',
                        url: url,
                        data: "idp=" + idp + "&Cantidad=" + cantidad,
                        success: function (data, textStatus, jqXHR) {
                            location.href = "Controlador?accion=Carrito";
                        }
                    });
                });
            });
            const input = document.getElementById("tarjeta");

            input.addEventListener("input", function () {
                // Obtener el valor actual del input
                let value = input.value;

                // Eliminar cualquier espacio en blanco existente
                value = value.replace(/\s/g, "");

                // Separar el número en grupos de 4 dígitos con espacios
                value = value.replace(/(\d{4})/g, "$1 ");

                // Establecer el valor del input con los espacios
                input.value = value;
            });
        </script>
    </body>
</html>
