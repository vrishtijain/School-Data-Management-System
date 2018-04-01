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
<!DOCTYPE html>
<html>
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
       

  <%
           
            Connection con; PreparedStatement ps,ps1;  ResultSet rs,rs1;
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","abc123");
     String rn=request.getParameter("student");
     //String qr1="select  s.name ,sb.sname from student s, class c, teacher t,teaches ts, subject sb where s.standard=c.standard and c.standard=ts.standard and ts.tid=t.tid and t.scode=sb.scode";
     String qr="select sname from subject";
     String qr1="select s.rollno,s.name,s.standard,b.sname from student s,class c,teacher t,teaches h, subject b where s.standard=c.standard and c.standard=h.standard and h.tid=t.tid and t.scode=b.scode";
     ps=con.prepareStatement(qr);
     ps1= con.prepareStatement(qr1);
      rs=ps.executeQuery();
       rs1= ps1.executeQuery();
        String s1,s2,s3,s4,s5;    
        
        
       %>
       
       <table align="center" border="0">
                
                <tbody>
                    <%while(rs.next()){%>
                     <tr>
                        <th><%=rs.getString(1)%></th>
                        <th></th>
                        <th></th>
                    </tr> 
                    <tr>
                        <td>Roll no</td>
                        <td>Name</td>
                        <td>Standard</td>
                    </tr>
                    <%while(rs1.next()){%>
                    <%if(rs.getString(1).equals(rs1.getString(4))){%>
                    <tr>
                        <td><%=rs1.getString(1)%></td>
                        <td><%=rs1.getString(2)%></td>
                        <td><%=rs1.getString(3)%></td>
                    </tr>
                    <%}%>
                    <%}
                    rs1.beforeFirst();
                    
                    }%>
              </tbody>
            </table>
       
       


                 
    </body>
</html>
