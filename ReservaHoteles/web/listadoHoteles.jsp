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
        <title>Listado hoteles - Reserva tu hotel</title>
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
                <h2 class="tituloListado">Listado de Hoteles</h2>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();

                  ResultSet listado = s.executeQuery("SELECT * FROM hotel");
                %>
                <div id="estiloTablaCliente">
                    <table class="tableListado">
                        <thead class="theadListado">
                            <tr class="trListado">
                                <th class="thListado">Nombre</th><th class="thListado">Ciudad</th><th class="thListado">País</th><th class="thListado">Nº Estrellas</th><th class="thListado"></th><th class="thListado"></th>
                            </tr>
                        </thead>

                        <%
                          while (listado.next()) {
                            out.println("<tr class='trListado'><td class='tdListado'>");
                            out.println(listado.getString("nombreHotel") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("ciudadHotel") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("PaisHotel") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("numeroEstrellas") + "</td>");
                        %>

                        <td class="tdListado">
                            <form method="get" action="modificaHotel.jsp">
                                <input type="hidden" name="nombreHotel" value="<%=listado.getString("nombreHotel")%>">
                                <input type="hidden" name="ciudadHotel" value="<%=listado.getString("ciudadHotel")%>">
                                <input type="hidden" name="paisHotel" value="<%=listado.getString("paisHotel")%>">
                                <input type="hidden" name="numeroEstrellas" value="<%=listado.getString("numeroEstrellas")%>">
                                <button type="submit" class="botonModificar">Modificar</button>
                                <input type="hidden" name="clienteID" value="<%=listado.getString("hotelID")%>"/>                          

                            </form>
                        </td>



                        <td class="tdListado">
                            <form method="get" action="confirmacionBorradoHotel.jsp">
                                <input type="hidden" name="hotelID" value="<%=listado.getString("hotelID")%>"/>
                                <button type="submit" class="botonBorrar">Borrar</button>
                            </form>
                        </td></tr>
                        <%
                          }

                          conexion.close();
                        %>
                    </table>
                </div>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
