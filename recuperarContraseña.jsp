<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <title>Recuperar contraseña</title>
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
                width:  900px;
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
                width: 700px;
                box-sizing: border-box;
            }
            img{
                width: 35px;
                position: absolute;
                top: 30px;
                left: 30px;
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
            body {
                background-color: #eee;
            }

            .btn {
                font-size: 13px
            }

            .form-control:focus {
                color: #495057;
                border-color: #76b7e9;
                outline: 0;
                box-shadow: 0 0 0 0px #28a745
            }
            .btns{
                flex-direction: row;
            }
            .log a:hover{
                color: white;
            }
            .reg{
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 0 7px;
                color: black;
                text-decoration: none;
            }
        </style>
    </head>
    <body> 
        <div class="wrapper">
            <div class="container main">
                <div class="row">
                    <div class="col-md-12 right">
                        <div class="input-box">
                            <header><h2>¿Olvidaste tu contraseña?</h2></header>
                            <p class="pt-1">Cambie su contraseña en tres sencillos pasos. Esto te ayudara para asegurar su contraseña!</p>
                            <ol class="list-unstyled">
                                <li class="p-1"><span class="text-primary text-medium">1. </span>Introduzca su dirección de correo electrónico a continuación.</li>
                                <li class="p-1"><span class="text-primary text-medium">2. </span>Nuestro sistema te enviará un código de verificación a tu correo electrónico.</li>
                                <li class="p-1"><span class="text-primary text-medium">3. </span>Ingrese el código de verificación en la página siguiente.</li>
                            </ol>
                            <form class="shadow rounded mt-4" action="forgotPassword" method="POST">
                                <div class="p-3">
                                    <div class="input-field">
                                        <input class="input" type="text" name="correo" id="email-for-pass" required="">
                                        <label for="email-for-pass">Introduce tu dirección de correo electrónico</label>
                                        <small class="form-text text-muted">Ingrese la dirección de correo electrónico registrada. Luego enviaremos un código de veificación por correo electrónico a esta dirección.</small>
                                    </div>
                                </div>
                                <div class="input-field p-3 d-flex justify-content-evenly btns">
                                    <div>
                                        <button class="submit" type="submit">Obtener nueva contraseña</button>
                                    </div>
                                    <div>    
                                        <a class="submit reg" href="login.jsp">Regresar al inicio sesión</a>
                                    </div>
                                </div>
                            </form>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>