<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Faster+One" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Modifica Cliente - Reserva tu hotel</title>
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
                    <form method="post" action="grabaClienteModificado.jsp" class="formulario">
                    <h2 class="tituloFormulario">Modificar cliente</h2>
                    <div class="contenedorInputs">
                        <label>Nombre</label>
                        <input type="text" name="nombreCliente" value="<%= request.getParameter("nombreCliente") %>" required><br/>
                        <label>Apellidos</label>
                        <input type="text" name="apellidosCliente" value="<%= request.getParameter("apellidosCliente") %>" required><br/>
                        <label>Teléfono</label>
                        <input type="text" name="telefonoCliente" value="<%= request.getParameter("telefonoCliente") %>" required><br/>
                        <label>Sexo</label>
                        <%
                            ArrayList<String> sexo = new ArrayList();
                            sexo.add("Mujer");
                            sexo.add("Hombre");
                            sexo.add("Otro");
                        %>
                        <select name="sexoCliente" required>
                            <option value="<%= request.getParameter("sexoCliente") %>"></option>
                            <%
                              for (String n : sexo) {
                                out.println("<option>" + n + "</option>");
                              }
                            %>  
                        </select><br/>
                        <label>DNI</label>
                        <input type="text" maxlength="9" name="DniCliente" value="<%= request.getParameter("DniCliente") %>" required><br/>
                        <label>Email</label>
                        <input type="text" name="EmailCliente" value="<%= request.getParameter("EmailCliente") %>" required><br/>
                        <label>Ciudad</label>
                        <%
                            ArrayList<String> ciudad = new ArrayList();
                            ciudad.add("Alicante");
                            ciudad.add("Almería");
                            ciudad.add("Asturias");
                            ciudad.add("Barcelona");
                            ciudad.add("Cádiz");
                            ciudad.add("Ciudad Real");
                            ciudad.add("Córdoba");
                            ciudad.add("Granada");
                            ciudad.add("Guadalajara");
                            ciudad.add("Huelva");
                            ciudad.add("Jaén");
                            ciudad.add("León");
                            ciudad.add("Lugo");
                            ciudad.add("Madrid");
                            ciudad.add("Málaga");
                            ciudad.add("Navarra");
                            ciudad.add("Orense");
                            ciudad.add("Pontevedra");
                            ciudad.add("Salamanca");
                            ciudad.add("Sevilla");
                            ciudad.add("Soria");
                            ciudad.add("Tenerife");
                            ciudad.add("Toledo");
                            ciudad.add("Valencia");
                            ciudad.add("Valladolid");
                            ciudad.add("Zamora");
                            ciudad.add("Zaragoza");
                            
                        %>
                        <select name="ciudadCliente" required>
                            <option value="<%= request.getParameter("ciudadCliente") %>"></option>
                            <%
                              for (String n : ciudad) {
                                out.println("<option>" + n + "</option>");
                              }
                             %>  
                        </select><br/>
                        <label>País</label>
                        <%
                            ArrayList<String> pais = new ArrayList();
                            pais.add("Alemania");
                            pais.add("Andorra");
                            pais.add("Argelia");
                            pais.add("Argentina");
                            pais.add("Bahamas");
                            pais.add("Bélgica");
                            pais.add("Bielorusia");
                            pais.add("Bulgaria");
                            pais.add("Canadá");
                            pais.add("China");
                            pais.add("Colombia");
                            pais.add("Congo");
                            pais.add("Costa Rica");
                            pais.add("Dinamarca");
                            pais.add("Eslovaquia");
                            pais.add("España");
                            pais.add("Grecia");
                            pais.add("Guatemala");
                            pais.add("Haití");
                            pais.add("Honduras");
                            pais.add("India");
                            pais.add("Irlanda");
                            pais.add("Italia");
                            pais.add("Japón");
                            pais.add("Jordania");
                            pais.add("Kenia");
                            pais.add("Letonia");
                            pais.add("Macedonia");
                            pais.add("Maldivas");
                            pais.add("México");
                            pais.add("Mónaco");
                            pais.add("Nicaragua");
                            pais.add("Noruega");
                            pais.add("Palestina");
                            pais.add("Panamá");
                            pais.add("Portugal");
                            pais.add("Rumanía");
                            pais.add("Rusia");
                            pais.add("Senegal");
                            pais.add("Singapur");
                            pais.add("Suiza");
                            pais.add("Tanzania");
                            pais.add("Tailandia");
                            pais.add("Ucrania");
                            pais.add("Uruguay");
                            pais.add("Venezuela");
                            pais.add("Vietnam");
                            pais.add("Yemen");
                            pais.add("Zimbabue");
                        %>
                        <select name="paisCliente" required>
                            <option value="<%= request.getParameter("paisCliente") %>"></option>
                            <%
                              for (String n : pais) {
                                out.println("<option>" + n + "</option>");
                              }
                             %>  
                        </select><br/>
                        <label>Código Postal</label>
                        <input type="text" name="cpCliente" value="<%= request.getParameter("cpCliente") %>" required><br/>
                        <input class="botonFormulario" type="submit" value="Modificar">
                        
                        <input type="hidden" name="clienteID" value="<%=request.getParameter("clienteID")%>"/>
                    </div>
                </form>
                </div>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
