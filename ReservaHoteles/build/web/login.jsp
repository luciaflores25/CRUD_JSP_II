<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login - Reserva Hoteles</title>
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
                <span></span>
            </nav>

            <section>
                <%
                    HashMap<String, String> login = new HashMap();
                    login.put("admin", "admin");
                    login.put("user", "user");
                    login.put("usuario", "usuario");
                    login.put("luciaflores", "12345");
                    String nombre = request.getParameter("usuario");
                    String pass = request.getParameter("pass");
                    if (login.containsKey(nombre)) {
                      if (login.get(nombre).equals(pass)) {
                        session.setAttribute("nombre", nombre);
                        response.sendRedirect("inicio.jsp");
                      }
                      
                    } else {
                      out.println("<h2 id = 'errorContraseña'>Usuario o contraseña incorrectos</h2>");
                      out.println("<a id = 'btnVolver' href='index.jsp'>Volver</button></a>");
                    }
                  %>
                  <div id="fondoLogin">
                      
                  </div>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div>
    </body>
</html>
