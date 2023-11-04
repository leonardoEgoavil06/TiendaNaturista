<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Eliminar Usuario</title>
        <%@include file="WEB-INF/jspf/enlaces.jspf" %>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

            *{
                font-family: 'Poppins', sans-serif;
            }
        </style>
    </head>
    <body>
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
             int id = Integer.parseInt(request.getParameter("id"));
               ps = con.prepareStatement("DELETE FROM usuarios WHERE idUsuario="+id);
               ps.executeUpdate();
               response.sendRedirect("Controlador?accion=AdministradorUsuarios");
        %>
    </body>
</html>