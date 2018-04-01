<%-- 
    Document   : AddStudent
    Created on : Oct 13, 2017, 10:34:29 AM
    Author     : HP
--%>
<%@ include file="header.html" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student</title>
    </head>
    <body>
        
        <%   String s="subject";
            session.setAttribute("uptype", s);
            Connection con; PreparedStatement ps,ps1;  ResultSet rs,rs1;
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","abc123");
            String qr="select scode,sname from subject";
            ps=con.prepareStatement(qr);   
            rs=ps.executeQuery();
            
        
        %>
        <form action="UpdateSubject.jsp">
            <h3>Select Student to update details</h3>
            
            <table border="0">
                <tbody>
                    <tr>
                        <td>Scode,Subject</td>
                        
                    </tr>
                    <tr>
                        <td><select name="subject">
                        <% while(rs.next()){%>
                        <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%>, <%=rs.getString(2)%></option>
                        <%}%>
                        <%rs.beforeFirst();%>
                    </select></td>
                    </tr>
                </tbody>
            </table>
            <button class="Button" name="submit">Submit</button>
            
        </form>
            <a href="index.jsp">Link to Home Page</a>   
    </body>
</html>
   
 <%
     if(request.getParameter("submit")!=null){
         
     String scode=request.getParameter("subject");
     String qr1="select * from subject where scode=?";
     session.setAttribute("scode", scode);
       ps1= con.prepareStatement(qr1);
       ps1.setString(1, scode);
       rs1= ps1.executeQuery();
       boolean found= rs1.next();
        String s1,s2;    
           try{ if(found==true){
                 s1=rs1.getString(1);
                 s2=rs1.getString(2);
                 
             %>
             
             <div class="search_categories">
      <div class="select">
                 <form action='Updating.jsp'>
           <table align="center" border="0">
                
                <tbody>
                     <tr>
                        <th>Scode</th>
                        <th><input type="text" name="scode" value="<%=scode%>" /></th>
                    </tr>
                    <tr>
                        <td>Subject</td>
                        <td><input type="text" name="sname" value="<%=s2%>" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Submit"/></td>
                    </tr>
                  
   


                </tbody>
            </table>
</div>
             </div>
                    <% }}catch(Exception e ){} 

}
        con.close();

%>
    </body>
</html>



