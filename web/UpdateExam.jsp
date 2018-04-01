<%-- 
    Document   : AddStudent
    Created on : Oct 13, 2017, 10:34:29 AM
    Author     : HP
--%>

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
        <title>Update Exam</title>
    </head>
    <body>
        
        <%   
            session.setAttribute("uptype", "exam");
            Connection con; PreparedStatement ps,ps1;  ResultSet rs,rs1;
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","abc123");
            String qr="select xid,xdate,scode from exam";
            ps=con.prepareStatement(qr);   
            rs=ps.executeQuery();
            
        
        %>
        <form action="UpdateExam.jsp">
            <h3>Select Xid to update details</h3>
            
            <table border="0">
                <tbody>
                    <tr>
                        <td>xid, xdate, scode</td>
                        
                    </tr>
                    <tr>
                        <td><select name="exam">
                        <% while(rs.next()){%>
                        <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%>, <%=rs.getString(2)%><%=rs.getString(3)%></option>
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
         
     String xid=request.getParameter("exam");
     String qr1="select * from exam where xid=?";
     session.setAttribute("xid", xid);
       ps1= con.prepareStatement(qr1);
       ps1.setString(1, xid);
       rs1= ps1.executeQuery();
       boolean found= rs1.next();
        String s1,s2,s3;    
           try{ if(found==true){
                 s1=rs1.getString(1);
                 s2=rs1.getString(2);
                 s3=rs1.getString(3);
                 
             %>
             
             <div class="search_categories">
      <div class="select">
                 <form action='Updating.jsp'>
           <table align="center" border="0">
                
                <tbody>
                     <tr>
                        <th>XID</th>
                        <th><input type="text" name="xid" value="<%=s1%>" /></th>
                    </tr>
                    <tr>
                        <td>Exam date</td>
                        <td><input type="date" name="xd" value="<%=s2%>" /></td>
                    </tr>
                    <tr>
                        <td>Subject code</td>
                        <td><input type="text" name="scode" value="<%=s3%>" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
      
                </tbody>
            </table>
</div>
             </div>
                    <% }}catch(Exception e ){
                
      String err =e.getMessage();
            %>
            
            <h1><%=err%></h1>
            
          <%  

}}
        con.close();

%>
    </body>
</html>



