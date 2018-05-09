package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class listadoCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Listado clientes - Reserva tu hotel</title>\n");
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
      out.write("                <h2 class=\"tituloListado\">Listado de clientes</h2>\n");
      out.write("                ");

                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();

                  ResultSet listado = s.executeQuery("SELECT * FROM cliente");
                
      out.write("\n");
      out.write("                <div id=\"estiloTablaCliente\">\n");
      out.write("                    <table class=\"tableListado\">\n");
      out.write("                        <thead class=\"theadListado\">\n");
      out.write("                            <tr class=\"trListado\">\n");
      out.write("                                <th class=\"thListado\">Nombre</th><th class=\"thListado\">Apellidos</th><th class=\"thListado\">Teléfono</th><th class=\"thListado\">DNI</th><th class=\"thListado\">Email</th><th class=\"thListado\"></th><th class=\"thListado\"></th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("\n");
      out.write("                        ");

                          while (listado.next()) {
                            out.println("<tr class='trListado'><td class='tdListado'>");
                            out.println(listado.getString("nombreCliente") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("apellidosCliente") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("telefonoCliente") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("DniCliente") + "</td>");
                            out.println("<td class='tdListado'>" + listado.getString("EmailCliente") + "</td>");
                        
      out.write("\n");
      out.write("\n");
      out.write("                        <td class=\"tdListado\">\n");
      out.write("                            <form method=\"get\" action=\"modificaCliente.jsp\">\n");
      out.write("                                <input type=\"hidden\" name=\"nombreCliente\" value=\"");
      out.print(listado.getString("nombreCliente"));
      out.write("\">\n");
      out.write("                                <input type=\"hidden\" name=\"apellidosCliente\" value=\"");
      out.print(listado.getString("apellidosCliente"));
      out.write("\">\n");
      out.write("                                <input type=\"hidden\" name=\"sexoCliente\" value=\"");
      out.print(listado.getString("sexoCliente"));
      out.write("\">\n");
      out.write("                                <input type=\"hidden\" name=\"DniCliente\" value=\"");
      out.print(listado.getString("DniCliente"));
      out.write("\">\n");
      out.write("                                <input type=\"hidden\" name=\"EmailCliente\" value=\"");
      out.print(listado.getString("EmailCliente"));
      out.write("\">\n");
      out.write("                                <input type=\"hidden\" name=\"ciudadCliente\" value=\"");
      out.print(listado.getString("ciudadCliente"));
      out.write("\">\n");
      out.write("                                <input type=\"hidden\" name=\"paisCliente\" value=\"");
      out.print(listado.getString("paisCliente"));
      out.write("\">\n");
      out.write("                                <input type=\"hidden\" name=\"cpCliente\" value=\"");
      out.print(listado.getString("cpCliente"));
      out.write("\">\n");
      out.write("                                <button type=\"submit\" class=\"botonModificar\">Modificar</button>\n");
      out.write("                                <input type=\"hidden\" name=\"clienteID\" value=\"");
      out.print(listado.getString("clienteID"));
      out.write("\"/>                          \n");
      out.write("\n");
      out.write("                            </form>\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <td class=\"tdListado\">\n");
      out.write("                            <form method=\"get\" action=\"confirmacionBorradoCliente.jsp\">\n");
      out.write("                                <input type=\"hidden\" name=\"clienteID\" value=\"");
      out.print(listado.getString("clienteID"));
      out.write("\"/>\n");
      out.write("                                <button type=\"submit\" class=\"botonBorrar\">Borrar</button>\n");
      out.write("                            </form>\n");
      out.write("                        </td></tr>\n");
      out.write("                        ");

                          }

                          conexion.close();
                        
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
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
