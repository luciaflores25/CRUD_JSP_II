package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class nuevoHotel_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Faster+One\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n");
      out.write("        <title>Add Hotel - Reserva tu hotel</title>\n");
      out.write("    </head>\n");
      out.write("\n");
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
      out.write("                <form method=\"post\" action=\"grabaHotel.jsp\" class=\"formulario\">\n");
      out.write("                    <h2 class=\"tituloFormulario\">Añadir nuevo Hotel</h2>\n");
      out.write("                    <div class=\"contenedorInputs\">\n");
      out.write("                        <label>Nombre</label>\n");
      out.write("                        <input type=\"text\" name=\"nombreHotel\" required><br/>\n");
      out.write("                        <label>Ciudad</label>\n");
      out.write("                        <input type=\"text\" name=\"ciudadHotel\" required><br/>\n");
      out.write("                        <label>País</label>\n");
      out.write("                        <input type=\"text\" name=\"paisHotel\" maxlength=\"9\" required><br/>\n");
      out.write("                        <label>Nº Estrellas</label>\n");
      out.write("                        <input type=\"number\" min=\"1\" max=\"5\" name=\"numeroEstrellas\" required><br/>\n");
      out.write("                        <input class=\"botonFormulario\" type=\"submit\" value=\"Añadir\">\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </section>\n");
      out.write("            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>\n");
      out.write("        </div><!-- Cierra el wrapper -->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
