<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Itemcarrito" %>

<html>
    <head>
        <meta charset="UTF-8">
            <title>Mi Carrito</title>
            <link href="../css/styles.css" rel="stylesheet" type="text/css">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
                    </head>
                    <body>
                        <header>
                            <a href="../index.jsp"><img src="../assets/logo.png" alt="logo soluciones musicales" class="logo"></a>

                            <div class="iconos">
                                <a href="#">
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
                                <a href="#"><h5>Quienes somos?</h5></a>
                            </div>
                        </header>
                        <nav class="menu">
                            <div class="btn-group">
                                <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    GUITARRAS ELECTRICAS
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="catalogos/guitarras/fender.jsp">FENDER</a></li>
                                    <li><a class="dropdown-item" href="catalogos/guitarras/gibson.jsp">GIBSON</a></li>
                                    <li><a class="dropdown-item" href="catalogos/guitarras/schecter.jsp">SCHECTER</a></li>


                                </ul>
                            </div>

                            <div class="btn-group">
                                <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    BAJOS ELECTRICOS
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="catalogos/bajos/fender.jsp">FENDER</a></li>
                                    <li><a class="dropdown-item" href="catalogos/bajos/ibanez.jsp">IBANEZ</a></li>
                                    <li><a class="dropdown-item" href="catalogos/bajos/schecter.jsp">SCHECTER</a></li>


                                </ul>
                            </div>
                        </nav>
                        <h1>Mi Carrito</h1>

                        <table border="1" class="table table-striped">
                            <tr>
                                <th>Producto</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>Total</th>
                            </tr>

                            <%
                                List<Itemcarrito> items = (List<Itemcarrito>) request.getAttribute("items");
                                double totalGeneral = 0;
                                if (items != null) {
                                    for (Itemcarrito item : items) {
                                        double total = item.getPrecio() * item.getCantidad();
                                        totalGeneral += total;
                            %>
                            <tr>
                                <td><%= item.getNombre() %></td>
                                <td>$<%= item.getPrecio() %></td>
                                <td><%= item.getCantidad() %></td>
                                <td>$<%= total %></td>
                            </tr>
                            <%      } // fin for
                                } // fin if
                            %>

                            <tr>
                                <td colspan="3"><b>Total General</b></td>
                                <td><b>$<%= totalGeneral %></b></td>
                            </tr>
                        </table>
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
