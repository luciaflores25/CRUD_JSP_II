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
        <title>Listado clientes - Reserva tu hotel</title>
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
                <h2 class="tituloListado">Listado de clientes</h2>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();

                  ResultSet listado = s.executeQuery("SELECT * FROM cliente");
                %>
                <div id="estiloTablaCliente">
                    <table class="tableListado">
                        <thead class="theadListado">
                            <tr class="trListado">
                                <th class="thListado">Nombre</th><th class="thListado">Apellidos</th><th class="thListado">Teléfono</th><th class="thListado">DNI</th><th class="thListado">Email</th><th class="thListado"></th><th class="thListado"></th>
                            </tr>
                        </thead>

                        <%
                          while (listado.next()) {
                            out.println("<tr class='trListado'><td class='tdListado'>");
                            out.println(listado.getString("nombreCliente") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("apellidosCliente") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("telefonoCliente") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("DniCliente") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("EmailCliente") + "</td>");
                        %>

                        <td class="tdListado">
                            <form method="get" action="modificaCliente.jsp">
                                <input type="hidden" name="nombreCliente" value="<%=listado.getString("nombreCliente")%>">
                                <input type="hidden" name="apellidosCliente" value="<%=listado.getString("apellidosCliente")%>">
                                <input type="hidden" name="sexoCliente" value="<%=listado.getString("sexoCliente")%>">
                                <input type="hidden" name="DniCliente" value="<%=listado.getString("DniCliente")%>">
                                <input type="hidden" name="EmailCliente" value="<%=listado.getString("EmailCliente")%>">
                                <input type="hidden" name="ciudadCliente" value="<%=listado.getString("ciudadCliente")%>">
                                <input type="hidden" name="paisCliente" value="<%=listado.getString("paisCliente")%>">
                                <input type="hidden" name="cpCliente" value="<%=listado.getString("cpCliente")%>">
                                <button type="submit" class="botonModificar">Modificar</button>
                                <input type="hidden" name="clienteID" value="<%=listado.getString("clienteID")%>"/>                          

                            </form>
                        </td>



                        <td class="tdListado">
                            <form method="get" action="confirmacionBorradoCliente.jsp">
                                <input type="hidden" name="clienteID" value="<%=listado.getString("clienteID")%>"/>
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
