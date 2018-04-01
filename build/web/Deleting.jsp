<%-- 
    Document   : Adding
    Created on : Oct 13, 2017, 10:41:33 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% String s=null;
       
       String deltype=(String) session.getAttribute("deltype");       
       
        Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","abc123");
    java.sql.PreparedStatement ps;
    
    String qr;
    // now adding on the type 0
    
if(deltype.equals("student"))
{
    //http://localhost:8080/Dbms/Adding.jsp?rn=3&nm=mansi+agrawal&db=1996-06-03&nm=xyz&st=11
    //&pnm=swastik+agrawal&c=9876543210&in=2000000000&sal=200000
    String rn=request.getParameter("student");
   
     qr="delete from student where rollno=?";
       ps= con.prepareStatement(qr);
       ps.setString(1, rn);
       ps.executeUpdate();  
response.sendRedirect("Delete.jsp");
}

else if(deltype.equals("subject"))
{
    //http://localhost:8080/Dbms/Adding.jsp?rn=3&nm=mansi+agrawal&db=1996-06-03&nm=xyz&st=11
    //&pnm=swastik+agrawal&c=9876543210&in=2000000000&sal=200000
    String sc=request.getParameter("subject");
   
     qr="delete from subject where scode=?";
       ps= con.prepareStatement(qr);
       ps.setString(1, sc);
       ps.executeUpdate();  
response.sendRedirect("Delete.jsp");
}

else if(deltype.equals("teacher"))
{
    //http://localhost:8080/Dbms/Adding.jsp?rn=3&nm=mansi+agrawal&db=1996-06-03&nm=xyz&st=11
    //&pnm=swastik+agrawal&c=9876543210&in=2000000000&sal=200000
    String tc=request.getParameter("teacher");
   
     qr="delete from teacher where tid=?";
       ps= con.prepareStatement(qr);
       ps.setString(1, tc);
       ps.executeUpdate();  
response.sendRedirect("Delete.jsp");
}

else if(deltype.equals("exam"))
{
    //http://localhost:8080/Dbms/Adding.jsp?rn=3&nm=mansi+agrawal&db=1996-06-03&nm=xyz&st=11
    //&pnm=swastik+agrawal&c=9876543210&in=2000000000&sal=200000
    String xid=request.getParameter("exam");
   
     qr="delete from exam where xid=?";
       ps= con.prepareStatement(qr);
       ps.setString(1, xid);
       ps.executeUpdate();  
response.sendRedirect("Delete.jsp");
}
%>

    </body>
</html>
