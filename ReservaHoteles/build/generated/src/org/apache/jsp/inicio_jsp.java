package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class inicio_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Página principal - Reserva Hoteles</title>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Faster+One\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            <header>\n");
      out.write("                <h1 id=\"rotulo\">HAZ TUS RESERVAS</h1>\n");
      out.write("                <p id=\"web\">ReservaHoteles.com</p>\n");
      out.write("            </header>\n");
      out.write("\n");
      out.write("            <nav>\n");
      out.write("                <span><a href=\"inicio.jsp\">Página de Inicio</a></span>\n");
      out.write("                <span><a href=\"confirmacionSalir.jsp\">Cerrar Sesión</a></span>\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("            <section>\n");
      out.write("\n");
      out.write("                <h2 id=\"tituloOpciones\">Elige la acción que quieres realizar:</h2>\n");
      out.write("\n");
      out.write("                    <a href=\"nuevoCliente.jsp\">\n");
      out.write("                        \n");
      out.write("                        <div id=\"img1\" class=\"imagenesIndex\">\n");
      out.write("                            <img src=\"images/addCliente.png\">\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                    <a href=\"listadoCliente.jsp\">\n");
      out.write("                        <div id=\"img2\" class=\"imagenesIndex\">\n");
      out.write("                            <img src=\"images/listadoClientes.png\">\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <a href=\"nuevaReserva.jsp\">\n");
      out.write("                        <div id=\"img3\" class=\"imagenesIndex\">\n");
      out.write("                            <img src=\"images/addReserva.png\">\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                    <a href=\"listadoReservas.jsp\">\n");
      out.write("                        <div id=\"img4\" class=\"imagenesIndex\">\n");
      out.write("                            <img src=\"images/listadoReservas.png\">\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("                <div id=\"fondoIndex\"></div>\n");
      out.write("                \n");
      out.write("            </section>\n");
      out.write("            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>\n");
      out.write("        </div>\n");
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
