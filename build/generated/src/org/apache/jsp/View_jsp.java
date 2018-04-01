package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class View_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Welcome</title>\n");
      out.write("        <style>\n");
      out.write("           \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            .imag1\n");
      out.write("            {\n");
      out.write("                margin-left: 7cm;\n");
      out.write("            }\n");
      out.write(".usecase{\n");
      out.write("margin:10px;\n");
      out.write("padding:10px;\n");
      out.write("width:950px;\n");
      out.write("height:370px;\n");
      out.write("position:absolute;\n");
      out.write("left:320px;\n");
      out.write("top:125px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".welcome{\n");
      out.write("  \n");
      out.write(" margin:10px;\n");
      out.write(" padding:10px;\n");
      out.write(" position:absolute;\n");
      out.write(" left:400px;\n");
      out.write(" top:45px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a{color:white;}\n");
      out.write("  .Button {\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("    color: white;\n");
      out.write("    padding: 16px;\n");
      out.write("    font-size: 16px;\n");
      out.write("    font-color: white;\n");
      out.write("    border: none;\n");
      out.write("    border-radius: 15px 15px 15px 15px;\n");
      out.write("    cursor: pointer;\n");
      out.write("    width:160px;\n");
      out.write("    background-image: linear-gradient(#04433F,#297F7B);\n");
      out.write("}\n");
      out.write(".Button:hover{\n");
      out.write("\tbackground: linear-gradient(#073,#0fa);\n");
      out.write("}           \n");
      out.write(".table{\n");
      out.write("   align:center;\n");
      out.write("padding:20px;  \n");
      out.write("}           \n");
      out.write("            \n");
      out.write(".Usecase{\n");
      out.write("left-margin:30px;\n");
      out.write("padding:10px;\n");
      out.write("width:950px;\n");
      out.write("height:370px;\n");
      out.write("\n");
      out.write("left:320px;\n");
      out.write("top:125px;\n");
      out.write("}\n");
      out.write("  #container {\n");
      out.write("  position: relative;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#container > * {\n");
      out.write("  position: absolute;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".sidenav {\n");
      out.write("  left: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".welcome{\n");
      out.write("  margin-left:2cm;\n");
      out.write("} \n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("<div class=\"welcome\">\n");
      out.write("       <h1  align=\"center\" style=\"font-size: 1cm;\"></h1>\n");
      out.write("     \n");
      out.write("</div>    \n");
      out.write("        <br><br><br><br>\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        <div class=\"UseCase\">\n");
      out.write("            <table align=\"center\" border=\"0\">\n");
      out.write("               \n");
      out.write("                <tr >\n");
      out.write("                    <td align=\"left\" width=\"500px\"><button class=\"Button\"><span><a href=\" ViewStudent.jsp\">View Students</a></span></button></td>\n");
      out.write("                     \n");
      out.write("                <td align=\"right\"><button class=\"Button\"><span><a href=\"ViewSubject.jsp\">View subjects</a></span></button></td>\n");
      out.write("                </tr>\n");
      out.write("              \n");
      out.write("                <tr>\n");
      out.write("                                <td><button class=\"Button\"><span><a href=\"ViewTeacher.jsp\">View Teachers</a></span></button></td>\n");
      out.write("\n");
      out.write("       <td><button class=\"Button\"><span><a href=\"ViewExam.jsp\">View Exams</a></span></button></td>\n");
      out.write("                </tr>\n");
      out.write("       </div>\n");
      out.write("    <a href=\"index.jsp\">Link to Home Page</a>\n");
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
