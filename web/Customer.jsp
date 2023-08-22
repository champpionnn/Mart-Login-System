<%-- 
    Document   : Retailer
    Created on : 27 Jul, 2023, 11:50:04 AM
    Author     : prabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Dashboard</title>
        <style>
            th{
                font-size: 20px;
                font-weight: bolder;
            } 
            td{
               font-size: 14px;
               box-shadow: 10px;
               height: 50px;
               padding: 60px;
            }
            
        </style>
            
    </head>
    <body><% 
            Cookie c[]=request.getCookies();  
        String user=c[1].getValue().toString();
        %>
        
        <div width='100%'> <Center><h1>Customer's Dashboard</h1>
                <table width=100%>
                    <tr><th>Welcome:<% out.println(user);    %></th><th>Designation:Customer</th><th>Logout</th></tr>   
                    
                </table></Center>  </div>
        <div width='100%'>
            <center>
                <table border cellspacing=170px bgcolor=#eee
                       width=100% >
                    
                    <tr><td>Place a orders</td><td>Track order</td><td>View order list</td></tr>
                    <tr><td>Feedback</td><td>Rate our Service</td><td>//Update your details</td></tr>
                </table>
            </center>
        </div>
       
    </body>
</html>
