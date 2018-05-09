<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Faster+One" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Modifica Hotel - Reserva tu hotel</title>
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
                <% request.setCharacterEncoding("UTF-8");%>
                <div>
                    <form method="post" action="grabaHotelModificado.jsp" class="formulario">
                    <h2 class="tituloFormulario">Modificar Hotel</h2>
                    <div class="contenedorInputs">
                        <label>Nombre</label>
                        <input type="text" name="nomnreHotel" value="<%= request.getParameter("nombreHotel") %>" required><br/>
                        <label>Ciudad</label>
                        <input type="text" name="ciudadHotel" value="<%= request.getParameter("ciudadHotel") %>" required><br/>
                        <label>País</label>
                        <input type="text" name="paisHotel" value="<%= request.getParameter("paisHotel") %>" required><br/>
                        <label>Nº Estrellas</label>
                        <input type="text" maxlength="1" name="numeroEstrellas" value="<%= request.getParameter("numeroEstrellas") %>" required><br/>
                        <input class="botonFormulario" type="submit" value="Modificar">

                        
                        <input type="hidden" name="hotelID" value="<%=request.getParameter("hotelID")%>"/>
                    </div>
                </form>
                </div>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
