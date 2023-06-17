/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.UserSession;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


/**
 *
 * @author Administrator
 */
public class StaffAccountManager {
        public boolean approveUser(String UID, String role) {
        String sql = "UPDATE [User] SET role = ? WHERE UID = ?";

        try (Connection conn = DBUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, role);
            ps.setString(2, UID);
            int rowsAffected = ps.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
        
   public List<UserSession> getUsersWithUnactiveStatus() {
        List<UserSession> users = new ArrayList<>();
        String sql = "SELECT * FROM [User] WHERE role = ?";

        try (Connection conn = DBUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, "guest");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                UserSession user = new UserSession();
                user.setUserId(rs.getString("UID"));
                user.setUserName(rs.getString("userName"));
                user.setFullName(rs.getString("fullName"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
                user.setExpriedDate(rs.getDate("expiredDate"));
                user.setStatus(rs.getString("status"));
                user.setSignUpDate(rs.getDate("signUpDate"));
                user.setMID(rs.getString("MID"));
                user.setGender(rs.getString("gender"));

                users.add(user);
            }

            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }
   
 public String getUserEmail(String userId) {
    String email = null;
    String sql = "SELECT email FROM [User] WHERE UID = ?";

    try (Connection conn = DBUtils.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, userId);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            email = rs.getString("email");
        }

        rs.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return email;
}
   public static void main(String[] args) {
    String userId = "u48218"; // Replace with the actual user ID you want to approve

    StaffAccountManager userDao = new StaffAccountManager();
    String email = userDao.getUserEmail(userId);
        System.out.println("Email :"+ email);

}
   
}
