<%-- 
    Document   : Register.jsp
    Created on : 24 Jul, 2023, 11:58:20 AM
    Author     : prabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <style>
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
                width: 500px;height: 550px;
                background-color:#eee;
                
            
            }
            html{
                margin: 0px;
               padding: 0px;
            }
            td{
                color: grey;
                padding: 8px;
                font-weight: bold;
                font-size: 1.4rem;
                
               
            }
           
                
            
           
                
            
            span{
                color: red;
            }
           
        </style>
    </head>
    <body bgcolor="lightblue"><center>
        <header style="background: white; width: 100%; height:50px; padding:20px; position: scroll;">
           
            <nav>
                <a class="nav" href="index.jsp" >Home</a>
                <a class="nav" href="about" >About</a>
                <a class="nav" href="Register.jsp" >Register</a>
                <a class="nav" href="services" >Our Services</a>
                <a class="nav" href="Contact" >Contact Us</a>
                
                
                
            </nav>
        </header> <br><br><div>
            <form action="RegisterCon" method="post" enctype="multipart/form-data">
                
                <table  width="60%"  bgcolor="white" style="border-radius:20px;">
                    <tr><td colspan="2"><center><h1>Registration Page</h1></center></td></tr>

 <%
                        if(request.getParameter("mes")!=null)
                        {
                            out.println("<tr><td colspan=2> <span style='color:crimson;'>"+request.getParameter("mes")+"</span></td></tr>"
                                    + "<tr><td colspan=2>For Login<a href=index.jsp style='text-decoration:none;'>Click here</a><td></tr>");
                        }
                        if(request.getParameter("mess")!=null)
                        {
                            out.println("<tr><th colspan=2> <span style='color:crimson;'>"+request.getParameter("mess")+"</span></th></tr>");
                        }
                            
                    
                    %>

            <tr><td colspan="2">Register as<span>*</span> &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
        <input list="role" name="role" placeholder="select" required style="height: 2.5rem;" >
                <datalist id="role">
                  <option value="Salesman">
                  <option value="Retailer">
                  <option value="Admin">
                  <option value="Customer"></td></tr>
                    <tr><td>Username<span>*</span></td><td>Email Id<span>*</span></td></tr>
                    <tr><td><input type="text" placeholder="Username" required name="user" size="40"></td>
                        <td><input type="email" placeholder="Email Id" required name="email"size="40"></td></tr>
                    
                    <tr><td>Name<span>*</span></td><td>Contact Number<span>*</span></td></tr>
                    <tr><td><input type="text" placeholder="Name" required name="name" size="40"></td>
                        <td><input type="number" placeholder="Contact Number" required name="cont"size="40"></td></tr>
                    
                    
                    <tr><td>Date of Birth</td><td>Age<span>*</span></td></tr>
                    <tr><td><input type="date" name="date" size="40"></td>
                        <td><input type="number" placeholder="Age" required name="age" size="40"></td></tr>
                    
                    <tr><td>Address</td><td>City<span>*</span></td></tr>
                    <tr><td><textarea rows="2" placeholder="Address" name="area" ></textarea></td>
                        <td><input type="text" placeholder="City" required name="city" size="40"></td></tr>
                    
                    
                    <tr><td>State<span>*</span></td><td>Pin Code<span>*</span></td></tr>
                    <tr><td><input type="text" placeholder="State" required name="state" size="40"></td>
                        <td><input type="number" placeholder="Pincode" required name="pin" size="40" maxlength="6" minlength="6" ></td></tr>
                    
                     <tr><td>Password<span>*</span></td><td>Confirm Password<span>*</span></td></tr>
                     
                    <tr><td><input type="password" placeholder="Password" required name="np" size="40"></td>
                        <td><input type="password"  size="40" required placeholder="Confirm Password" name="cp"></td></tr>
                    <tr><td> Passport-size Photo</td><td><input type="file" name="photo"></td></tr>
                  
                    <tr><td colspan="2"><input type="submit" value="Register" style="width: 100%;height: 3rem;background-color: green;font-size:2rem; border:none; outline: none;" ></td></tr>
                    <tr><td colspan="2"><input type="Reset" value="Reset" style="width: 100%;height: 3rem;background-color: green;font-size:2rem; border:none; outline: none;" ></td></tr>
                   
                    
                            
                            
                </table></form></div>
  </center>  </body>
</html>
