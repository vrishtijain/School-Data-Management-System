<%-- 
    Document   : Verify
    Created on : Oct 14, 2017, 1:20:44 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%  String s= request.getParameter("login");
           
           //http://localhost:8080/Dbms/Home.jsp?username=gobar&password=aghi&login=Submit&email=
       if(s!=null){
          
           String uid="admin123" , pwd="abc123";
           if(uid.equals(request.getParameter("username")) && pwd.equals(request.getParameter("password")))
           {
       response.sendRedirect("Home.jsp");
           }
           else{
       %>
       <a href="index.jsp"><h1>Try Again</h1></a>
<% } }%>

    </body>
</html>
