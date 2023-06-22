package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.UserSession;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

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
        ps.setString(7, "guest"); 
        ps.setDate(8, new java.sql.Date(user.getExpriedDate().getTime()));
        ps.setString(9, user.getStatus());
        ps.setDate(10, new java.sql.Date(user.getSignUpDate().getTime()));
        ps.setString(11,null);
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



    
    public boolean updatePassword(String username, String newPassword) {
        String sql = "UPDATE [User] SET password = ? WHERE userName = ?";

        try (Connection conn = DBUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, newPassword);
            ps.setString(2, username);

            int rowsUpdated = ps.executeUpdate();

            // Check if any rows were affected by the update
            if (rowsUpdated > 0) {
                return true; // Password update successful
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false; // Password update failed
    }
    
    public  boolean updatePasswordByEmail(String email, String newPassword) {
    String sql = "UPDATE [User] SET password = ? WHERE email = ?";

    try (Connection conn = DBUtils.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, newPassword);
        ps.setString(2, email);

        int rowsUpdated = ps.executeUpdate();

        // Check if any rows were affected by the update
        if (rowsUpdated > 0) {
            return true; // Password update successful
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return false; // Password update failed
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
        String username = "duc"; // Replace with the username you want to search

        UserAccessManager manager = new UserAccessManager();
        UserSession user = manager.searchByName(username);

        if (user != null) {
            System.out.println("User found:");
            System.out.println("User ID: " + user.getUserId());
            System.out.println("Username: " + user.getUserName());
            System.out.println("Full Name: " + user.getFullName());
            System.out.println("Phone: " + user.getPhone());
            System.out.println("Email: " + user.getEmail());
            System.out.println("Role: " + user.getRole());
            System.out.println("Expired Date: " + user.getExpriedDate());
            System.out.println("Status: " + user.getStatus());
            System.out.println("Signup Date: " + user.getSignUpDate());
            System.out.println("MID: " + user.getMID());
            System.out.println("Gender: " + user.getGender());
        } else {
            System.out.println("User not found.");
        }
    }

}


