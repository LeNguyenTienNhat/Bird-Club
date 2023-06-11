/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.MeetingParticipants;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Legion
 */
public class MeetingParticipantsManager {
     public boolean insert(MeetingParticipants meetingparticipants) {
    String sql = "INSERT INTO [MeetingParticipants] (MeID, UID, docNo) VALUES (?, ?, ?)";

    try (Connection conn = DBUtils.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, meetingparticipants.getMeID());
        ps.setString(2, meetingparticipants.getUID());
        ps.setString(3, meetingparticipants.getDocNo());
       // Set the achievement value directly

        int rowsAffected = ps.executeUpdate();

        return rowsAffected > 0;
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return false;
}
  public static List<String> ExistingMeID() {
        List<String> existingTIDs = new ArrayList<>();
        String sql = "SELECT MeID FROM [MeetingParticipants]";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                String tid = rs.getString("MeID");
                existingTIDs.add(tid);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return existingTIDs;
    }
public static List<String> ExistingDoc(String pattern) {
    List<String> existingDocNos = new ArrayList<>();
    String sql = "SELECT docNo FROM [MeetingParticipants] WHERE docNo LIKE ?";

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
        MeetingParticipants meetingparticipants = new MeetingParticipants();
        meetingparticipants.setMeID("MeID1");
        meetingparticipants.setUID("UID0");
        meetingparticipants.setDocNo("Doc.T01");
        

        // Create an instance of TparticipationManager
        MeetingParticipantsManager meetingparticipantsManager = new MeetingParticipantsManager();

        // Call the insert method and check the result
        boolean success = meetingparticipantsManager.insert(meetingparticipants);
        if (success) {
            System.out.println("MeetingParticipants inserted successfully!");
        } else {
            System.out.println("Failed to insert MeetingParticipants.");
        }
    }
}


