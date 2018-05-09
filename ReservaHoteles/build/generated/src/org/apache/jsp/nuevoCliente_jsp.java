package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class nuevoCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Add Cliente - Reserva tu hotel</title>\n");
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
      out.write("                <span><a href=\"index.jsp\">Cerrar Sesión</a></span>\n");
      out.write("            </nav>\n");
      out.write("            <section>\n");
      out.write("                <form method=\"post\" action=\"grabaCliente.jsp\" class=\"formulario\">\n");
      out.write("                    <h2 class=\"tituloFormulario\">Añadir nuevo cliente</h2>\n");
      out.write("                    <div class=\"contenedorInputs\">\n");
      out.write("                        <label>Nombre</label>\n");
      out.write("                        <input type=\"text\" name=\"nombreCliente\" required><br/>\n");
      out.write("                        <label>Apellidos</label>\n");
      out.write("                        <input type=\"text\" name=\"apellidosCliente\" required><br/>\n");
      out.write("                        <label>Sexo</label>\n");
      out.write("                        ");

                            ArrayList<String> sexo = new ArrayList();
                            sexo.add("Mujer");
                            sexo.add("Hombre");
                            sexo.add("Otro");
                        
      out.write("\n");
      out.write("                        <select name=\"sexoCliente\" required>\n");
      out.write("                            <option></option>\n");
      out.write("                            ");

                              for (String n : sexo) {
                                out.println("<option>" + n + "</option>");
                              }
                            
      out.write("  \n");
      out.write("                        </select><br/>\n");
      out.write("                        <label>DNI</label>\n");
      out.write("                        <input type=\"text\" maxlength=\"9\" name=\"DniCliente\" required><br/>\n");
      out.write("                        <label>Email</label>\n");
      out.write("                        <input type=\"text\" name=\"EmailCliente\" required><br/>\n");
      out.write("                        <label>Ciudad</label>\n");
      out.write("                        ");

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
                            
                        
      out.write("\n");
      out.write("                        <select name=\"ciudadCliente\" required>\n");
      out.write("                            <option></option>\n");
      out.write("                            ");

                              for (String n : ciudad) {
                                out.println("<option>" + n + "</option>");
                              }
                             
      out.write("  \n");
      out.write("                        </select><br/>\n");
      out.write("                        <label>País</label>\n");
      out.write("                        ");

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
                        
      out.write("\n");
      out.write("                        <select name=\"paisCliente\" required>\n");
      out.write("                            <option></option>\n");
      out.write("                            ");

                              for (String n : pais) {
                                out.println("<option>" + n + "</option>");
                              }
                             
      out.write("  \n");
      out.write("                        </select><br/>\n");
      out.write("                        <label>Código Postal</label>\n");
      out.write("                        <input type=\"text\" name=\"cpCliente\" required><br/>\n");
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
