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
       
       String type=(String) session.getAttribute("type");       
       
        Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","abc123");
    java.sql.PreparedStatement ps;
    boolean flag=false;
    String qr;
    // now adding on the type 0
    
if(type.equals("student"))
{
    //http://localhost:8080/Dbms/Adding.jsp?rn=3&nm=mansi+agrawal&db=1996-06-03&nm=xyz&st=11
    //&pnm=swastik+agrawal&c=9876543210&in=2000000000&sal=200000
    String nm=request.getParameter("nm");
    String rn=request.getParameter("rn");
    String db=request.getParameter("db");
    String ad=request.getParameter("ad");
    String st=request.getParameter("st");
    String pnm=request.getParameter("pnm");
    String c=request.getParameter("c");
    String in=request.getParameter("in");
    String sal=request.getParameter("sal");
   
     qr="insert into student values(?,?,?,?,?)";
     String qr1="insert into parent values(?,?,?,?,?)";
       ps= con.prepareStatement(qr);
       ps.setString(1, rn);ps.setString(2, nm);ps.setString(3, db);
       ps.setString(4, ad);ps.setString(5, st);
       ps.executeUpdate();
       
         ps= con.prepareStatement(qr1);
         
         ps.setString(1, rn);ps.setString(2, pnm);ps.setString(3, c);
       ps.setString(4, in);ps.setString(5, sal);
       
        ps.executeUpdate();
        flag=true;
      
}
else if(type.equals("subject"))
{
  // http://localhost:8080/Dbms/Adding.jsp?sc=wds&sm=ewt
    String sc=request.getParameter("sc");
    String sm=request.getParameter("sm");
  
     qr="insert into subject values(?,?)";
     
       ps= con.prepareStatement(qr);
       ps.setString(1, sc);ps.setString(2, sm);
       ps.executeUpdate();
flag=true;
  
}

else if(type.equals("teacher"))
{
    //http://localhost:8080/Dbms/Adding.jsp?tid=22&tnm=dsad&sub=e1
    String tid=request.getParameter("tid");
    String tnum=request.getParameter("tnum");
    String sub=request.getParameter("sub");
   
   
     qr="insert into teacher values(?,?,?)";
   
       ps= con.prepareStatement(qr);
       ps.setString(1, tid);ps.setString(2, tnum);ps.setString(3, sub);
      
       ps.executeUpdate();
     flag=true;
  
}
else if(type.equals("exam")) {
    
 //http://localhost:8080/Dbms/Adding.jsp?xid=fsdf&xdate=0005-04-05&sub=m1
    String xid=request.getParameter("xid");
    String xdate=request.getParameter("xdate");
    String sub=request.getParameter("sub");
   
   
     qr="insert into exam values(?,?,?)";
   
       ps= con.prepareStatement(qr);
       ps.setString(1, xid);ps.setString(2, xdate);ps.setString(3, sub);
      
       ps.executeUpdate();
     flag=true;
  
}
else if(type.equals("marks")) {
    
 //http://localhost:8080/Dbms/Adding.jsp?rn=1&xid=e12&mark=123
    String xid=request.getParameter("xid");
    String rn=request.getParameter("rn");
    String mark=request.getParameter("mark");
   
   
     qr="insert into gives values(?,?,?)";
   
       ps= con.prepareStatement(qr);
       ps.setString(1, rn);ps.setString(2, xid);ps.setString(3, mark);
      
       ps.executeUpdate();
     flag=true;
  
} 
else if(type.equals("AssTea")) {
    
 //http://localhost:8080/Dbms/Adding.jsp?xid=fsdf&xdate=0005-04-05&sub=m1
    String cl=request.getParameter("cl");
    String tid=request.getParameter("tid");

    qr="insert into teaches values(?,?)";
   
       ps= con.prepareStatement(qr);
       ps.setString(2, cl);ps.setString(1, tid);
      
       ps.executeUpdate();
     flag=true;
  
} 

if(flag){
        

 response.sendRedirect("Add.jsp");
        }

           %>
           
           
    
     
     
    </body>
</html>
