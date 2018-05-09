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
        <title>Add reserva - Reserva tu hotel</title>
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
                %>
                
                <form method="post" action="grabaReserva.jsp" class="formulario">
                    <h2 class="tituloFormulario">Nueva reserva</h2>
                    <div class="contenedorInputs">
                        <label>Hotel</label>
                        <select type="select" name="hotelID" required>
                            <option value=""></option>
                            <%
                              ResultSet listaHoteles = s.executeQuery("SELECT hotelID, nombreHotel, ciudadHotel, numeroEstrellas FROM hotel order by hotelID");
                              while (listaHoteles.next()) {
                                String hotelID = listaHoteles.getString("hotelID");
                                String nombreHotel = listaHoteles.getString("nombreHotel");
                                String ciudadHotel = listaHoteles.getString("ciudadHotel");
                                String numeroEstrellas = listaHoteles.getString("numeroEstrellas");
                                out.println("<option value='" + hotelID + "'> " + nombreHotel + ", " + ciudadHotel + ", " + numeroEstrellas + "</option>");
                              }
                            %>
                        </select>
                        <br/>
                        <label>Cliente</label>
                        <select type="select" name="clienteID" required>
                            <option value=""></option>
                            <%
                              ResultSet listaClientes = s.executeQuery("SELECT ClienteID, nombreCliente, apellidosCliente FROM cliente order by ClienteID");
                              while (listaClientes.next()) {
                                String clienteID = listaClientes.getString("ClienteID");
                                String nombreCliente = listaClientes.getString("nombreCliente");
                                String apellidosCliente = listaClientes.getString("apellidosCliente");
                                out.println("<option value='" + clienteID + "'> " + nombreCliente + " " + apellidosCliente + "</option>");
                              }
                            %>
                        </select>
                        <br/>
                        <input class="botonFormulario" type="submit" value="Añadir">
                    </div>
                </form>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>