<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.demo.modelo.Usuario" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Productos</title>
        <%@include file="WEB-INF/jspf/enlaces.jspf" %>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

            *{
                font-family: 'Poppins', sans-serif;
                box-sizing: border-box;
            }
            .text-start{
                display: flex;
                flex-direction: column;
            }
            .text-start span{
                font-size: 15px;
                font-weight: 700;
            }
            .card-img-top{
                width: 100%;
            }
            .content_2{
                width: 85%;
            }
            .desc{
                font-size: 14px;
                text-align: justify;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/encabezado.jspf" %>
        <div class="">
            <div class="container-fluid mt-4 mb-4 content_2">
                <%
                if (nombreUsuario != null && !nombreUsuario.isEmpty()) {
                    Usuario usuario = (Usuario) session.getAttribute("usuario");
                    Double imc = usuario.getImc();
                    if (imc != null) {
                        double imcValue = imc.doubleValue();
                        if (imcValue <= 18.5) {
                %>
                <h3>Productos Recomendados</h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                    <c:forEach var="p1" items="${productos1}">
                        <div class="col mb-2">
                            <div class="card shadow mb-5 bg-body rounded border-0">
                                <div class="card-header border-bottom bg-white p-3">
                                    <label>${p1.getNombre()}</label>
                                </div>
                                <div class="card-body text-center p-0">
                                    <img class="card-img-top" src="ControladorIMG?id=${p1.getId()}">
                                </div>
                                <div class="card-footer text-center bg-white">
                                    <div class="text-start">
                                        <label class="desc">${p1.getDescripcion()}</label>
                                        <span class="mt-3">S/.${p1.getPrecio()}0</span>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <a href="Controlador?accion=AgregarCarrito&id=${p1.getId()}" class="btn btn-outline-primary mt-3" style="font-size: 14px;">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p1.getId()}" class="btn btn-success mt-3" style="font-size: 14px;">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <%
                            } else if (usuario.getImc() > 18.5 && usuario.getImc() <= 24.9) {
                %>
                <h3>Productos Recomendados</h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                    <c:forEach var="p2" items="${productos2}">
                        <div class="col mb-2">
                            <div class="card shadow mb-5 bg-body rounded border-0">
                                <div class="card-header border-bottom bg-white p-3">
                                    <label>${p2.getNombre()}</label>
                                </div>
                                <div class="card-body text-center p-0">
                                    <img class="card-img-top" src="ControladorIMG?id=${p2.getId()}">
                                </div>
                                <div class="card-footer text-center bg-white">
                                    <div class="text-start">
                                        <label class="desc">${p2.getDescripcion()}</label>
                                        <span class="mt-3">S/.${p2.getPrecio()}0</span>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <a href="Controlador?accion=AgregarCarrito&id=${p2.getId()}" class="btn btn-outline-primary mt-3" style="font-size: 14px;">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p2.getId()}" class="btn btn-success mt-3" style="font-size: 14px;">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <%
                    } else if (usuario.getImc() > 24.9 && usuario.getImc() <= 29.9) {
                %>
                <h3>Productos Recomendados</h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                    <c:forEach var="p3" items="${productos3}">
                        <div class="col mb-2">
                            <div class="card shadow mb-5 bg-body rounded border-0">
                                <div class="card-header border-bottom bg-white p-3">
                                    <label>${p3.getNombre()}</label>
                                </div>
                                <div class="card-body text-center p-0">
                                    <img class="card-img-top" src="ControladorIMG?id=${p3.getId()}">
                                </div>
                                <div class="card-footer text-center bg-white">
                                    <div class="text-start">
                                        <label class="desc">${p3.getDescripcion()}</label>
                                        <span class="mt-3">S/.${p3.getPrecio()}0</span>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <a href="Controlador?accion=AgregarCarrito&id=${p3.getId()}" class="btn btn-outline-primary mt-3" style="font-size: 14px;">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p3.getId()}" class="btn btn-success mt-3" style="font-size: 14px;">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <%
                    } else if (usuario.getImc() > 29.9 && usuario.getImc() <= 34.9) {
                %>
                <h3>Productos Recomendados</h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                    <c:forEach var="p4" items="${productos4}">
                        <div class="col mb-2">
                            <div class="card shadow mb-5 bg-body rounded border-0">
                                <div class="card-header border-bottom bg-white p-3">
                                    <label>${p4.getNombre()}</label>
                                </div>
                                <div class="card-body text-center p-0">
                                    <img class="card-img-top" src="ControladorIMG?id=${p4.getId()}">
                                </div>
                                <div class="card-footer text-center bg-white">
                                    <div class="text-start">
                                        <label class="desc">${p4.getDescripcion()}</label>
                                        <span class="mt-3">S/.${p4.getPrecio()}0</span>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <a href="Controlador?accion=AgregarCarrito&id=${p4.getId()}" class="btn btn-outline-primary mt-3" style="font-size: 14px;">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p4.getId()}" class="btn btn-success mt-3" style="font-size: 14px;">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <%
                    } else if (usuario.getImc() > 34.9 && usuario.getImc() <= 39.9) {
                %>
                <h3>Productos Recomendados</h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                    <c:forEach var="p5" items="${productos5}">
                        <div class="col mb-2">
                            <div class="card shadow mb-5 bg-body rounded border-0">
                                <div class="card-header border-bottom bg-white p-3">
                                    <label>${p5.getNombre()}</label>
                                </div>
                                <div class="card-body text-center p-0">
                                    <img class="card-img-top" src="ControladorIMG?id=${p5.getId()}">
                                </div>
                                <div class="card-footer text-center bg-white">
                                    <div class="text-start">
                                        <label class="desc">${p5.getDescripcion()}</label>
                                        <span class="mt-3">S/.${p5.getPrecio()}0</span>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <a href="Controlador?accion=AgregarCarrito&id=${p5.getId()}" class="btn btn-outline-primary mt-3" style="font-size: 14px;">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p5.getId()}" class="btn btn-success mt-3" style="font-size: 14px;">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <%
                    } else if (usuario.getImc() > 39.9) {
                %>
                <h3>Productos Recomendados</h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                    <c:forEach var="p5" items="${productos5}">
                        <div class="col mb-2">
                            <div class="card shadow mb-5 bg-body rounded border-0">
                                <div class="card-header border-bottom bg-white p-3">
                                    <label>${p5.getNombre()}</label>
                                </div>
                                <div class="card-body text-center p-0">
                                    <img class="card-img-top" src="ControladorIMG?id=${p5.getId()}">
                                </div>
                                <div class="card-footer text-center bg-white">
                                    <div class="text-start">
                                        <label class="desc">${p5.getDescripcion()}</label>
                                        <span class="mt-3">S/.${p5.getPrecio()}0</span>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <a href="Controlador?accion=AgregarCarrito&id=${p5.getId()}" class="btn btn-outline-primary mt-3" style="font-size: 14px;">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p5.getId()}" class="btn btn-success mt-3" style="font-size: 14px;">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <%
                    }else{
                    }
                }
}
                %> 
                <h3>Energía y Vitalidad</h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                    <c:forEach var="p1" items="${productos1}">
                        <div class="col mb-2">
                            <div class="card shadow mb-5 bg-body rounded border-0">
                                <div class="card-header border-bottom bg-white p-3">
                                    <label>${p1.getNombre()}</label>
                                </div>
                                <div class="card-body text-center p-0">
                                    <img class="card-img-top" src="ControladorIMG?id=${p1.getId()}">
                                </div>
                                <div class="card-footer text-center bg-white">
                                    <div class="text-start">
                                        <label class="desc">${p1.getDescripcion()}</label>
                                        <span class="mt-3">S/.${p1.getPrecio()}0</span>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <a href="Controlador?accion=AgregarCarrito&id=${p1.getId()}" class="btn btn-outline-primary mt-3" style="font-size: 14px;">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p1.getId()}" class="btn btn-success mt-3" style="font-size: 14px;">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <h3>Salud Cardiovascular</h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                    <c:forEach var="p2" items="${productos2}">
                        <div class="col mb-2">
                            <div class="card shadow mb-5 bg-body rounded border-0">
                                <div class="card-header border-bottom bg-white p-3">
                                    <label>${p2.getNombre()}</label>
                                </div>
                                <div class="card-body text-center p-0">
                                    <img class="card-img-top" src="ControladorIMG?id=${p2.getId()}">
                                </div>
                                <div class="card-footer text-center bg-white">
                                    <div class="text-start">
                                        <label class="desc">${p2.getDescripcion()}</label>
                                        <span class="mt-3">S/.${p2.getPrecio()}0</span>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <a href="Controlador?accion=AgregarCarrito&id=${p2.getId()}" class="btn btn-outline-primary mt-3" style="font-size: 14px;">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p2.getId()}" class="btn btn-success mt-3" style="font-size: 14px;">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <h3>Control de Peso</h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                    <c:forEach var="p3" items="${productos3}">
                        <div class="col mb-2">
                            <div class="card shadow mb-5 bg-body rounded border-0">
                                <div class="card-header border-bottom bg-white p-3">
                                    <label>${p3.getNombre()}</label>
                                </div>
                                <div class="card-body text-center p-0">
                                    <img class="card-img-top" src="ControladorIMG?id=${p3.getId()}">
                                </div>
                                <div class="card-footer text-center bg-white">
                                    <div class="text-start">
                                        <label class="desc">${p3.getDescripcion()}</label>
                                        <span class="mt-3">S/.${p3.getPrecio()}0</span>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <a href="Controlador?accion=AgregarCarrito&id=${p3.getId()}" class="btn btn-outline-primary mt-3" style="font-size: 14px;">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p3.getId()}" class="btn btn-success mt-3" style="font-size: 14px;">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <h3>Condimentos Saludables</h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                    <c:forEach var="p4" items="${productos4}">
                        <div class="col mb-2">
                            <div class="card shadow mb-5 bg-body rounded border-0">
                                <div class="card-header border-bottom bg-white p-3">
                                    <label>${p4.getNombre()}</label>
                                </div>
                                <div class="card-body text-center p-0">
                                    <img class="card-img-top" src="ControladorIMG?id=${p4.getId()}">
                                </div>
                                <div class="card-footer text-center bg-white">
                                    <div class="text-start">
                                        <label class="desc">${p4.getDescripcion()}</label>
                                        <span class="mt-3">S/.${p4.getPrecio()}0</span>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <a href="Controlador?accion=AgregarCarrito&id=${p4.getId()}" class="btn btn-outline-primary mt-3" style="font-size: 14px;">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p4.getId()}" class="btn btn-success mt-3" style="font-size: 14px;">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <h3>Digestión y Bienestar Gastrointestinal</h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                    <c:forEach var="p5" items="${productos5}">
                        <div class="col mb-2">
                            <div class="card shadow mb-5 bg-body rounded border-0">
                                <div class="card-header border-bottom bg-white p-3">
                                    <label>${p5.getNombre()}</label>
                                </div>
                                <div class="card-body text-center p-0">
                                    <img class="card-img-top" src="ControladorIMG?id=${p5.getId()}">
                                </div>
                                <div class="card-footer text-center bg-white">
                                    <div class="text-start">
                                        <label class="desc">${p5.getDescripcion()}</label>
                                        <span class="mt-3">S/.${p5.getPrecio()}0</span>
                                    </div>
                                    <div class="d-flex justify-content-evenly mb-3">
                                        <a href="Controlador?accion=AgregarCarrito&id=${p5.getId()}" class="btn btn-outline-primary mt-3" style="font-size: 14px;">Agregar</a>
                                        <a href="Controlador?accion=Comprar&id=${p5.getId()}" class="btn btn-success mt-3" style="font-size: 14px;">Comprar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/pie.jspf" %>
    </body>
</html>
