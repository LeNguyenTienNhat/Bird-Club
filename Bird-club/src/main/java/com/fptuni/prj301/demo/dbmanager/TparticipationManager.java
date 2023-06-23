/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

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
        String sql = "INSERT INTO [Tparticipation] (TID, BID, docNo, achievement) VALUES (?, ?, ?, ?)";
        String selectSql = "SELECT COUNT(*) FROM [Tparticipation] WHERE TID = ? AND BID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement psSelect = conn.prepareStatement(selectSql);
                PreparedStatement psInsert = conn.prepareStatement(sql)) {

            psSelect.setString(1, tparticipation.getTid());
            psSelect.setString(2, tparticipation.getBid());

            ResultSet rs = psSelect.executeQuery();
            rs.next();
            int count = rs.getInt(1);

            if (count > 0) {
                // Record with same Bid and TId already exists
                return false;
            }

            psInsert.setString(1, tparticipation.getTid());
            psInsert.setString(2, tparticipation.getBid());
            psInsert.setString(3, tparticipation.getDocNo());
            psInsert.setString(4, "non"); // Set the achievement value directly

            int rowsAffected = psInsert.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean delete(String docNo) {
        String sql = "DELETE FROM [Tparticipation] WHERE docNo = ?";

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
        List<Tparticipation> list = new ArrayList();
        String sql = "SELECT * FROM [Tparticipation] WHERE TID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, TID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tparticipation t = new Tparticipation();
                t.setTid(rs.getString("TID"));
                t.setBid(rs.getString("BID"));
                t.setDocNo(rs.getString("docNo"));
                t.setAchievement(rs.getString("achievement"));
                list.add(t);
            }
        } catch (SQLException e) {
        }
        return list;
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
        String sql = "SELECT * FROM [Tparticipation] WHERE TID = ? ORDER BY TID OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, TID);
            ps.setInt(2, skip);
            ps.setInt(3, numOfRow);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tparticipation t = new Tparticipation();
                t.setTid(rs.getString("TID"));
                t.setBid(rs.getString("BID"));
                t.setDocNo(rs.getString("docNo"));
                t.setAchievement(rs.getString("achievement"));
                list.add(t);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public int getParticipantListSize(String TID) {
        int count = 0;
        String sql = "SELECT * FROM [Tparticipation] WHERE TID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, TID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count++;
            }
        } catch (SQLException e) {
        }
        return count;
    }
    
    public static void main(String[] args) {
    // Create a sample Tparticipation object
    Tparticipation tparticipation = new Tparticipation();
    tparticipation.setTid("T123");
    tparticipation.setBid("B456");
    tparticipation.setDocNo("D789");

    // Create an instance of the class containing the insert method
     TparticipationManager yourClass = new  TparticipationManager();

    // Call the insert method and check the result
    boolean isSuccess = yourClass.insert(tparticipation);

    if (isSuccess) {
        System.out.println("Insertion successful");
    } else {
        System.out.println("Insertion failed");
    }
}

}
