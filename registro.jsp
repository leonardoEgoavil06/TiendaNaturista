<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro</title>
        <%@include file="WEB-INF/jspf/enlaces.jspf" %>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

            *{
                font-family: 'Poppins', sans-serif;
            }
            .wrapper{
                background: #ececec;
                padding: 0 20px 0 20px;
            }
            .main{
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
            }
            .side-image{
                background-image: url("images/2.jpg");
                background-position: center;
                background-size: cover;
                background-repeat: no-repeat;
                border-radius: 10px 0 0 10px;
                position: relative;
            }
            .row{
                width:900px;
                height:550px;
                border-radius: 10px;
                background: #fff;
                padding: 0px;
                box-shadow: 5px 5px 10px 1px rgba(0,0,0,0.2);
            }
            .text{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }
            .text p{
                color: #40414a;
                font-size: 20px;
            }
            i{
                font-weight: 400;
                font-size: 15px;
            }
            .right{
                display: flex;
                justify-content: center;
                align-items: center;
                position: relative;
            }
            .input-box{
                width: 650px;
                box-sizing: border-box;
            }
            .input-box header{
                font-weight: 700;
                text-align: center;
                margin-bottom: 45px;
            }
            .input-field{
                display: flex;
                flex-direction: column;
                position: relative;
                padding: 0 10px;
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
            .input-content{
                display: flex;
                flex-direction: row;
            }
            .input-container{
                width: 260px;
                height: 90px;
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
            .input-box .input-field .name{
                position: absolute;
                top: 10px;
                left: 10px;
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
            .input-box .input-field .lastname{
                position: absolute;
                top: 10px;
                left: 381px;
                pointer-events: none;
                transition: .5s;
            }
            .input-field input:focus ~ .lastname
            {
                top: -10px;
                font-size: 13px;
            }
            .input-field input:valid ~ .lastname
            {
                top: -10px;
                font-size: 13px;
                color: #5d5076;
            }
            .input-box .input-field .sexo{
                position: absolute;
                top: -20px;
                left: 381px;
                pointer-events: none;
                transition: .5s;
            }
            .input-field input:focus ~ .sexo
            {
                top: -10px;
                font-size: 13px;
            }
            .input-field input:valid ~ .sexo
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
                .row{
                    max-width:420px;
                    width: 100%;
                }
            }
        </style>
    </head>
    <body>
        <div class="wrapper">
            <div class="container main">
                <div class="row">
                    <div class="col-md-12 right">
                        <div class="input-box">
                            <header>Registro</header>
                            <form action="Controlador?accion=Registrar" method="post">
                                <div class="input-field">
                                    <div class="input-content d-flex justify-content-between">
                                        <div class="input-container">
                                            <input type="text" class="input" name="nombre" required="">
                                            <label class="name">Nombre</label> 
                                        </div>
                                        <div class="input-container">
                                            <input type="text" class="input" name="apellido" required="">
                                            <label class="lastname">Apellido</label> 
                                        </div>
                                    </div>
                                </div> 
                                <div class="input-field">
                                    <div class="input-content d-flex justify-content-between">
                                        <div class="input-container">
                                            <input type="email" class="input" name="correo" required="">
                                            <label class="name">Correo</label> 
                                        </div>
                                        <div>
                                            <label class="sexo">Sexo</label> 
                                            <select class="form-select"  name="sexo">
                                                <option value="Hombre">Hombre</option>
                                                <option value="Mujer">Mujer</option>
                                            </select>
                                        </div>
                                    </div>
                                </div> 
                                <div class="input-field">
                                    <div class="input-content d-flex justify-content-between">
                                        <div class="input-container">
                                            <input type="password" class="input" name="contraseña" required="">
                                            <label>Contraseña</label> 
                                        </div>
                                        <div class="input-container">
                                            <input type="password" class="input" name="contraseña" required="">
                                            <label class="lastname">Repetir contraseña</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="input-field">
                                    <div class="d-flex justify-content-center">
                                        <input type="submit" class="submit col-6" name="btnRegistrar" value="Registrar">
                                    </div>
                                </div> 
                            </form>
                            <div class="signin">
                                <span>¿Ya tienes una cuenta? <a href="login.jsp">Inicia sesión aquí</a></span>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
