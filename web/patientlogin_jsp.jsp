<%-- 
    Document   : patientlogin_jsp
    Created on : Oct 30, 2018, 11:21:06 PM
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
            String username = request.getParameter("Email");
            String password = request.getParameter("Password");
            String pageName = request.getParameter("pageName");
            DbConnection db = new DbConnection();
            String temp = db.selectFromDb(username,password,pageName);
            if(!temp.isEmpty()){
                response.setContentType("text/html");
                request.setAttribute("firstName", temp);
                request.getRequestDispatcher("/pscreen.html").forward(request, response);
            }
            else{
                JOptionPane.showMessageDialog(null, "Incorrect Credentials");
                response.sendRedirect("patient.jsp");
            }
        %>
    </body>
</html>
