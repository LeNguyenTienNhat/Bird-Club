package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.UserSession;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;



/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author DUNGHUYNH
 */
public class UserAccessManager {

       public static UserSession login(String username, String password) {
        UserSession user = null;
        String sql = "SELECT * FROM [User] WHERE username = ? and password = ?";

        try (Connection conn = DBUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Retrieve user attributes from the result set
                String UID = rs.getString("UID");
                String userName = rs.getString("userName");
                String fullName = rs.getString("fullName");
                String phone = rs.getString("phone");
                String email = rs.getString("email");
                String retrievedPassword = rs.getString("password");
                String role = rs.getString("role");
                Date expiredDate = rs.getDate("expiredDate");
                String status = rs.getString("status");
                Date signupDate = rs.getDate("signupDate");
                String MID = rs.getString("MID");
                String gender = rs.getString("gender");

                // Create a UserSession object with the retrieved attributes
                user = new UserSession();
                user.setUserId(UID);
                user.setUserName(userName);
                user.setFullName(fullName);
                user.setPhone(phone);
                user.setEmail(email);
                user.setPassword(retrievedPassword);
                user.setRole(role);
                user.setExpriedDate(expiredDate);
                user.setStatus(status);
                user.setSignUpDate(signupDate);
                user.setMID(MID);
                user.setGender(gender);
            }

            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

  public boolean checkUserExists(String username) {
    String sql = "SELECT COUNT(*) FROM [User] WHERE username = ? ";

    try (Connection conn = DBUtils.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, username);
 
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            int count = rs.getInt(1);
            return count > 0;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return false;
}



public boolean SignUp(UserSession user) {
    String sql = "INSERT INTO [User] (UID, userName, fullName, phone, email, password, role, expiredDate, status, signupDate, MID, Gender) " +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    try (Connection conn = DBUtils.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
        ps.setString(1, user.getUserId());
        ps.setString(2, user.getUserName());
        ps.setString(3, user.getFullName());
        ps.setString(4, user.getPhone());
        ps.setString(5, user.getEmail());
        ps.setString(6, user.getPassword());
        ps.setString(7, "member"); // Assuming 'role' is always 'member' for sign up
        ps.setDate(8, new java.sql.Date(user.getExpriedDate().getTime()));
        ps.setString(9, user.getStatus());
        ps.setDate(10, new java.sql.Date(user.getSignUpDate().getTime()));
        ps.setString(11, user.getMID());
        ps.setString(12, user.getGender());

        int rowsAffected = ps.executeUpdate();

        if (rowsAffected > 0) {
            ResultSet generatedKeys = ps.getGeneratedKeys();
            if (generatedKeys.next()) {
                int generatedId = generatedKeys.getInt(1);
                user.setUserId(String.valueOf(generatedId)); // Set the generated UID
            }
            generatedKeys.close();
            return true;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return false;
}



    
       public static void updateUserPassword(String password, String username) {

        String sql = "UPDATE [user]  \n"
                + "SET [password] = ? \n"
                + "where [name] = ? \n";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, password);
            ps.setString(2, username);
            ResultSet rs = ps.executeQuery();
            rs.close();          
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            System.out.println("Query Student error!" + ex.getMessage());
        }

    }

    public UserSession searchByName(String username) {
        UserSession user = null;
        String sql = "SELECT * FROM [User] WHERE username = ?";

        try (Connection conn = DBUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new UserSession();
                user.setUserId(rs.getString("UID"));
                user.setUserName(rs.getString("userName"));
                user.setFullName(rs.getString("fullName"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
                user.setExpriedDate(rs.getDate("expiredDate"));
                user.setStatus(rs.getString("status"));
                user.setSignUpDate(rs.getDate("signupDate"));
                user.setMID(rs.getString("MID"));
                user.setGender(rs.getString("gender"));
            }

            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    
public static void main(String[] args) {
    // Create a UserSession object with dummy data
    UserSession user = new UserSession();
    user.setUserName("testuser2");
    user.setFullName("John Doe");
    user.setPhone("1234567890");
    user.setEmail("testuser@example.com");
    user.setPassword("testpass");
    user.setExpriedDate(new Date());
    user.setSignUpDate(new Date());
    user.setMID("M123456");
    user.setGender("male");

    // Create a UserAccessManager instance
    UserAccessManager userDao = new UserAccessManager();

    // Call the SignUp method and check the result
    boolean success = userDao.SignUp(user);
    System.out.println("ExpiredDate: " + user.getExpriedDate());
    System.out.println("SignUpDate: " + user.getSignUpDate());
    System.out.println("User ID: " + user.getUserId());

    if (success) {
        System.out.println("Signup successful. User ID: " + user.getUserId());
    } else {
        System.out.println("Signup failed.");
    }
}

}


