<%-- 
    Document   : Admin
    Created on : 27 Jul, 2023, 11:50:04 AM
    Author     : prabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
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
        
        <div width='100%'> <Center><h1>Admin's Dashboard</h1>
                <table width=100%>
                    <tr><th>Welcome:<% out.println(user);    %></th><th>Designation:Admin</th><th>Logout</th></tr>   
                    
                </table></Center>  </div>
        <div width='100%'>
            <center>
                <table border cellspacing=170px bgcolor=#eee
                       width=100% >
                    
                    <tr><td>Add stock </td><td>View Employees</td><td> New orders</td></tr>
                    <tr><td>Block user</td><td>Customer's Feedback and Complaints</td><td>View mart stock and manage salary</td></tr>
                </table>
            </center>
        </div>
       
    </body>
</html>
