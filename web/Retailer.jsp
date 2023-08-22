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
        <title>Retailer Dashboard</title>
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
    <body>
        <% 
            Cookie c[]=request.getCookies();  
        String user=c[1].getValue().toString();
        %>
        
        <div width='100%'> <Center><h1>Retailer's Dashboard</h1>
                <table width=100%>
                    <tr><th>Welcome:<% out.println(user);%></th><th>Designation:Retailer</th><th>Logout</th></tr>   
                    
                </table></Center>  </div>
        <div width='100%'>
            <center>
                <table border cellspacing=170px bgcolor=#eee
                       width=100% >
                    
                    <tr><td>Pending orders</td><td>Avilable Salesman</td><td>Make a new order</td></tr>
                    <tr><td>new order of customers</td><td>Check your stock</td><td>Send complaint to admin</td></tr>
                </table>
            </center>
        </div>
       
    </body>
</html>
