/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Bird;
import com.fptuni.prj301.demo.model.BirdProfile;

import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import tool.utils.Tools;

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
                    String color = rs.getString("color");
                    Date addDate = rs.getTimestamp("addDate");
                    byte[] profilePic = rs.getBytes("profilePic");

                    Bird bird = new Bird(BID, UID, name, age, gender, description, color, addDate, profilePic);
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

    public Bird getBirdByBID(String bid) {
        Bird bird = null;
        String query = "SELECT * FROM Bird WHERE BID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, bid);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    bird = new Bird();
                    bird.setBID(rs.getString("BID"));
                    bird.setUID(rs.getString("UID"));
                    bird.setName(rs.getString("name"));
                    bird.setAge(rs.getInt("age"));
                    bird.setGender(rs.getString("gender"));
                    bird.setDescription(rs.getString("description"));
                    bird.setProfilePic(rs.getBytes("profilePic"));
                    bird.setColor(rs.getString("color"));
                    bird.setAddDate(rs.getDate("addDate"));

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bird;
    }

    public boolean update(BirdProfile bird) throws ClassNotFoundException {
        String sql = "UPDATE [Bird] SET name = ?, "
                + "age = ?, "
                + "gender = ?, description = ?, color = ? "
                + " WHERE BID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, bird.getName());
            ps.setInt(2, bird.getAge());
            ps.setString(3, bird.getGender());
            ps.setString(4, bird.getDescription());
            ps.setString(5, bird.getColor());
            ps.setString(6, bird.getBID());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to update due to internal error :(" + ex.getMessage());
        }
        return false;
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
                String color = rs.getString("color");
                Date addDate = rs.getTimestamp("addDate");
                byte[] profilePic = rs.getBytes("profilePic");
                bird = new Bird(BID, UID, name, age, gender, description, color, addDate, profilePic);
            }
            return bird;
        } catch (SQLException e) {
        }
        return bird;
    }

    public List<Bird> getRecords(int skip, int numOfRow) throws ClassNotFoundException {
        List<Bird> list = new ArrayList<>();
        String sql = "SELECT * FROM [Bird] "
                + "ORDER BY BID";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps;
            if (numOfRow == 20) {
                sql = sql + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, skip);
                ps.setInt(2, numOfRow);
            } else {
                ps = conn.prepareStatement(sql);
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String BID = rs.getString("BID");
                String UID = rs.getString("UID");
                String name = rs.getString("name");
                int age = rs.getInt("age");
                String gender = rs.getString("gender");
                String description = rs.getString("description");
                String color = rs.getString("color");
                Date addDate = rs.getTimestamp("addDate");
                byte[] profilePic = rs.getBytes("profilePic");
                Bird b = new Bird(BID, UID, name, age, gender, description, color, addDate, profilePic);
                list.add(b);
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return list;
    }

    public int getTotal() throws ClassNotFoundException {
        int count = 0;
        String sql = "SELECT * FROM [Bird] ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count++;
            }
            return count;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return count;
    }

    public void insert(Bird b) {
        Tools tool = new Tools();
        String sql = "INSERT INTO [Bird]"
                + " VALUES (?, ?, ?, ?, ?, ?, ?, "
                + "CONVERT(DATETIME,'" + tool.getCurrentDate() + "', 103), "
                + "?)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, b.getBID());
            ps.setString(2, b.getUID());
            ps.setString(3, b.getName());
            ps.setInt(4, b.getAge());
            ps.setString(5, b.getGender());
            ps.setString(6, b.getDescription());
            ps.setString(7, b.getColor());
            ps.setBytes(8, b.getProfilePic());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }

    }
}
