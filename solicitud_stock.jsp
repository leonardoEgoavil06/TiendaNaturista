<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Solicitud</title>
        <%@include file="WEB-INF/jspf/enlaces.jspf" %>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

            *{
                font-family: 'Poppins', sans-serif;
            }
            .input-box{
                max-width: 1200px;
                box-sizing: border-box;
            }
            .input-box header{
                font-weight: 700;
                text-align: center;
                margin-bottom: 45px;
            }
            .input-field{
                display: flex;
                margin-bottom: 30px;
                flex-direction: column;
                position: relative;
            }
            .input-container{
                display: flex;
                margin-bottom: 30px;
                flex-direction: column;
                position: relative;
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
            .input-box .input-field .name{
                position: absolute;
                top: -10px;
                font-size: 13px;
                pointer-events: none;
                transition: .5s;
                color: #5d5076;
            }
            .input-box .input-field .name2{
                position: absolute;
                top: 58px;
                font-size: 13px;
                pointer-events: none;
                transition: .5s;
                color: #5d5076;
            }
            .input-field .input:focus, .input-field .input:valid{
                border-bottom: 1px solid #743ae1;
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
                background: #306536;
                color: #fff;
            }
            .signin{
                text-align: center;
                font-size: small;
                margin-top: 25px;
            }
            span a{
                text-decoration: none;
                font-weight: 700;
                color: #000;
                transition: .5s;
            }
            span a:hover{
                text-decoration: underline;
                color: #000;
            }
            .nav-link{
                color: #5d5076;
            }
            .nav-link:hover{
                color: #000;
            }
            .nav-link:focus{
                color: #000;
            }
            @media only screen and (max-width: 768px){
                .side-image{
                    border-radius: 10px 10px 0 0;
                }
                img{
                    width: 35px;
                    position: absolute;
                    top: 20px;
                    left: 47%;
                }
                .text{
                    position: absolute;
                    top: 70%;
                    text-align: center;
                }
                .text p, i{
                    font-size: 16px;
                }
            }
            .text-start{
                display: flex;
                flex-direction: row;
                flex-wrap: wrap;
                gap: 1rem;
            }
            .text-start .form-select{
                width: 180px;
            }
            .datos{
                flex-direction: row;
                flex-wrap: nowrap;
            }
            .seleccionar{
                cursor: pointer;
            }
            .seleccionar option{
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/encabezado.jspf" %>
        <div class="container-fluid mt-4 mb-4">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-4 col-md-4">
                        <form action="Controlador" method="POST">
                            <div class="card mb-3 shadow border-0">
                                <div class="card-header">
                                    <strong>Detalles del pedido</strong>
                                </div>
                                <div class="card-body">
                                    <div class="input-box">
                                        <div class="input-field mt-2">
                                            <select class="form-select seleccionar input col-3 mb-0 mt-3 shadow" name="nombreproveedor">
                                                <c:forEach var="p" items="${proveedores}">
                                                    <option value="${p.getIdProveedor()}">${p.getNombre()}</option>
                                                </c:forEach>
                                            </select>
                                            <label class="name">Empresa</label>
                                        </div>
                                        <div class="input-field text-start d-flex mb-2">
                                            <select class="form-select seleccionar input mb-0 mt-3 shadow col-sm-3" name="idProducto" id="miSelect">                                       
                                                <c:forEach var="pr" items="${productos}">
                                                    <option value="${pr.getId()}">${pr.getNombre()}</option>
                                                </c:forEach>
                                            </select>
                                            <label class="name">Producto</label>
                                            <button class="btn btn-warning mt-3 boton1 shadow rounded" type="submit" name="accion" value="BuscarProducto" >Buscar producto</button>
                                        </div>
                                        <div class="input-field mt-4 d-flex justify-content-between datos mb-0">
                                            <div class="input-field col-3 mb-2">
                                                <input type="hidden" class="input" name="nomproducto" value="${productop.getNombre()}" readonly="">
                                                <input type="text" class="input shadow rounded mt-3 p-3" name="codigo" value="${productop.getId()}" readonly="">
                                                <label class="name">Id</label>
                                            </div>
                                            <div class="input-field col-3 mb-2">
                                                <input type="number" class="input shadow rounded mt-3 p-3" name="stockproducto" value="${productop.getStock()}" readonly="">
                                                <label class="name">Stock</label>
                                            </div>
                                            <div class="input-field col-3 mb-2">
                                                <input type="number" class="input shadow rounded mt-3 p-3" name="precio" value="${productop.getPrecio()}0" readonly="">
                                                <label class="name">Precio</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="input-box">
                                        <div class="input-field mb-2">
                                            <input type="number" class="input shadow rounded mt-3 p-3" name="cantidad" value="1" placeholder="" max="1000" maxlength="4" min="1">
                                            <label class="name">Cantidad a solicitar</label>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <button type="submit" name="accion" value="AgregarPedido" class="btn btn-success shadow mt-3">Agregar producto al pedido</button>
                                    </div>
                                    <div class="input-container mb-3">
                                        <label class="mb-3">Fecha <i class="bi bi-calendar-date"></i></label>
                                        <input class="form-control shadow rounded border-0" type="datetime-local" placeholder="Seleccionar la fecha" name="fecha" required="">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-8">
                        <div class="table-responsive card shadow border-0">
                            <table class="table text-center">
                                <thead>
                                    <tr>
                                        <th>Item</th>
                                        <th>Código</th>
                                        <th>Producto</th>
                                        <th>Precio</th>
                                        <th>Cantidad</th>
                                        <th>Subtotal</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="ped" items="${listapedido}">
                                        <tr>
                                            <td>${ped.getItem()}</td>
                                            <td>${ped.getId()}</td>
                                            <td>${ped.getNombreProducto()}</td>
                                            <td>S/.${ped.getPrecio()}0</td>
                                            <td>${ped.getCantidad()}</td>
                                            <td>S/.${ped.getSubTotal()}0</td>
                                            <td>
                                                <button class="btn btn-warning shadow"><i class="bi bi-pen-fill"></i> Editar</button>
                                                <button class="btn btn-danger shadow"><i class="bi bi-trash"></i> Eliminar</button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                        <tr>
                                            <td colspan="5"></td>
                                            <td colspan="">hola</td>
                                            <td></td>
                                        </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="">
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script>
        document.getElementById("miSelect").value = "${productop.getId()}"; // Establece la opción "Opción 2" como seleccionada
    </script>
    <script>
        config = {
            dateFormat: "m-d-Y",
            minDate: "10-14-2023",
            maxDate: "12-23-2023",
            enable: [
                {
                    from: "08-14-2023",
                    to: "12-23-2023"
                }
            ]
        }
        flatpickr("input[type=datetime-local]", config);
    </script>
    <%@include file="WEB-INF/jspf/pie.jspf" %>
</body>
</html>
