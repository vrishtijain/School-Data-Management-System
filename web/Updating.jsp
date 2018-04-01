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
       
       String uptype=(String) session.getAttribute("uptype");
        String rn=(String) session.getAttribute("rn");
        String scode=(String) session.getAttribute("scode");
        String tid=(String) session.getAttribute("tid");
        String xid=(String) session.getAttribute("xid");
       
        Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","abc123");
    java.sql.PreparedStatement ps;
    
    String qr;
    // now adding on the type 0
 if(uptype.equals("student"))
{  try{
    //http://localhost:8080/Dbms/Adding.jsp?rn=3&nm=mansi+agrawal&db=1996-06-03&nm=xyz&st=11
    //&pnm=swastik+agrawal&c=9876543210&in=2000000000&sal=200000
    
    String qr1="update student set name=? , dob=? , address=? , standard=? where rollno=?";
            ps=con.prepareStatement(qr1);
            String s1,s2,s3,s4,s5;
          //http://localhost:8080/a_1/Update?psw=abc123&nm=+Ayushi+gupta&dob=1995-12-03&cgpa=9&em=ayushi%40gmail.com
       
        s1=request.getParameter("nm");
        s2=request.getParameter("dob");
        s3=request.getParameter("add");
        s4=request.getParameter("std");
        
                
            ps.setString(1, s1); ps.setString(4,s4);
            ps.setString(2, s2); ps.setString(5,rn);
            ps.setString(3, s3); 
            ps.executeUpdate();
           
      
           // response.sendRedirect("Update.jsp");
}catch(Exception e ){
                
      String err =e.getMessage();
            %>
            
            <h1><%=err%></h1>
            
          <% 
         }
response.sendRedirect("Update.jsp");
}
else if(uptype.equals("subject"))
{  try{
    //http://localhost:8080/Dbms/Adding.jsp?rn=3&nm=mansi+agrawal&db=1996-06-03&nm=xyz&st=11
    //&pnm=swastik+agrawal&c=9876543210&in=2000000000&sal=200000
    
    String qr1="update subject set scode=? , sname=?  where scode=?";
            ps=con.prepareStatement(qr1);
            String s1,s2;
          //http://localhost:8080/a_1/Update?psw=abc123&nm=+Ayushi+gupta&dob=1995-12-03&cgpa=9&em=ayushi%40gmail.com
       
        s1=request.getParameter("scode");
        s2=request.getParameter("sname");
        
        
                
            ps.setString(1, s1);
            ps.setString(2, s2); 
            ps.setString(3,scode ); 
           
            ps.executeUpdate();
           
      
           // response.sendRedirect("Update.jsp");
}catch(Exception e ){
                
      String err =e.getMessage();
            %>
            
            <h1><%=err%></h1>
            
          <% 
         }
response.sendRedirect("Update.jsp");
}
else if(uptype.equals("teacher"))
{  try{
    //http://localhost:8080/Dbms/Adding.jsp?rn=3&nm=mansi+agrawal&db=1996-06-03&nm=xyz&st=11
    //&pnm=swastik+agrawal&c=9876543210&in=2000000000&sal=200000
  
    String qr1="update teacher set  tname=? , scode=?  where tid=?";
            ps=con.prepareStatement(qr1);
            String s1,s2,s3;
          //http://localhost:8080/a_1/Update?psw=abc123&nm=+Ayushi+gupta&dob=1995-12-03&cgpa=9&em=ayushi%40gmail.com
       
        s1=request.getParameter("tid");
        s3=request.getParameter("scode");
        s2=request.getParameter("tname");
        
        
                
           // ps.setString(1, tid);
            ps.setString(1, s2); 
            ps.setString(2,s3); 
           ps.setString(3, tid);
            ps.executeUpdate();
           
      
           // response.sendRedirect("Update.jsp");
}catch(Exception e ){
                
      String err =e.getMessage();
            %>
            
            <h1><%=err%></h1>
            
          <% 
         }
response.sendRedirect("Update.jsp");
}
else if(uptype.equals("exam"))
{  try{
    //http://localhost:8080/Dbms/Adding.jsp?rn=3&nm=mansi+agrawal&db=1996-06-03&nm=xyz&st=11
    //&pnm=swastik+agrawal&c=9876543210&in=2000000000&sal=200000
    
    String qr1="update exam set xid=? , xdate=? , scode=?  where xid=?";
            ps=con.prepareStatement(qr1);
            String s1,s2,s3;
          //http://localhost:8080/a_1/Update?psw=abc123&nm=+Ayushi+gupta&dob=1995-12-03&cgpa=9&em=ayushi%40gmail.com
       
        s1=request.getParameter("xid");
        s2=request.getParameter("xd");
        s3=request.getParameter("scode");
        //http://localhost:8080/Dbms/Updating.jsp?xid=m12&xd=2017-04-05&scode=m1
        
                
            ps.setString(1, s1);
            ps.setString(2, s2); 
            ps.setString(3,s3);
             ps.setString(4,xid);
           
            ps.executeUpdate();
           
      
           // response.sendRedirect("Update.jsp");
}catch(Exception e ){
                
      String err =e.getMessage();
            %>
            
            <h1><%=err%></h1>
            
          <% 
         }
response.sendRedirect("Update.jsp");
}
else{}

%>

    </body>
</html>
