<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Página principal - Reserva Hoteles</title>
        <link href="https://fonts.googleapis.com/css?family=Faster+One" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <meta charset="utf-8">
    </head>
    <body>
        <div id="wrapper">
            <header>
                <h1 id="rotulo">HAZ TUS RESERVAS</h1>
                <p id="web">ReservaHoteles.com</p>
            </header>

            <nav>
                <span><a href="inicio.jsp">Página de Inicio</a></span>
                <span><a href="confirmacionSalir.jsp">Cerrar Sesión</a></span>
            </nav>

            <section>

                <h2 id="tituloOpciones">Elige la acción que quieres realizar:</h2>

                <table class="tableInicio">
                    <tr class="trInicio">
                        <td class="icono">
                            <a href="nuevoCliente.jsp">
                                <img src="images/addCliente.png">
                            </a>
                        </td>
                        <td class="icono">
                            <a href="nuevoHotel.jsp">
                                <img src="images/addHotel.png">
                            </a>
                        </td>
                        <td class="icono">
                            <a href="nuevaReserva.jsp">
                                <img src="images/addReserva.png">
                            </a>
                        </td>
                    </tr>
                    <tr class="trInicio">
                        <td class="letras"><a href="nuevoCliente.jsp">Add Cliente</a></td>
                        <td class="letras"><a href="nuevoHotel.jsp">Add Hotel</a></td>
                        <td class="letras"><a href="nuevaReserva.jsp">Add Reserva</a></td>
                    </tr>
                    <tr class="trInicio">
                        <td class="icono">
                            <a href="listadoCliente.jsp">
                                <img src="images/listadoClientes.png">
                            </a>
                        </td>
                        <td class="icono">
                            <a href="listadoHoteles.jsp">
                                <img src="images/listadoHoteles.png">
                            </a>
                        </td>
                        <td class="icono">
                            <a href="listadoReservas.jsp">
                                <img src="images/listadoReservas.png">
                            </a>
                        </td>
                    </tr>
                    <tr class="trInicio">
                        <td class="letras"><a href="listadoCliente.jsp">Lista Clientes</a></td>
                        <td class="letras"><a href="listadoHoteles.jsp">Lista Hoteles</a></td>
                        <td class="letras"><a href="listadoReservas.jsp">Lista Reservas</a></td>
                    </tr>
                </table>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div>
    </body>
</html>
