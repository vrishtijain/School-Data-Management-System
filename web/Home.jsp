
<%@ include file="header.html" %>



<html>
   
        <style>
           
            .imag1
            {
                margin-left: 7cm;
            }
.usecase{
margin:10px;
padding:10px;
width:950px;
height:370px;
position:absolute;
left:320px;
top:125px;
}

.welcome{
  
 margin:10px;
 padding:10px;
 position:absolute;
 left:400px;
 top:45px;
}

a{color:white;}
  .Button {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    font-color: white;
    border: none;
    border-radius: 30px 15px 15px 15px;
    cursor: pointer;
    width:160px;
    background-image: linear-gradient(#04433F,#297F7B);
}
.Button:hover{
	background: linear-gradient(#073,#0fa);
}           
.table{
   align:center;
padding:20px;  
}           
            
.Usecase{
left-margin:30px;
padding:10px;
width:950px;
height:370px;

left:320px;
top:125px;
}
  #container {
  position: relative;
}

#container > * {
  position: absolute;
}

.sidenav {
  left: 0;
}

.welcome{
  margin-left:0cm;
} 

</style>
  
    <body>

<div class="welcome">
      
       
      <h1  align="center" style="font-size: 1cm; ">Welcome To School Management System</h1>
</div>    
        <br><br><br><br>
        <br> <br><br><br><br>
        <br> <br><br><br><br>
        <br>
        
        <div class="UseCase">
            <table align="center" border="0" cell-padding="40" cell-spacing="40">
               
                <tr >
                    <td align="left" width="500px"><button class="Button"><span><a href=" Add.jsp">Add</a></span></button></td>
            
                <td align="right"><button class="Button"><span><a href="Update.jsp">Update</a></span></button></td>
                </tr>
              
                <tr>
                                <td><button class="Button"><span><a href="Delete.jsp">Delete</a></span></button></td>

       <td><button class="Button"><span><a href="View.jsp">View</a></span></button></td>
                </tr>
       </div>
 

    </body>
</html>


