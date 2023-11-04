<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cita</title>
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
        <%@include file="WEB-INF/jspf/encabezado.jspf" %>
        <div class="container mt-4 mb-4">
            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Agendar Cita</li>
                </ol>
            </nav>
        </div>
        <div class="container mt-4 mb-4 row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-1 row-cols-xl-1 row-cols-xxl-1 g-4 d-flex justify-content-center">
            <div class="input-box shadow p-3 mb-5 bg-body rounded">
                <form class="p-3" action="Controlador?accion=GenerarCita" method="post">
                    <div class="input-field mt-5">
                        <input type="email" class="input" name="correo" value="<%= session.getAttribute("correoUsuario") %>" required="">
                        <label class="name">Correo electrónico</label> 
                    </div>
                    <div class="input-field">
                        <input type="text" class="input" name="nombre" value="<%= session.getAttribute("nombreUsuario") %> <%= session.getAttribute("apellidoUsuario") %>" required="">
                        <label class="name">Persona para quien desea hacer la cita</label> 
                    </div>
                    <div class="input-container">
                        <label class="mb-3">Fecha y hora de la cita <i class="bi bi-calendar-date"></i></label>
                        <input class="form-control mb-4" type="datetime-local" placeholder="Seleccionar la fecha y hora de la cita" name="fecha" required="">
                    </div>
                    <div class="input-field">
                        <div class="d-flex justify-content-center">
                            <input type="submit" name="btnGenerarCita" class="submit col-4" value="Solicitar cita">
                        </div>
                    </div> 
                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
        <script>
            config = {
                dateFormat: "m-d-Y H:i",
                minDate: "08-14-2023",
                maxDate: "12-23-2023",
                enableTime: true,
                minTime: "09:00",
                maxTime: "17:30",
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
