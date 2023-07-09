/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.fptuni.prj301.demo.model.MemberShip;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class MemberShipManager {

    public List<MemberShip> getAllRecords() {
        List<MemberShip> records = new ArrayList<>();
        String sql = "SELECT * FROM Membership WHERE status='available' ";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                String MID = rs.getString("MID");
                String name = rs.getString("name");
                BigDecimal value = rs.getBigDecimal("value");
                String duration = rs.getString("duration");
                String description = rs.getString("description");
                String status = rs.getString("status");

                MemberShip record = new MemberShip(MID, name, value, duration, description, status);
                records.add(record);
            }
        } catch (SQLException e) {
            // Handle the exception appropriately
            e.printStackTrace();
        }

        return records;
    }

    public MemberShip getMembershipById(String MID) {
        String sql = "SELECT * FROM Membership WHERE MID = ?";
        MemberShip membership = new MemberShip();
        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, MID);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String membershipID = rs.getString("MID");
                    String name = rs.getString("name");
                    BigDecimal value = rs.getBigDecimal("value");
                    String duration = rs.getString("duration");
                    String description = rs.getString("description");
                    String status = rs.getString("status");

                    membership = new MemberShip(membershipID, name, value, duration, description, status);
                }
            }
        } catch (SQLException e) {
            // Handle the exception appropriately
            e.printStackTrace();
        }

        return membership;
    }

    public boolean updateMembership(String membership, String userName) {
        String sql = "UPDATE [User] SET MID = ? WHERE userName = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, membership);
            ps.setString(2, userName);

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

    public boolean updateExpiredDay(String membership, String UID) {
        String sql = "SELECT duration FROM Membership WHERE MID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, membership);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String duration = rs.getString("duration");
                int months = extractMonthsFromDuration(duration);
                int days = months * 30; // Convert months to days

                String updateSql = "UPDATE [User] SET expiredDate = DATEADD(DAY, ?, expiredDate) WHERE userName = ?";

                try (PreparedStatement updatePs = conn.prepareStatement(updateSql)) {
                    updatePs.setInt(1, days);
                    updatePs.setString(2, UID);

                    int rowsUpdated = updatePs.executeUpdate();

                    // Check if any rows were affected by the update
                    return rowsUpdated > 0;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false; // Update failed
    }

    private int extractMonthsFromDuration(String duration) {
        // Remove any leading or trailing whitespace
        String trimmedDuration = duration.trim();

        // Extract the numeric value
        int months = Integer.parseInt(trimmedDuration.split(" ")[0]);

        return months;
    }

    public static void main(String[] args) {
        String membership = "MID01"; // Replace with a valid membership ID from your database
        String UID = "a"; // Replace with a valid UID from your database
        MemberShipManager a = new MemberShipManager();
        // Call the updateExpiredDay method
        boolean updateSuccessful = a.updateMembership(membership, UID);

        // Check the result
        if (updateSuccessful) {
            System.out.println("Expiration date updated successfully.");
        } else {
            System.out.println("Failed to update expiration date.");
        }
    }

    public void insert(MemberShip m) {
        String sql = "INSERT INTO Membership VALUES (?, ?, ?, ?, ?, ?)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, m.getMID());
            ps.setString(2, m.getName());
            ps.setBigDecimal(3, m.getValue());
            ps.setString(4, m.getDuration());
            ps.setString(5, m.getDescription());
            ps.setString(6, m.getStatus());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }
    }
    
    public void update(MemberShip m) {
        String sql = "UPDATE Membership SET name = ?, value = ?, duration = ?, description = ?,"
                + "status = ? WHERE MID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);       
            ps.setString(1, m.getName());
            ps.setBigDecimal(2, m.getValue());
            ps.setString(3, m.getDuration());
            ps.setString(4, m.getDescription());
            ps.setString(5, m.getStatus());
            ps.setString(6, m.getMID());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }
    }
}
