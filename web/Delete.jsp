<%@ include file="header.html" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
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
    border-radius: 15px 15px 15px 15px;
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
  margin-left:2cm;
} 
</style>
    </head>
    <body>

<div class="welcome">
       <h1  align="center" style="font-size: 1cm;"></h1>
     
</div>    
        <br><br><br><br>
        <br>
        
        <div class="UseCase">
            <table align="center" border="0">
                
                <tr >
                    <td align="left" width="500px"><button class="Button"><span><a href=" DeleteStudent.jsp">Delete Student</a></span></button></td>
                     
                <td align="right"><button class="Button"><span><a href="DeleteSubject.jsp">Delete subject </a></span></button></td>
                </tr>
               
                <tr>
                                <td><button class="Button"><span><a href="DeleteTeacher.jsp">Delete Teacher </a></span></button></td>

       <td><button class="Button"><span><a href="DeleteExam.jsp">Delete Exam </a></span></button></td>
                </tr>
       </div>
    <a href="index.jsp">Link to Home Page</a>
    </body>
</html>