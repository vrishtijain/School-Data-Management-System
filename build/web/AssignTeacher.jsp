

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Teacher</title>
    </head>
    <body>
        
        <%   String s="AssTea";
            session.setAttribute("type",s);
            Connection con; PreparedStatement ps,ps2;   java.sql.ResultSet rs,rs2;
           
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","abc123");
            String qr="select standard from class";  String qr1="select tid ,tname from teacher";
            ps=con.prepareStatement(qr);   
           //java.sql.ResultSet rs;
             rs=ps.executeQuery();
               ps2=con.prepareStatement(qr1);
                rs2=ps2.executeQuery();
             
        
        %>
        <form action="Adding.jsp">
            
            <table border="1">
                <tbody>
                    <tr>
                        <td>Class </td>
                        <td><select name="cl"/>
                        <%  while(rs.next()){
            
                          String rollno=rs.getString(1);
                             %>
                          <option  value="<%=rollno%>"><%=rollno%></option><% }%>
                        </select>
                        </td>
                    </tr>
                   
                    <tr>
                        <td>Teacher</td>
                        <td><select name="tid"/>
                        <%  while(rs2.next()){
                            String tname=rs2.getString(2);
                          String tid=rs2.getString(1); %>
                          <option  value="<%=tid%>"><%=tname%></option><% }%>
                        </select>
                        </td>
                    </tr>
                     
         
                </tbody>
            </table>

            
            <input type="submit" value="Submit" />
            
        </form>
                        <a href="index.jsp">Link to Home Page</a>
    </body>
</html>
