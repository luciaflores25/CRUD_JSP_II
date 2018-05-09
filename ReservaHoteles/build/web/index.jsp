<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Scanner"%>
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
                    <form method="post" action="login.jsp" class="formulario">
                        <h2 class="tituloFormulario">Login</h2>
                        <div class="contenedorInputs">
                            <label>Usuario</label>
                            <input name="usuario"/><br/>
                            <label>Contraseña</label>
                            <input type="password" name="pass"/><br/>
                            <input class="botonFormulario" type="submit" value="Entrar"/>
                        </div>
                    </form>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div>
    </body>
</html>
