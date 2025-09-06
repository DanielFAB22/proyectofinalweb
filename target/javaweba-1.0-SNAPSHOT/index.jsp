<%-- 
    Document   : index
    Created on : 7/08/2025, 4:43:27 p. m.
    Author     : Daniel Avila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/styles.css" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
        <title>SOLUCIONES MUSICALES</title>
    </head>
    <body>
        <header>
            <img src="assets/logo.png" alt="logo soluciones musicales" class="logo">

            <div class="iconos">
                <a href="jsp/carrito.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-basket" viewBox="0 0 16 16">
                    <path d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9zM1 7v1h14V7zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10m2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10m2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10m2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5m2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5"/>
                    </svg>
                </a>
                <a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
                    </svg>
                </a>

            </div>
            <div class="somos">
                <a href="jsp/somos.jsp"><h5>Quienes somos?</h5></a>
            </div>
        </header>
        <nav class="menu">
            <div class="btn-group">
                <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    GUITARRAS ELECTRICAS
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="jsp/catalogos/guitarras/fender.jsp">FENDER</a></li>
                    <li><a class="dropdown-item" href="jsp/catalogos/guitarras/gibson.jsp">GIBSON</a></li>
                    <li><a class="dropdown-item" href="jsp/catalogos/guitarras/schecter.jsp">SCHECTER</a></li>


                </ul>
            </div>

            <div class="btn-group">
                <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    BAJOS ELECTRICOS
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="jsp/catalogos/bajos/fender.jsp">FENDER</a></li>
                    <li><a class="dropdown-item" href="jsp/catalogos/bajos/ibanez.jsp">IBANEZ</a></li>
                    <li><a class="dropdown-item" href="jsp/catalogos/bajos/schecter.jsp">SCHECTER</a></li>


                </ul>
            </div>
        </nav>
        <div>
            <h1 class="fw-bold text-center p-3">DESTACADOS</h1>
        </div>
        <div id="carouselExampleCaptions" class="carousel slide">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="jsp/guitarras/schecteromen6.jsp"><img class="carrusel" src="assets/schecter.jpg"  alt="Schecter omen 6"></a>
                    <div class="carousel-caption  d-md-block">
                        <h5 class="titulo-carrusel">SCHECTER OMEN 6</h5>
                        <p class="subtitulo-carrusel">PERFECTA PARA METAL Y HARD ROCK!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <a href="jsp/bajos/fenderprecisionbass.jsp"><img class="carrusel" src="assets/fenderprecisionbass.jpg"  alt="Fender precision bass"></a>
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="titulo-carrusel">FENDER PRECISION BASS</h5>
                        <p class="subtitulo-carrusel">EL BAJO QUE EMPEZO TODO</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <a href="jsp/guitarras/lespaulp90.jsp"><img class="carrusel" src="assets/lespaul.jpg" class="d-block w-100" alt="Les paul"></a>
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="titulo-carrusel">GIBSON LES PAUL P90</h5>
                        <p class="subtitulo-carrusel">UN CLASICO</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <footer class="bg-dark text-light mt-5 p-4">
            <div class="container">
                <div class="row">

                    <div class="col-md-4">
                        <h5>SOLUCIONES MUSICALES</h5>
                        <p>Tu tienda de confianza en guitarras y bajos.</p>
                    </div>


                    <div class="col-md-4">
                        <h5>Contacto</h5>
                        <ul class="list-unstyled">
                            <li>+57 300 123 4567</li>
                            <li> contacto@solucionesmusicales.com</li>
                            <li> Neiva, Huila, Colombia</li>
                        </ul>
                    </div>


                    <div class="col-md-4">
                        <h5>Enlaces</h5>
                        <ul class="list-unstyled">
                            <li><a href="jsp/somos.jsp" class="text-light text-decoration-none">Quiénes somos</a></li>
                            <li><a href="#" class="text-light text-decoration-none">Guitarras</a></li>
                            <li><a href="#" class="text-light text-decoration-none">Bajos</a></li>
                            <li><a href="#" class="text-light text-decoration-none">Contacto</a></li>
                        </ul>
                    </div>
                </div>

                <hr class="border-light">
                <p class="text-center mb-0">&copy; 2025 Soluciones Musicales - Todos los derechos reservados</p>
            </div>
        </footer>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
    <script src="js/app.js"></script>

</html>
