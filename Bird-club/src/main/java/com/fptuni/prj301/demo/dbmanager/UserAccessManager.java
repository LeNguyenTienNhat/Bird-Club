package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.UserSession;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
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
                user.setUID(UID);
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
    String sql = "INSERT INTO [User] " +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    try (Connection conn = DBUtils.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
        ps.setString(1, user.getUID());
        ps.setString(2, user.getUserName());
        ps.setString(3, user.getPassword());
        ps.setString(4, user.getFullName());
        ps.setString(5, user.getGender());    
        ps.setString(6, user.getPhone());
        ps.setString(7, user.getEmail());      
        ps.setString(8, user.getRole()); 
        ps.setString(9, user.getStatus());
        ps.setDate(10, new java.sql.Date(user.getSignUpDate().getTime()));
        ps.setDate(11, new java.sql.Date(user.getExpriedDate().getTime()));
        ps.setString(12,user.getMID());
        int rowsAffected = ps.executeUpdate();

        if (rowsAffected > 0) {
            ResultSet generatedKeys = ps.getGeneratedKeys();
            if (generatedKeys.next()) {
                int generatedId = generatedKeys.getInt(1);
                user.setUID(String.valueOf(generatedId)); // Set the generated UID
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
    String sql = "SELECT *, profilePicture FROM [User] WHERE username = ?";

    try (Connection conn = DBUtils.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, username);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            user = new UserSession();
            user.setUID(rs.getString("UID"));
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
            // Update to set profile picture from the image field
            user.setImage(rs.getBytes("profilePicture"));
        }

        rs.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return user;
}
     public UserSession searchName(String username) {
        UserSession user = null;
        String sql = "SELECT * FROM [User] WHERE [UID] = ?";

        try (Connection conn = DBUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new UserSession();
                user.setUID(rs.getString("UID"));
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
    String username = "huy";
    UserAccessManager u = new UserAccessManager();
    UserSession user = u.searchByName(username);
    if (user != null) {
        // Access the profile picture as a byte array
        byte[] profilePicture = user.getImage();
        System.out.println(Arrays.toString(profilePicture));
        // Perform further actions with the profile picture data
        // ...
    }
}

}


