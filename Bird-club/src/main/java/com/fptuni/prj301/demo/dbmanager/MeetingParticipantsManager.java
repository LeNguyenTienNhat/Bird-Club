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
        String selectSql = "SELECT COUNT(*) FROM [MeetingParticipants] WHERE MeID = ? AND UID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement psSelect = conn.prepareStatement(selectSql);
                PreparedStatement psInsert = conn.prepareStatement(sql)) {

            psSelect.setString(1, meetingparticipants.getMeID());
            psSelect.setString(2, meetingparticipants.getUID());

            ResultSet rs = psSelect.executeQuery();
            rs.next();
            int count = rs.getInt(1);

            if (count > 0) {
                // Record with same Fid and UId already exists
                return false;
            }

            psInsert.setString(1, meetingparticipants.getMeID());
            psInsert.setString(2, meetingparticipants.getUID());
            psInsert.setString(3, meetingparticipants.getDocNo());

            int rowsAffected = psInsert.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean delete(String docNo) {
        String sql = "DELETE FROM [MeetingParticipants] WHERE docNo = ?";

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

    public static List<String> ExistingMeID() {
        List<String> existingMeIDs = new ArrayList<>();
        String sql = "SELECT MeID FROM [MeetingParticipants]";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                String meid = rs.getString("MeID");
                existingMeIDs.add(meid);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return existingMeIDs;
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


    public List<MeetingParticipants> getParticipantList(String MeID) {
        List<MeetingParticipants> list = new ArrayList();
        String sql = "SELECT * FROM [MeetingParticipants] WHERE MeID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, MeID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                MeetingParticipants mp = new MeetingParticipants();
                mp.setMeID(rs.getString("MeID"));
                mp.setUID(rs.getString("UID"));
                mp.setDocNo(rs.getString("docNo"));
                list.add(mp);
            }
        } catch (SQLException e) {
        }
        return list;
    }
}
