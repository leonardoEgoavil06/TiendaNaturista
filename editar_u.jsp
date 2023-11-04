<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Editar Usuario</title>
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
            .input-box .input-field .id{
                position: absolute;
                top: -10px;
                pointer-events: none;
                transition: .5s;
            }
            .input-field input:focus ~ .id
            {
                top: -10px;
                font-size: 13px;
            }
            .input-field input:valid ~ .id
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
        <%
             Connection con;
             String url = "jdbc:mysql://localhost:3306/vrnaturista";
             String driver = "com.mysql.cj.jdbc.Driver";
             String user = "root";
             String clave = "";
             Class.forName(driver);
             con = DriverManager.getConnection(url, user, clave);

             PreparedStatement ps;
             ResultSet rs;
             int id = Integer.parseInt(request.getParameter("id"));
               ps = con.prepareStatement("SELECT * FROM usuarios WHERE idUsuario="+id);
               rs = ps.executeQuery();
               
               while(rs.next()){
               
        %>
        <div class="container mt-4 mb-4 row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-1 row-cols-xl-1 row-cols-xxl-1 g-4 d-flex justify-content-center">
            <div class="input-box shadow p-3 mb-5 bg-body rounded">
                <form class="p-3" action="" method="">
                    <div class="input-field mt-5">
                        <input type="text" class="input"  name="id" value="<%= rs.getInt("idUsuario") %>" readonly=""/>
                        <label class="id">ID</label> 
                    </div>
                    <div class="input-field mt-5">
                        <input type="text" class="input"  name="nombre" value="<%= rs.getString("nombre") %>" />
                        <label class="id">Nombre</label> 
                    </div>
                    <div class="input-field mt-5">
                        <input type="text" class="input" name="apellido" value="<%= rs.getString("apellido") %>"/>
                        <label class="id">Apellido</label> 
                    </div>
                    <div class="input-field mt-5">
                        <input type="text" class="input" name="correo" value="<%= rs.getString("correo") %>"/>
                        <label class="id">Correo</label> 
                    </div>
                    <div class="input-field mt-5">
                        <input type="text" class="input" name="contraseña" value="<%= rs.getString("contraseña") %>"/>
                        <label class="id">Contraseña</label> 
                    </div>
                    <div class="d-flex justify-content-evenly">
                        <a class="btn btn-primary" href="Controlador?accion=AdministradorUsuarios">Regresar</a>
                        <input class="btn btn-success" type="submit" value="Guardar Usuario">
                    </div>
                </form>
                <% 
               }
                %>
            </div>
        </div>

        <%@include file="WEB-INF/jspf/pie.jspf" %>
    </body>
</html>
<%
    String nombre,apellido,correo,contraseña;
      
     nombre = request.getParameter("nombre");
     apellido = request.getParameter("apellido");
     correo = request.getParameter("correo");
     contraseña = request.getParameter("contraseña");
      
     if (nombre!=null && apellido!=null && correo!=null && contraseña!=null){
       ps = con.prepareStatement("UPDATE usuarios SET nombre='"+nombre+"', apellido='"+apellido+"' , correo='"+correo+"', contraseña='"+contraseña+"' WHERE idUsuario="+id);
       ps.executeUpdate();
       response.sendRedirect("Controlador?accion=AdministradorUsuarios");
    }
%>