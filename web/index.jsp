<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Mart Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <style>
            body{
                 background-image:url('images/walmart.jpg');
            background-repeat:no-repeat ;
            }
            .nav{
                text-decoration: none;
                padding: 1rem;
                text-align: center;
                color: black;
                font-size: 2.5rem;
                font-weight: bolder;
            }
           .nav:hover{
               color: blueviolet;
            }
            td{
                
            }
            .login{ 
                padding:10px;
                border-radius: 1rem;
                font-size:1.5rem;
               float: right;
                width: 500px;
                background-color:#eee;
                
            
            }
            html{
                margin: 0px;
               padding: 0px;
            }
           
        </style>
    </head>
    <body bgcolor="lightblue"><center>
        <header style="background: white; width: 100%; height:50px; padding:25px; ">
           
            <nav>
                <a class="nav" href="index.jsp" >Home</a>
                <a class="nav" href="about" >About</a>
                <a class="nav" href="Register.jsp" >Register</a>
                <a class="nav" href="services" >Our Services</a>
                <a class="nav" href="Contact " >Contact Us</a>
                
                
                
            </nav>
        </header></center> <br><br><br>
       
        <div class="login">
            <form action="Login_Conf">
                <center> <h1> Login</h1><hr></center>
                <label style="margin-right: 15px;">Login as</label> 
                <input list="role" name="role" placeholder="select" required style="height: 2.5rem;" >
                <datalist id="role">
                  <option value="Salesman">
                  <option value="Retailer">
                  <option value="Admin">
                  <option value="Customer">
                 
                </datalist>
                <br><br>
               
                <label style="Font-size:1.5rem; margin-right: 15px">Username or Email Id</label><br>
                <input type="text" placeholder="Username or Email Id" name="user" required style="width:98%;height: 2.5rem;"><br><br>
                <label style="Font-size:1.5rem; margin-right: 15px">Password</label><br>
                <input type="password" placeholder="Password" name="pass" required style="width:98%;height: 2.5rem;"><br>
                <input type="checkbox"  name="check" >Remember me
                
                <%
                        if(request.getParameter("msg")!=null)
                        {
                            out.println("<br> <span style='color:crimson;'>"+request.getParameter("msg")+"</span>");
                                   
                        }
                         
                    
                    %>
                
                
                <br><br>
                <input type="submit" value="Login"  style="width:100%;height: 2.5rem; background-color: green; font-size:1.5rem;"><br>
                <input type="Reset" style="width:100%;height: 2.5rem; background-color: grey; font-size:1.5rem;"><br>
                Are You not Register?<a href="Register.jsp" style="text-decoration: none;">Click here</a>
                
                    
                    
                
               </form>
        </div>
    </body>
</html>
