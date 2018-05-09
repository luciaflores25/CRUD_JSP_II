<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Faster+One" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Add Hotel - Reserva tu hotel</title>
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
                <form method="post" action="grabaHotel.jsp" class="formulario">
                    <h2 class="tituloFormulario">Añadir nuevo Hotel</h2>
                    <div class="contenedorInputs">
                        <label>Nombre</label>
                        <input type="text" name="nombreHotel" required><br/>
                        <label>Ciudad</label>
                        <input type="text" name="ciudadHotel" required><br/>
                        <label>País</label>
                        <input type="text" name="paisHotel" maxlength="9" required><br/>
                        <label>Nº Estrellas</label>
                        <input type="number" min="1" max="5" name="numeroEstrellas" required><br/>
                        <input class="botonFormulario" type="submit" value="Añadir">
                    </div>
                </form>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
