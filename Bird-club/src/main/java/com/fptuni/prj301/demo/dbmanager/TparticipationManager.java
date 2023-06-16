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

    try (Connection conn = DBUtils.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, tparticipation.getTid());
        ps.setString(2, tparticipation.getBid());
        ps.setString(3, tparticipation.getDocNo());
        ps.setString(4, tparticipation.getAchievement()); // Set the achievement value directly

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
     public static void main(String[] args) {
        // Create a sample Tparticipation object
        Tparticipation tparticipation = new Tparticipation();
        tparticipation.setTid("TID1");
        tparticipation.setBid("BID0");
        tparticipation.setDocNo("Doc.T01");
        tparticipation.setAchievement("Sample Achievement");

        // Create an instance of TparticipationManager
        TparticipationManager tparticipationManager = new TparticipationManager();

        // Call the insert method and check the result
        boolean success = tparticipationManager.insert(tparticipation);
        if (success) {
            System.out.println("Tparticipation inserted successfully!");
        } else {
            System.out.println("Failed to insert Tparticipation.");
        }
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
}
