package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class AssignTeacher_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add Teacher</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");
   String s="AssTea";
            session.setAttribute("type",s);
            Connection con; PreparedStatement ps,ps2;   java.sql.ResultSet rs,rs2;
           
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","abc123");
            String qr="select standard from class";  String qr1="select tid ,tname from teacher";
            ps=con.prepareStatement(qr);   
           //java.sql.ResultSet rs;
             rs=ps.executeQuery();
               ps2=con.prepareStatement(qr1);
                rs2=ps2.executeQuery();
             
        
        
      out.write("\n");
      out.write("        <form action=\"Adding.jsp\">\n");
      out.write("            \n");
      out.write("            <table border=\"1\">\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Class </td>\n");
      out.write("                        <td><select name=\"cl\"/>\n");
      out.write("                        ");
  while(rs.next()){
            
                          String rollno=rs.getString(1);
                             
      out.write("\n");
      out.write("                          <option  value=\"");
      out.print(rollno);
      out.write('"');
      out.write('>');
      out.print(rollno);
      out.write("</option>");
 }
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                   \n");
      out.write("                    <tr>\n");
      out.write("                        <td>Teacher</td>\n");
      out.write("                        <td><select name=\"tid\"/>\n");
      out.write("                        ");
  while(rs2.next()){
                            String tname=rs2.getString(2);
                          String tid=rs2.getString(1); 
      out.write("\n");
      out.write("                          <option  value=\"");
      out.print(tid);
      out.write('"');
      out.write('>');
      out.print(tname);
      out.write("</option>");
 }
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                     \n");
      out.write("         \n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"Submit\" />\n");
      out.write("            \n");
      out.write("        </form>\n");
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
