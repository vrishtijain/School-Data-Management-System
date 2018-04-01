package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.Connection;

public final class ShowSubject_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
   String s="student";                
            session.setAttribute("uptype", s);
            Connection con; PreparedStatement ps,ps1;  ResultSet rs,rs1;
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","abc123");
            String qr="select rollno,name,standard from student";
            ps=con.prepareStatement(qr);   
            rs=ps.executeQuery();
            
        
        
      out.write("\n");
      out.write("        <form action=\"UpdateStudent.jsp\">\n");
      out.write("            <h3>Select Student to update details</h3>\n");
      out.write("            \n");
      out.write("            <table border=\"0\">\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Roll no, Name, Standard</td>\n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><select name=\"student\">\n");
      out.write("                        ");
 while(rs.next()){
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1));
      out.write(',');
      out.write(' ');
      out.print(rs.getString(2));
      out.write(',');
      out.write(' ');
      out.print(rs.getString(3));
      out.write("</option>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                        ");
rs.beforeFirst();
      out.write("\n");
      out.write("                    </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("            <button class=\"Button\" name=\"submit\">Submit</button>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("            <a href=\"index.jsp\">Link to Home Page</a>   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("  ");
if(request.getParameter("submit")!=null){
         
     String rn=request.getParameter("student");
     String qr1="select  s.name ,sb.sname from student s, class c, teacher t,teaches ts, subject sb where s.standard=c.standard and c.standard=ts.standard and ts.tid=t.tid and t.scode=sb.scode";
     
       ps1= con.prepareStatement(qr1);
       ps1.setString(1, rn);
       rs1= ps1.executeQuery();
       boolean found= rs1.next();
        String s1,s2,s3,s4,s5;    
           try{ if(found==true){
                 s1=rs1.getString(1);
                 s2=rs1.getString(2);
                 
                   
             
      out.write("\n");
      out.write("             \n");
      out.write("             <div class=\"search_categories\">\n");
      out.write("      <div class=\"select\">\n");
      out.write("                 \n");
      out.write("           <table align=\"center\" border=\"0\">\n");
      out.write("                \n");
      out.write("                <tbody>\n");
      out.write("                     <tr>\n");
      out.write("                        <th>Rollno</th>\n");
      out.write("                        <th><input type=\"text\" name=\"rn\" value=\"");
      out.print(rn);
      out.write("\" disabled=\"true\"/></th>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Name</td>\n");
      out.write("                        <td><input type=\"text\" name=\"nm\" value=\"");
      out.print(s2);
      out.write("\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td>\n");
      out.write("                        <td><input type=\"submit\" value=\"Submit\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                  \n");
      out.write("   \n");
      out.write("                \n");
      out.write("\n");
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("</div>\n");
      out.write("             </div>\n");
      out.write("                    ");
 }}catch(Exception e ){} 

}
        con.close();


      out.write("\n");
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
