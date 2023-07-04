package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Feedback;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import tool.utils.Tools;

public class FeedbackManager {

    Tools tool = new Tools();

    public List<Feedback> getRecords(int skip, int numOfRow, String category, String sortCategory) throws ClassNotFoundException {
        List<Feedback> list = new ArrayList<>();
        String sql = "SELECT * FROM Feedback ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps;
            if (numOfRow == 20 && !category.isEmpty()) {
                sql = sql + "WHERE category = ? "
                        + "ORDER BY " + sortCategory + " DESC"
                        + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
                ps = conn.prepareStatement(sql);
                ps.setString(1, category);
                ps.setInt(2, skip);
                ps.setInt(3, numOfRow);
            } else {
                sql = sql + "ORDER BY " + sortCategory + " DESC";
                ps = conn.prepareStatement(sql);
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setFeID(rs.getString("FeID"));
                f.setUID(rs.getString("UID"));
                f.setTitle(rs.getString("title"));
                f.setDetail(rs.getString("detail"));
                String date = tool.trimDate(rs.getString("date"));
                date = tool.convertDisplayDate(date);
                f.setDate(date);
                f.setCategory(rs.getString("category"));
                f.setStatus(rs.getString("status"));

                list.add(f);
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return list;
    }

    public Feedback load(String FeID) {
        Feedback f = new Feedback();
        String sql = "SELECT * FROM Feedback WHERE FeID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, FeID);
            ResultSet rs;
            rs = ps.executeQuery();
            if (rs.next()) {
                f.setFeID(rs.getString("FeID"));
                f.setUID(rs.getString("UID"));
                f.setTitle(rs.getString("title"));
                f.setDetail(rs.getString("detail"));
                String date = tool.trimDate(rs.getString("date"));
                date = tool.convertDisplayDate(date);
                f.setDate(date);
                f.setCategory(rs.getString("category"));
                f.setStatus(rs.getString("status"));
            }
            rs.close();
            return f;
        } catch (SQLException e) {
        }
        return f;
    }

    public void insert(Feedback f) throws ClassNotFoundException, ParseException {
        String sql = "INSERT INTO Feedback VALUES (?, ?, ?, ?, "
                + " CONVERT(DATETIME,'" + f.getDate() + "', 103), ?, ?)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, f.getFeID());
            ps.setString(2, f.getUID());
            ps.setString(3, f.getTitle());
            ps.setString(4, f.getDetail());
            ps.setString(5, f.getCategory());
            ps.setString(6, f.getStatus());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }
    }

    public void update(Feedback f) throws ClassNotFoundException {
        String sql = "UPDATE Feedback SET title = ?, "
                + "detail = ? , category = ?, status = ? WHERE FeID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, f.getTitle());
            ps.setString(2, f.getDetail());
            ps.setString(3, f.getCategory());
            ps.setString(4, f.getStatus());
            ps.setString(5, f.getFeID());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to update due to internal error :(" + ex.getMessage());
        }
    }

    public int getNumberAsCategory(String category) throws ClassNotFoundException {
        int count = 0;
        String sql = "SELECT * FROM Feedback";
        try {
            Connection conn = DBUtils.getConnection();
            sql = sql + " WHERE category = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, category);
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

    public int getNumberAsStatus(String status) throws ClassNotFoundException {
        int count = 0;
        String sql = "SELECT * FROM Feedback";
        PreparedStatement ps;
        try {
            Connection conn = DBUtils.getConnection();
            if (!status.equals("all")) {
                sql = sql + " WHERE status = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, status);
            } else {
                ps = conn.prepareStatement(sql);
            }
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

    public static void main(String[] args) {
        FeedbackManager feedbackManager = new FeedbackManager();

        // Create a new Feedback object
        Feedback feedback = new Feedback();
        feedback.setFeID("FeID1");
        feedback.setUID("UID1");
        feedback.setTitle("Test Feedback");
        feedback.setDetail("This is a test feedback.");
        feedback.setDate("2023-07-04"); // Set the date in the format "yyyy-MM-dd"
        feedback.setCategory("General");
        feedback.setStatus("Open");

        // Insert the feedback into the database
        try {
            feedbackManager.insert(feedback);
            System.out.println("Feedback inserted successfully.");
        } catch (Exception e) {
            System.out.println("Failed to insert the feedback.");
            e.printStackTrace();
        }
    }
}
