<%-- 
    Document   : doctor_jsp
    Created on : Oct 30, 2018, 11:20:54 PM
    Author     : castiel
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="db.connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
      <%
            String username = request.getParameter("emailid");
            String password = request.getParameter("password");
            String pageName = request.getParameter("pageName");
            DbConnection db = new DbConnection();
            String temp = db.selectFromDb(username,password,pageName);
            if(!temp.isEmpty()){
                response.setContentType("text/html");
                request.setAttribute("firstName", temp);
                request.getRequestDispatcher("/Docdashboard.jsp").forward(request, response);
            }
            else{
                JOptionPane.showMessageDialog(null, "Incorrect Credentials");
                response.sendRedirect("DoctorLogin.jsp");
            }
        %>
    </body>
</html>
