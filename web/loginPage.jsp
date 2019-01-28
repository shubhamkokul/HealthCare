<%-- 
    Document   : loginPage
    Created on : Oct 31, 2018, 12:22:13 AM
    Author     : castiel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome <%
            String firstName = (String)request.getAttribute("firstName");
            out.print(firstName);
            %></h1>
    </body>
</html>
