<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>VR Naturista</title>
        <%@include file="WEB-INF/jspf/enlaces.jspf" %>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

            *{
                font-family: 'Poppins', sans-serif;
            }


            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;

            }

            .banner{
                width: 100%;
                height: 600px;
                animation: banner 10s infinite linear alternate;
                background-size: 100% 100%;
                position: relative;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            @keyframes banner {
                0%, 20%{
                    background-image: url(imagenes/banner1.jpg);
                }

                25%, 45%{
                    background-image: url(imagenes/banner2.jpg);
                }

                50%, 70%{
                    background-image: url(imagenes/banner3.jpg);
                }

                70%, 100%{
                    background-image: url(imagenes/banner4.jpg);
                }
            }

            .capa{
                width: 100%;
                height: 100%;
                position: absolute;
                top: 0;
                left: 0;
                background: rgba(0, 0,0,0.6);
            }


            .info{
                z-index: 1;
                width: 100%;
                max-width: 550px;
                text-align: center;
            }

            .info h1{
                color: #fff;
                font-size: 45px;
                margin-bottom: 20px;
                letter-spacing: 1px;
            }

            .info p{
                color: #c7c7c7;
                line-height: 1.7;
                margin-bottom: 30px;
            }

            .info a{
                color: #fff;
                text-decoration: none;
                background: #3088e0;
                padding: 16px 37px;
                display: inline-block;
                border-radius: 50px;
            }

            .h2{
                font-size: 160%;
            }
            .img-rounded {
                border-radius: 6px;
            }
            .img-responsive, .thumbnail > img, .thumbnail a > img, .carousel-inner > .item > img, .carousel-inner > .item > a > img {
                display: block;
                max-width: 100%;
                height: auto;
            }

            img {
                vertical-align: middle;
            }
            img {
                border: 0;
            }
            img {
                border-style: none;
            }
            * {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }


            body {
                position: relative;
                width: 100%;
                height: 100%;
                padding: 0;
                margin: 0;
                font-family: 'RobotoCondensedRegular';
                font-size: 16px;
            }
            body {
                font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
                font-size: 14px;
                line-height: 1.42857143;
                color: #333;
                background-color: #fff;
            }

            .cs{
                display: flex;
                flex-direction: column;
            }
            .log{
                flex-wrap: wrap;
                align-items: center;
            }
            .sede{
                display: flex;
                flex-direction: column;
                gap: 1rem;
            }
            .toast{
                position: fixed;
                z-index: 10;
                top: 43px;
                left: 20px;
            }
            .toast-body{
                font-weight: 700;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/encabezado.jspf" %>
        ${messageCompra}
        ${messageCompra2}
        <div class="banner">
            <div class="capa"></div>
            <div class="info">
                <h1>BIENVENIDOS A VR NATURISTA</h1>
                <p>Somos VR NATURISTA, una empresa comprometida en crear productos seguros, efectivos y de alta calidad para proteger la salud y el bienestar de 
                    nuestros clientes. Ofrecemos información educativa y asesoría para ayudar a los usuarios a aprender sobre productos naturales y hacer compras 
                    que se adapten a sus necesidades de salud y bienestar. Contamos con un equipo de profesionales altamente calificados y apasionados que se esfuerzan 
                    por brindar el mejor servicio posible.</p>
                <a href="nosotros.jsp">Leer mas</a>
            </div>
        </div>
        <div class="container mt-5">
            <div class="row row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-2 log p-5 d-flex justify-content-center g-4">
                <div class="cs col-12">
                    <div class="mt-3">
                        <h1>VR Naturista</h1>
                    </div>
                    <div>
                        <h4>26 años de Experiencia</h4>
                    </div>
                    <label style="line-height: 28px;">La VR Industria Naturista es una empresa fundada el 3 de Junio de 1992 que se dedica a la fabricación, distribución y venta de suplementos 
                        alimenticios, alimentos procesados y medicina natural. Actualmente posee más de 30 años de experiencia en el mercado, manteniendo siempre la 
                        política de elaborar productos de calidad con insumos 100% naturales para sus consumidores.</label>
                    <div>
                    </div>
                </div>
                <div class="img d-flex justify-content-end">
                    <img class="d-block w-100 img-fluid" src="imagenes/bg1.jpg" alt=""/>
                </div>
            </div>
        </div>
        <section class="full-width formated-section"> <br>
            <h2 class="text-center font-oswald">NUESTRAS SUCURSALES</h2><br>
            <div class="container mb-5 mt-4">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 sede">
                        <img src="imagenes/Store.jpg " alt="Sucursal" class="img-responsive img-rounded">
                        <h3 class="text-center">LIMA ESTE</h3>
                        <p class="text-center">
                            Jr Los Amelos 1817 Urb. San Hilarion - San Juan de Lurigancho.
                        </p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 sede">
                        <img src="imagenes/Store.jpg" alt="Sucursal" class="img-responsive img-rounded">
                        <h3 class="text-center">LIMA SUR</h3>
                        <p class="text-center">
                            Av.Mariano Pastor Sevilla 459 - San Juan de Miraflores
                        </p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 sede">
                        <img src="imagenes/Store.jpg" alt="Sucursal" class="img-responsive img-rounded">
                        <h3 class="text-center">LIMA CENTRO</h3>
                        <p class="text-center">
                            Av. Petit Thouars 2838 - San Isidro
                        </p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 sede">
                        <img src="imagenes/Store.jpg" alt="Sucursal" class="img-responsive img-rounded">
                        <h3 class="text-center">ICA</h3>
                        <p class="text-center">
                            Av. Victorio Gotuzzo 132 - Distrito la Tinguiña- Ica
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="WEB-INF/jspf/pie.jspf" %>
    </body>
</html>
