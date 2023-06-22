/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Bird;
import com.fptuni.prj301.demo.model.Member;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class BirdManager {

    public List<Bird> getBirdsByUID(String UID) {
        List<Bird> birds = new ArrayList<>();
        String sql = "SELECT * FROM Bird WHERE UID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, UID);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String BID = rs.getString("BID");
                    String name = rs.getString("name");
                    int age = rs.getInt("age");
                    String gender = rs.getString("gender");
                    String description = rs.getString("description");
                    String imageURL = rs.getString("imageURL");
                    String color = rs.getString("color");
                    Date addDate = rs.getTimestamp("addDate");

                    Bird bird = new Bird(BID, UID, name, age, gender, description, imageURL, color, addDate);
                    birds.add(bird);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return birds;
    }

    
    public String getBirdOwnerUIDByBID(String BID) {
        String sql = "SELECT * FROM [Bird] WHERE BID = ?";
        String UID = null;
         try {
                Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, BID);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    UID = rs.getString("UID");
                }
                return UID;
        } catch (SQLException e) {
        }
         return UID;
    }
    
    public Bird load(String BID) {
        String sql = "SELECT * FROM [Bird] WHERE BID = ?";
        Bird bird = new Bird();
         try {
                Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, BID);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    String UID = rs.getString("UID");
                    String name = rs.getString("name");
                    int age = rs.getInt("age");
                    String gender = rs.getString("gender");
                    String description = rs.getString("description");
                    String imageURL = rs.getString("imageURL");
                    String color = rs.getString("color");
                    Date addDate = rs.getTimestamp("addDate");

                    bird = new Bird(BID, UID, name, age, gender, description, imageURL, color, addDate);
                }
                return bird;
        } catch (SQLException e) {
        }
         return bird;
    }
}
