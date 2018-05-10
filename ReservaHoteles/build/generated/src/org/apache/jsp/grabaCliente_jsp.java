package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class grabaCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Faster+One\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n");
      out.write("        <title>Add cliente - Reserva tu hotel</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            <header>\n");
      out.write("                <h1 id=\"rotulo\">HAZ TUS RESERVAS</h1>\n");
      out.write("                <p id=\"web\">ReservaHoteles.com</p>\n");
      out.write("            </header>\n");
      out.write("            <nav>\n");
      out.write("                <span><a href=\"inicio.jsp\">Página de Inicio</a></span>\n");
      out.write("                <span><a href=\"confirmacionSalir.jsp\">Cerrar Sesión</a></span>\n");
      out.write("            </nav>\n");
      out.write("            <section>\n");
      out.write("                ");

                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();

                  request.setCharacterEncoding("UTF-8");

                  // Comprueba la existencia del número de socio introducido
                  String consultaNumSocio = "SELECT * FROM cliente WHERE DniCliente LIKE '" + request.getParameter("DniCliente") + "'";

                  ResultSet numeroDeSocios = s.executeQuery(consultaNumSocio);
                  numeroDeSocios.last();

                  if (numeroDeSocios.getRow() != 0) {
                    response.sendRedirect("errorDNI.jsp");
                  } else {
                    String insercion = "INSERT INTO cliente (nombreCliente, apellidosCliente, telefonoCliente, sexoCliente, DniCliente, EmailCliente, ciudadCliente, paisCliente, cpCliente) VALUES ("
                            + "'" + request.getParameter("nombreCliente")
                            + "', '" + request.getParameter("apellidosCliente")
                            + "', '" + request.getParameter("telefonoCliente")
                            + "', '" + request.getParameter("sexoCliente")
                            + "', '" + request.getParameter("DniCliente") 
                            + "', '" + request.getParameter("EmailCliente")
                            + "', '" + request.getParameter("ciudadCliente") 
                            + "', '" + request.getParameter("paisCliente") 
                            + "', '" + request.getParameter("cpCliente")+ "')";
                    s.execute(insercion);
                  }
                  conexion.close();


                
      out.write("\n");
      out.write("                \n");
      out.write("                <h2 class=\"mensajeGrabaReserva\">El cliente se ha añadido correctamente</h2>\n");
      out.write("                <br>\n");
      out.write("                <a class=\"hacerloDeNuevo\" href=\"nuevoCliente.jsp\">Dar de alta otro cliente</a>\n");
      out.write("                <a class=\"aceptarNuevo\" href=\"listadoCliente.jsp\">Aceptar</a>\n");
      out.write("            </section>\n");
      out.write("\n");
      out.write("            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>\n");
      out.write("        </div><!-- Cierra el wrapper -->\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
