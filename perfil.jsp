<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.demo.modelo.Usuario" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Perfil</title>
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
            .input-box .input-field .imc{
                position: absolute;
                top: -10px;
                left: 10px;
                pointer-events: none;
                transition: .5s;
            }
            .input-field .imc
            {
                top: -10px;
                font-size: 13px;
            }
            .input-field .imc
            {
                top: -10px;
                font-size: 13px;
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
            @media only screen and (max-width: 1200px){
                .container{
                    flex-wrap: wrap;
                }
            }
            .container_c{
                width: 570px;
            }
            .container_d{
                min-width: 470px;
            }
            .container_f{
                min-width: 470px;
                margin-top: 2px;
            }
            img{
                width: 30%;
            }
            .container-fluid{
                flex-wrap: wrap;
            }
            .input-box .input-field .rc{
                font-size: 24px;
            }
            .dc{
                margin-top: 75px;
            }
            .imcc{
                display: flex;
                flex-wrap: wrap;
            }
            .img-fluid{
                width: 100%;
            }
            .est{
                margin-left: 14px;
                margin-top: 5px;
            }
            .text-start span{
                font-size: 15px;
                font-weight: 700;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/encabezado.jspf" %>
        <%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet" %>
        <div class="container-fluid mb-4 d-flex justify-content-evenly">
            <div class="p-2">
                <div class="input-box">
                    <div class=" d-flex justify-content-center">
                        <img src="imagenes/user.png">
                    </div>
                    <div class="input-field mt-4">
                        <input type="text" id="nombre" class="input" value="<%= session.getAttribute("nombreUsuario") %>"  readonly="" required>
                        <label class="imc">Nombre</label>
                    </div>
                    <div class="input-field mt-4">
                        <input type="text" id="nombre" class="input" value="<%= session.getAttribute("apellidoUsuario") %>"  readonly="" required>
                        <label class="imc">Apellido</label>
                    </div>
                    <div class="input-field mt-4">
                        <input type="text" id="nombre" class="input" value="<%= session.getAttribute("correoUsuario") %>"  readonly="" required>
                        <label class="imc">Correo</label>
                    </div>
                    <div class="input-field mt-4">
                        <input type="text" id="nombre" class="input" value="<%= session.getAttribute("sexoUsuario") %>"  readonly="" required>
                        <label class="imc">Sexo</label>
                    </div>
                </div>
            </div>
            <form class="container_c container mt-5 mb-4 row row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-1 row-cols-xl-1 row-cols-xxl-1 d-flex justify-content-start" action="Controlador?accion=CalcularIMC" method="post">
                <div class="input-box shadow p-3 mb-5 bg-body rounded">
                    <div class="input-field mt-4">
                        <input type="text" id="peso" class="input mt-3"  name="peso" value="${usuario.getPeso()}" required>
                        <label class="mt-3" for="peso">Peso (kg):</label>
                    </div>
                    <div class="input-field">
                        <input type="text" id="altura" class="input mt-3" name="altura" value="${usuario.getAltura()}" required>
                        <label class="mt-3" for="altura">Altura (cm):</label>
                    </div>
                    <div class="input-field">
                        <input type="text" id="edad" class="input mt-3" name="edad" value="${usuario.getEdad()}" required>
                        <label class="mt-3" for="edad">Edad (años):</label>
                    </div>
                    <div class="d-flex justify-content-center mb-4 mt-4">
                        <input type="submit" class="submit col-8" value="Calcular y Guardar Datos">
                    </div>
                </div>
            </form>
            <div class="container-fluid">
                <div class="d-flex justify-content-center">
                    <form class="container_d container mb-4 row row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-1 row-cols-xl-1 row-cols-xxl-1 d-flex justify-content-start" action="Controlador?accion=CalcularIMC" method="post">
                        <div class="input-box shadow p-3 mb-5 bg-body rounded">
                            <div class="imcc justify-content-between row row-cols-1 row-cols-xs-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-3">
                                <div class="">
                                    <div class="input-field">
                                        <label class="rc imc mt-4" for="TMB">Valores Antropométricos</label>
                                    </div>
                                    <div class="input-field dc">
                                        <input type="text" id="IMC" class="input" name="IMC" value="${usuario.getImc()}" readonly>
                                        <label class="imc" >IMC (Indice de Masa Corporal):</label>
                                    </div>
                                    <div class="input-field">
                                        <input type="text" id="TMB" class="input" name="TMB" value="${usuario.getTmb()}" readonly>
                                        <label class="imc" for="TMB">TMB (Tasa de Metabolismo Basal):</label>
                                    </div>
                                </div>
                                <div class="input-field">
                                    <img class="img-fluid" src="imagenes/imc.jpeg" alt=""/>
                                </div>
                                <div class="input-field p-4">
                                    <label class="rc imc mt-3 est" for="TMB">Estado</label>
                                    <textarea type="text" class="form-control mt-4" id="Resultado" name="Resultado" readonly="" rows="5">${Resultado}</textarea>
                                </div>
                            </div>
                            <div class="input-field">
                                <div class="mb-3 mt-3">
                                    <textarea type="text" class="form-control mt-5" id="Recomendacion" name="Recomendacion" rows="8" readonly>${Recomendacion}</textarea>
                                </div>
                                <label class="rc imc mt-3" for="TMB">Recomendaciones</label>
                            </div>
                            <div class="productos p-2">
                                <%
                                    if (nombreUsuario != null && !nombreUsuario.isEmpty()) {
                                        Usuario usuario = (Usuario) session.getAttribute("usuario");
                                        Double imc = usuario.getImc();
                                        if (imc != null) {
                                            double imcValue = imc.doubleValue();
                                            if (imcValue <= 18.5) {
                                %>
                                <h3 class="mb-3">Productos Recomendados</h3>
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                                    <c:forEach var="p1" items="${productos1}">
                                        <div class="col">
                                            <div class="card shadow bg-body rounded border-0">
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
                                <h3 class="mb-3">Productos Recomendados</h3>
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                                    <c:forEach var="p2" items="${productos2}">
                                        <div class="col">
                                            <div class="card shadow bg-body rounded border-0">
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
                                <h3 class="mb-3">Productos Recomendados</h3>
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                                    <c:forEach var="p3" items="${productos3}">
                                        <div class="col">
                                            <div class="card shadow bg-body rounded border-0">
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
                                <h3 class="mb-3">Productos Recomendados</h3>
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                                    <c:forEach var="p4" items="${productos4}">
                                        <div class="col">
                                            <div class="card shadow bg-body rounded border-0">
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
                                <h3 class="mb-3">Productos Recomendados</h3>
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                                    <c:forEach var="p5" items="${productos5}">
                                        <div class="col">
                                            <div class="card shadow bg-body rounded border-0">
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
                                <h3 class="mb-3">Productos Recomendados</h3>
                                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 g-4">
                                    <c:forEach var="p5" items="${productos5}">
                                        <div class="col">
                                            <div class="card shadow bg-body rounded border-0">
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
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <%
  try {
      Connection con;
      String url = "jdbc:mysql://localhost:3306/vrnaturista";
      String driver = "com.mysql.cj.jdbc.Driver";
      String user = "root";
      String clave = "";
      Class.forName(driver);
      con = DriverManager.getConnection(url, user, clave);

      PreparedStatement ps;
      ResultSet rs;

      ps = con.prepareStatement("SELECT * FROM historial_valores WHERE idUsuario = ?");
      ps.setInt(1, (int) session.getAttribute("idUsuario"));
      rs = ps.executeQuery();
            %>
            <div class="container-fluid">
                <div class="d-flex justify-content-center">
                    <form class="container_e container mb-4 row row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-1 row-cols-xl-1 row-cols-xxl-1 d-flex justify-content-start" action="Controlador?accion=CalcularIMC" method="post">
                        <div class="input-box shadow p-3 mb-5 bg-body rounded">
                            <div class="input-field">
                                <label class="rc imc mt-2" for="TMB">Historial</label>
                            </div>
                            <table class="table table-hover mt-5 text-center">
                                <tr>
                                    <th>Peso (kg)</th>
                                    <th>Altura (cm)</th>
                                    <th>Edad</th>
                                    <th>IMC</th>
                                    <th>Fecha</th>
                                </tr>
                                <%
                                    while (rs.next()){
                                %>
                                <tr>
                                    <td><%= rs.getDouble("peso")%></td>
                                    <td><%= rs.getInt("altura")%></td>
                                    <td><%= rs.getInt("edad")%></td>
                                    <td><%= rs.getDouble("imc")%></td>
                                    <td><%= rs.getString("Fecha")%></td>
                                </tr>
                                <%
                                }
                                %>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
            <%
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            %>

        </div>
        <%@include file="WEB-INF/jspf/pie.jspf" %>
    </body>
</html>
