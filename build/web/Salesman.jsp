<%-- 
    Document   : Salesman
    Created on : 27 Jul, 2023, 11:50:04 AM
    Author     : prabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salesman Dashboard</title>
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
        
        
        
        <div width='100%'> <Center><h1>Salesman's Dashboard</h1>
                <table width=100%>
                    <tr><th>Welcome:<% out.println(user);    %></th><th>Designation:Salesman</th><th>Logout</th></tr>   
                    
                </table></Center>  </div>
        <div width='100%'>
            <center>
                <table border cellspacing=170px bgcolor=#eee
                       width=100% >
                    
                    <tr><td>Pending orders</td><td>Your Targets</td><td>Today's order</td></tr>
                    <tr><td>Returned order details</td><td>Update todays work</td><td>Update Profile details</td></tr>
                </table>
            </center>
        </div>
       
    </body>
</html>
