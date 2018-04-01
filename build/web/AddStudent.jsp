<%-- 
    Document   : AddStudent
    Created on : Oct 13, 2017, 10:34:29 AM
    Author     : HP
--%>
<%@ include file="header.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <%   String s="student";
            session.setAttribute("type",s);
        %>
        <form action="Adding.jsp">
            
            <table border="1">
                <tbody>
                    <tr>
                        <td>Rollno</td>
                        <td><input type="number" name="rn" value="" /></td>
                    </tr>
                   <tr>
                        <td>Name</td>
                        <td><input type="text" name="nm" value="" /></td>
                    </tr>
                    <tr>
                        <td>Dob</td>
                        <td><input type="date" name="db" value="" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="ad" value="" /></td>
                    </tr>
                    <tr>
                        <td>Standard</td>
                        <td><input type="number" name="st" value="" /></td>
                    </tr>
                    <tr>
                        <td>Parent Name</td>
                        <td><input type="text" name="pnm" value="" /></td>
                    </tr>
                    <tr>
                        <td>Parent's Contact</td>
                        <td><input type="number" name="c" value="" maxlength="10"/></td>
                    </tr>
                    <tr>
                        <td>Parent's Income</td>
                        <td><input type="number" name="in" value="" /></td>
                    </tr>
                    <tr>
                        <td>Profession of Parent</td>
                        <td><input type="text" name="sal" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
                </tbody>
            </table>

            
            
            
        </form>
        <a href="Home.jsp">Link to Home Page</a>
    </body>
</html>
