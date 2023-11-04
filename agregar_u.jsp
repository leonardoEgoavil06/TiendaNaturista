<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Agregar Usuario</title>
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
                top: 10px;
                pointer-events: none;
                transition: .5s;
            }
            .input-field input:focus ~ .name
            {
                top: -10px;
                font-size: 13px;
            }
            .input-field input:valid ~ .name
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
            .form-select{
                width: 260px;
                height: 42px;
                margin-top: 10px;
            }
            @media only screen and (max-width: 768px){
                .row{
                    max-width:420px;
                    width: 100%;
                }
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/encabezado.jspf" %>
        <%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet" %>

        <div class="container mt-4 mb-4 row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-1 row-cols-xl-1 row-cols-xxl-1 g-4 d-flex justify-content-center">
            <div class="input-box shadow p-3 mb-5 bg-body rounded">
                <form class="p-3" action="" method="">
                    <div class="input-field mt-5">
                        <input type="text" class="input"  name="nombre"/>
                        <label class="name">Nombre</label> 
                    </div>
                    <div class="input-field mt-5">
                        <input type="text" class="input" name="apellido"/>
                        <label class="name">Apellido</label>
                    </div>
                    <div class="input-field mt-5">
                        <input type="text" class="input" name="correo"/>
                        <label class="name">Correo</label>
                    </div>
                    <div class="input-field mt-5">
                        <input type="text" class="input" name="contraseña"/>
                        <label class="name">Contraseña</label>
                    </div>
                    <div class="input-field mt-5">
                        <input type="text" class="input" name="sexo"/>
                        <label class="name">Sexo</label>
                    </div>
                    <div class="d-flex justify-content-evenly">
                        <a class="btn btn-primary" href="Controlador?accion=AdministradorUsuarios">Regresar</a>
                        <input class="btn btn-success" type="submit" value="Guardar Usuario">
                    </div>
                </form>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/pie.jspf" %>
    </body>
</html>
<%
     Connection con;
     String url = "jdbc:mysql://localhost:3306/vrnaturista";
     String driver = "com.mysql.cj.jdbc.Driver";
     String user = "root";
     String clave = "";
     Class.forName(driver);
     con = DriverManager.getConnection(url, user, clave);

     PreparedStatement ps;
     String nombre,apellido,correo,contraseña,sexo;
      
     nombre = request.getParameter("nombre");
     apellido = request.getParameter("apellido");
     correo = request.getParameter("correo");
     contraseña = request.getParameter("contraseña");
     sexo = request.getParameter("sexo");
      
     if (nombre!=null && apellido!=null && correo!=null && contraseña!=null && sexo!=null){
       ps = con.prepareStatement("INSERT INTO usuarios (nombre,apellido,correo,contraseña,sexo) VALUES ('"+nombre+"','"+apellido+"','"+correo+"','"+contraseña+"','"+sexo+"')");
       ps.executeUpdate();
       response.sendRedirect("Controlador?accion=AdministradorUsuarios");
    }
%>