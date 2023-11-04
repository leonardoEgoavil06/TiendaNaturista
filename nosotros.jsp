
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Nosotros</title>
        <%@include file="WEB-INF/jspf/enlaces.jspf" %>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

            *{
                font-family: 'Poppins', sans-serif;
            }



            .nosotros h1 {
                font-size: 35px;
                color: #333;
            }

            .nosotros p {
                font-size: 16px;
                color: #666;
            }

            .nosotros h2 {
                color: #333;
                margin-top: 20px;

                .container2 h1{
                    font-size: 20%;
                }
            }
            * {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
            }





            .animated-line {
                color: #ff0468;
                margin: 10px 30px;
                background-image: linear-gradient(90deg, #62aeff, #ff0468, #af4ffe);
                text-decoration: none;
                font-weight: bold;
                cursor: pointer;
                background-repeat: no-repeat;
                background-size: 0% 2px;
                background-position: left bottom;
                transition: background-size 700ms ease-in-out;
            }

            .animated-line:hover {
                background-size: 100% 2px;
            }

            h1.animated-line {
                display: inline;
            }

            .img-fluid{
                width: 100%;
            }
            .lt{
                font-size: 30px;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/encabezado.jspf" %>

        <img class="img-fluid" src="imagenes/bn1.png" alt=""/>
        <div class="conatiner-fluid p-5">
            <div class="row row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-1 row-cols-xl-2 log p-5 d-flex justify-content-center g-4">
                <div class="cs col-12">
                    <div class="mt-3">
                        <section class="nosotros">
                            <div class="container2">
                                <h1 class="animated-line lt">Quiénes Somos</h1>
                                <p style="text-align: justify"></p>

                                <h2 class="animated-line lt">Nuestra Visión</h2>
                                <p style="text-align: justify">Nuestra visión: Ser una empresa líder en el cuidado y bienestar de nuestros consumidores, a través de la oferta de productos innovadores con insumos 100% naturales.</p>

                                <h2 class="animated-line lt">Nuestra Misión</h2>
                                <p style="text-align: justify">Nuestra misión:Trabajar en la elaboración de productos seguros, eficaces y de calidad, para contribuir a salvaguardar la salud y el bienestar de nuestros consumidores.</p><!-- comment -->

                                <h2 class="animated-line lt">Nuestro entorno</h2>
                                <p style="text-align: justify"> La empresa opera en un entorno con creciente demanda de productos naturistas debido a la tendencia hacia la salud y el bienestar. Aunque la falta de información y regulaciones sólidas es un desafío, nuestro enfoque en recomendaciones personalizadas y educación se adapta a las cambiantes necesidades del mercado.</p>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
                    <%@include file="WEB-INF/jspf/pie.jspf" %>

                    </body>
                    </html>
