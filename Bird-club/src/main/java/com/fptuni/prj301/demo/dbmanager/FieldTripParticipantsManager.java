/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.FieldTripParticipants;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL-7391
 */
public class FieldTripParticipantsManager {

    public boolean insert(FieldTripParticipants fieldTripParticipants) {
        String sql = "INSERT INTO [FieldTripParticipants] (FID, UID, docNo) VALUES (?, ?, ?)";
        String selectSql = "SELECT COUNT(*) FROM [FieldTripParticipants] WHERE FID = ? AND UID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement psSelect = conn.prepareStatement(selectSql);
                PreparedStatement psInsert = conn.prepareStatement(sql)) {

            psSelect.setString(1, fieldTripParticipants.getFid());
            psSelect.setString(2, fieldTripParticipants.getUid());
            
            ResultSet rs = psSelect.executeQuery();
            rs.next();
            int count = rs.getInt(1);

            if (count > 0) {
                // Record with same Fid and UId already exists
                return false;
            }
            
            psInsert.setString(1, fieldTripParticipants.getFid());
            psInsert.setString(2, fieldTripParticipants.getUid());
            psInsert.setString(3, fieldTripParticipants.getDocNo());
            
            int rowsAffected = psInsert.executeUpdate();
            
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean delete(String docNo) {
        String sql = "DELETE FROM [FieldTripParticipants] WHERE docNo = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, docNo);

            int rowsAffected = ps.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public static List<String> ExistingFID() {
        List<String> existingFIDs = new ArrayList<>();
        String sql = "SELECT FID FROM [FieldTripParticipants]";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                String fid = rs.getString("FID");
                existingFIDs.add(fid);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return existingFIDs;
    }

    public static List<String> ExistingDoc(String pattern) {
        List<String> existingDocNos = new ArrayList<>();
        String sql = "SELECT docNo FROM [FieldTripParticipants] WHERE docNo LIKE ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, pattern);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String docNo = rs.getString("docNo");
                    existingDocNos.add(docNo);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return existingDocNos;
    }

    public static void main(String[] args) {
        // Create a sample Tparticipation object
        FieldTripParticipants Fparticipation = new FieldTripParticipants();
        Fparticipation.setFid("FID1");
        Fparticipation.setUid("UID0");
        Fparticipation.setDocNo("Doc.F01");

        // Create an instance of TparticipationManager
        FieldTripParticipantsManager fieldTripParticipantsManager = new FieldTripParticipantsManager();

        // Call the insert method and check the result
        boolean success = fieldTripParticipantsManager.insert(Fparticipation);
        if (success) {
            System.out.println("Fparticipation inserted successfully!");
        } else {
            System.out.println("Failed to insert Fparticipation.");
        }
    }

}
