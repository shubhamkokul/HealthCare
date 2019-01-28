/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db.connection;

import static java.lang.Math.abs;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author castiel
 */
public class DbConnection {

    Connection con = null;

    public DbConnection() {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/medical_report_system",
                            "postgres", "Moni9515$");
        } catch (Exception ex) {
            Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String selectFromDb(String username, String password, String pageName) {
        String temp = "";
        try {
            String query = "SELECT * FROM USERS WHERE EMAIL='" + username + "' AND PASSWORD='" + password + "' AND TYPE='" + pageName + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                temp = rs.getString("FIRSTNAME");
                
            }

        } catch (Exception ex) {
            Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return temp;
    }

    public boolean insertIntoDb(String firstname, String lastname, String username, String password, String type) {
        boolean insert = true;
        try {
            String query = " insert into users (ID, FIRSTNAME, LASTNAME, EMAIL, PASSWORD, TYPE)"
                    + " values (?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStmt = con.prepareStatement(query);
            Random random = new Random();
            preparedStmt.setInt(1, abs(random.nextInt()));
            preparedStmt.setString(2, firstname);
            preparedStmt.setString(3, lastname);
            preparedStmt.setString(4, username);
            preparedStmt.setString(5, password);
            preparedStmt.setString(6, type);
            insert = preparedStmt.execute();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    
    public boolean appointmentBooking(String name, String email, String doctorName, String date, String time) {
        boolean appointment = true;
        String doctor = "";
        try {
            String query = "SELECT * FROM USERS WHERE ID=" + Integer.parseInt(doctorName);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                doctor = rs.getString("FIRSTNAME");
            }
            }
            catch(Exception e) {
                
            }
        try {
            String query = " insert into appointment (APPOINTMENTID, NAME, EMAIL, DOCTORNAME, DATE, TIME)"
                    + " values (?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            Random random = new Random();
            preparedStatement.setInt(1, abs(random.nextInt()));
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, doctor);
            preparedStatement.setString(5, date);
            preparedStatement.setString(6, time);
            appointment = preparedStatement.execute();
            con.close();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    
    public ArrayList<String> getAppointment(String name) {
        ArrayList<String> appointment = new ArrayList<>();
        String listItem = "";
        try {
            String query = "SELECT * FROM APPOINTMENT WHERE DOCTORNAME='" + name + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            appointment.add("<table><tbody>");
            while (rs.next()) {
                appointment.add("<tr>"+"<td>"+rs.getString("name")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("date")+"</td><td>"+rs.getString("time")+"</td></tr>");
            }
            appointment.add("/<tbody></table>");

        } catch (Exception ex) {
            Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return appointment;
        
    }

}
