/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Bird;
import com.fptuni.prj301.demo.model.Tparticipation;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class TparticipationManager {

    public boolean insert(Tparticipation tparticipation) {
        String sql = "INSERT INTO [Tparticipation] (TID, BID, docNo, achievement, score) VALUES (?, ?, ?, ?, ?)";
        String selectSql = "SELECT COUNT(*) FROM [Tparticipation] WHERE TID = ? AND BID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement psSelect = conn.prepareStatement(selectSql);
                PreparedStatement psInsert = conn.prepareStatement(sql)) {

            psSelect.setString(1, tparticipation.getTID());
            psSelect.setString(2, tparticipation.getBID());

            ResultSet rs = psSelect.executeQuery();
            rs.next();
            int count = rs.getInt(1);

            if (count > 0) {
                // Record with same BID and TID already exists
                return false;
            }

            psInsert.setString(1, tparticipation.getTID());
            psInsert.setString(2, tparticipation.getBID());
            psInsert.setString(3, tparticipation.getDocNo());
            psInsert.setString(4, tparticipation.getAchievement());
            psInsert.setBigDecimal(5, tparticipation.getScore()); // Set the score value

            int rowsAffected = psInsert.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean delete(String docNo) {
        String sqlTParticipants = "DELETE FROM [ChimOwner].[dbo].[Tparticipation] WHERE docNo = ?";
        String sqlFieldtripParticipants = "DELETE FROM [ChimOwner].[dbo].[FieldTripParticipants] WHERE docNo = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement psTParticipants = conn.prepareStatement(sqlTParticipants);
                PreparedStatement psFieldtripParticipants = conn.prepareStatement(sqlFieldtripParticipants)) {

            // Set the document number parameter for both prepared statements
            psTParticipants.setString(1, docNo);
            psFieldtripParticipants.setString(1, docNo);

            // Execute the delete statements for TParticipants and FieldtripParticipants tables
            int rowsAffectedTParticipants = psTParticipants.executeUpdate();
            int rowsAffectedFieldtripParticipants = psFieldtripParticipants.executeUpdate();

            // Check if any rows were affected in any of the tables
            return (rowsAffectedTParticipants > 0) || (rowsAffectedFieldtripParticipants > 0);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public static List<String> ExistingTID() {
        List<String> existingTIDs = new ArrayList<>();
        String sql = "SELECT TID FROM [Tparticipation]";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                String tid = rs.getString("TID");
                existingTIDs.add(tid);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return existingTIDs;
    }

    public static List<String> ExistingDoc(String pattern) {
        List<String> existingDocNos = new ArrayList<>();
        String sql = "SELECT docNo FROM [Tparticipation] WHERE docNo LIKE ?";

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

    public List<Tparticipation> getParticipantList(String TID) {
        List<Tparticipation> list = new ArrayList<>();
        String sql = "SELECT * FROM [Tparticipation] WHERE TID = ? ORDER BY score DESC";
        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, TID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tparticipation t = new Tparticipation();
                t.setTID(rs.getString("TID"));
                t.setBID(rs.getString("BID"));
                t.setDocNo(rs.getString("docNo"));
                t.setAchievement(rs.getString("achievement"));
                t.setScore(rs.getBigDecimal("score"));
                list.add(t);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Tparticipation> getBirdList(String TID) {
        List<Tparticipation> list = new ArrayList<>();
        String sql = "SELECT TOP 10 T.*, B.name AS birdName, B.profilePic AS birdProfilePic "
                + "FROM [Tparticipation] T "
                + "JOIN [Bird] B ON T.BID = B.BID "
                + "WHERE T.TID = ? "
                + "ORDER BY T.score DESC";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, TID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Tparticipation t = new Tparticipation();
                t.setTID(rs.getString("TID"));
                t.setBID(rs.getString("BID"));
                t.setDocNo(rs.getString("docNo"));
                t.setAchievement(rs.getString("achievement"));
                t.setScore(rs.getBigDecimal("score"));

                Bird bird = new Bird();
                bird.setBID(rs.getString("BID"));
                bird.setName(rs.getString("birdName"));
                bird.setProfilePic(rs.getBytes("birdProfilePic"));

                t.setBird(bird);

                list.add(t);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    public Tparticipation getParticipant(String TID, String bid) {
        Tparticipation t = null;
        String sql = "SELECT * FROM [Tparticipation] WHERE TID = ? AND BID = ? ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, TID);
            ps.setString(2, bid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                t = new Tparticipation();
                t.setTID(rs.getString("TID"));
                t.setBID(rs.getString("BID"));
                t.setDocNo(rs.getString("docNo"));
                t.setAchievement(rs.getString("achievement"));
                t.setScore(rs.getBigDecimal("score"));
            }
        } catch (SQLException e) {
            // Handle the exception appropriately
        }
        return t;
    }

    public void updateAchievement(String docNo, String achievement) {
        String sql = "UPDATE [Tparticipation] SET achievement = ? WHERE docNo = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, achievement);
            ps.setString(2, docNo);
            ps.executeUpdate();
        } catch (SQLException ex) {
        }
    }

    public List<Tparticipation> getRecords(int skip, int numOfRow, String TID) {
        List<Tparticipation> list = new ArrayList();
        String sql = "SELECT * FROM [Tparticipation] WHERE TID = ? ORDER BY score DESC OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, TID);
            ps.setInt(2, skip);
            ps.setInt(3, numOfRow);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tparticipation t = new Tparticipation();
                t.setTID(rs.getString("TID"));
                t.setBID(rs.getString("BID"));
                t.setDocNo(rs.getString("docNo"));
                t.setAchievement(rs.getString("achievement"));
                t.setScore(rs.getBigDecimal("score"));
                list.add(t);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public int getParticipantListSize(String TID) {
        int count = 0;
        String sql = "SELECT COUNT(BID) FROM [Tparticipation] WHERE TID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, TID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("");
            }
        } catch (SQLException e) {
        }
        return count;
    }

    public List<Tparticipation> getAllParticipations(String bid) {
        List<Tparticipation> list = new ArrayList();
        String sql = "SELECT * FROM [Tparticipation] WHERE BID = ? ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, bid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tparticipation t = new Tparticipation();
                t.setTID(rs.getString("TID"));
                t.setBID(rs.getString("BID"));
                t.setDocNo(rs.getString("docNo"));
                t.setAchievement(rs.getString("achievement"));
                t.setScore(rs.getBigDecimal("score"));
                list.add(t);
            }
            return list;
        } catch (SQLException e) {
            // Handle the exception appropriately
        }
        return list;
    }
    
        public void updateScore(int score, String docNo) {
        String sql = "UPDATE [Tparticipation] SET score = ? WHERE docNo = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, score);
            ps.setString(2, docNo);
            ps.executeUpdate();
        } catch (SQLException ex) {
        }
    }

}
