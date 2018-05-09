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
        <title>Modifica cliente - Reserva tu hotel</title>
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
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();

                  request.setCharacterEncoding("UTF-8");

                  String actualizacion = "UPDATE cliente SET "
                          + "nombreCliente='" + request.getParameter("nombreCliente")
                          + "', apellidosCliente='" + request.getParameter("apellidosCliente")
                          + "', telefonoCliente='" + request.getParameter("telefonoCliente")
                          + "', sexoCliente='" + request.getParameter("sexoCliente")
                          + "', DniCliente='" + request.getParameter("DniCliente")
                          + "', EmailCliente='" + request.getParameter("EmailCliente")
                          + "', ciudadCliente='" + request.getParameter("ciudadCliente")
                          + "', paisCliente='" + request.getParameter("paisCliente")
                          + "', cpCliente='" + request.getParameter("cpCliente")
                          + "' WHERE clienteID='" + request.getParameter("clienteID") + "'";
                  s.execute(actualizacion);
                  out.println("<h2 class=\"mensajeGrabaReserva\">");
                  out.println("El cliente se ha modificado correctamente. </h2>");

                  conexion.close();
                %>
                <br>
                <a class="hacerloDeNuevo" href="listadoCliente.jsp">Hacer otra modificación</a>
                <a class="aceptarNuevo" href="listadoCliente.jsp">Aceptar</a>

            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>