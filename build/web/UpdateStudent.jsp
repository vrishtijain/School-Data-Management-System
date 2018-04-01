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
    <style>
        body{
            color: cadetblue;
        }
        strong {
	font-weight: bold; 
}

em {
	font-style: italic; 
}

table {
	background: #f5f5f5;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 20px;
	line-height: 24px;
	margin: 30px auto;
	text-align: left;
	width: 800px;
}	

th {
	background: url(https://jackrugile.com/images/misc/noise-diagonal.png), linear-gradient(#777, #444);
	border-left: 1px solid #555;
	border-right: 1px solid #777;
	border-top: 1px solid #555;
	border-bottom: 1px solid #333;
	box-shadow: inset 0 1px 0 #999;
	color: #fff;
  font-weight: bold;
	padding: 10px 15px;
	position: relative;
	text-shadow: 0 1px 0 #000;	
}

th:after {
	background: linear-gradient(rgba(255,255,255,0), rgba(255,255,255,.08));
	content: '';
	display: block;
	height: 25%;
	left: 0;
	margin: 1px 0 0 0;
	position: absolute;
	top: 25%;
	width: 100%;
}

th:first-child {
	border-left: 1px solid #777;	
	box-shadow: inset 1px 1px 0 #999;
}

th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}

td {
	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #e8e8e8;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}

td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}	

td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}	

tr {
	background: url(https://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:nth-child(odd) td {
	background: #f1f1f1 url(https://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff; 
}

tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}	

tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}	

tbody:hover td {
	color: transparent;
	text-shadow: 0 0 3px #aaa;
}

tbody:hover tr:hover td {
	color: #444;
	text-shadow: 0 1px 0 #fff;
}
    </style>
    <body>
        
        <%   String s="student";                
            session.setAttribute("uptype", s);
            Connection con; PreparedStatement ps,ps1;  ResultSet rs,rs1;
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","abc123");
            String qr="select rollno,name,standard from student";
            ps=con.prepareStatement(qr);   
            rs=ps.executeQuery();
            
        
        %>
        <form action="UpdateStudent.jsp">
            <h3>Select Student to update details</h3>
            
            <table border="0">
                <tbody>
                    <tr>
                        <td>Roll no, Name, Standard</td>
                        
                    </tr>
                    <tr>
                        <td><select name="student">
                        <% while(rs.next()){%>
                        <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%>, <%=rs.getString(2)%>, <%=rs.getString(3)%></option>
                        <%}%>
                        <%rs.beforeFirst();%>
                    </select></td>
                    </tr>
                    <tr>
                        <td><button class="Button" name="submit">Submit</button></td>
                    </tr>
                </tbody>
            </table>
            
            
        </form>
            <a href="index.jsp">Link to Home Page</a>   
    </body>
</html>
   
 <%
     if(request.getParameter("submit")!=null){
         
     String rn=request.getParameter("student");
     String qr1="select * from student where rollno=?";
     session.setAttribute("rn", rn);
       ps1= con.prepareStatement(qr1);
       ps1.setString(1, rn);
       rs1= ps1.executeQuery();
       boolean found= rs1.next();
        String s1,s2,s3,s4,s5;    
           try{ if(found==true){
                 s1=rs1.getString(1);
                 s2=rs1.getString(2);
                 s3=rs1.getString(3);
                 s4=rs1.getString(4);
                 s5=rs1.getString(5); 
                   
             %>
             
             <div class="search_categories">
      <div class="select">
                 <form action='Updating.jsp'>
           <table align="center" border="0">
                
                <tbody>
                     <tr>
                        <th>Rollno</th>
                        <th><input type="text" name="rn" value="<%=rn%>" disabled="true"/></th>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="nm" value="<%=s2%>" /></td>
                    </tr>
                    <tr>
                        <td>Date Of Birth</td>
                        <td><input type="date" name="dob" value="<%=s3%>" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="add" value="<%=s4%>" /></td>
                    </tr>

                    <tr>
                        <td>Standard</td>
                        <td><input type="number" name="std" value="<%=s5%>" /></td>
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



