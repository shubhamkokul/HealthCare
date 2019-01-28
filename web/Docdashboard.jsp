<%-- 
    Document   : loginPage
    Created on : Oct 31, 2018, 12:22:13 AM
    Author     : castiel
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db.connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            Welcome <%
            ArrayList<String> temp = new ArrayList<>();
            String firstName = (String)request.getAttribute("firstName");
            DbConnection db = new DbConnection();
            temp = db.getAppointment(firstName);
            %><%= firstName%>
</h1>
            <div>
                <% 
                temp = db.getAppointment(firstName);
                %>
            </div>
    </body>
</html>
