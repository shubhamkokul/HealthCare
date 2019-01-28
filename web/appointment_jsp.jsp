<%-- 
    Document   : Schedule_jsp
    Created on : Nov 9, 2018, 4:26:18 PM
    Author     : bodig
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="db.connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String pname = request.getParameter("pname");
            String pemail = request.getParameter("pemail");
            String doctorName = request.getParameter("doctorName");
            String appointmentDate = request.getParameter("appointmentDate");
            String appointmentTime = request.getParameter("appointmentTime");
            DbConnection db = new DbConnection();
            boolean insert = db.appointmentBooking(pname, pemail, doctorName, appointmentDate, appointmentTime);
            if(insert) {
                JOptionPane.showMessageDialog(null, "Appointment Booked");
                request.getRequestDispatcher("/appointment.jsp").forward(request, response);
            }
            else {
                JOptionPane.showMessageDialog(null, "Appointment Not Booked");
            }
        %>
    </body>
</html>
