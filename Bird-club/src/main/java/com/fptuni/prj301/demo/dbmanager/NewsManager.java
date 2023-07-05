package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.News;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import tool.utils.Tools;

public class NewsManager {

    Tools tool = new Tools();

    public void insert(News n) throws ClassNotFoundException, ParseException {
        String sql = "INSERT INTO [News] VALUES (?, ?, ?, ?, ?, "
                + " CONVERT(DATETIME,'" + n.getUploadDate() + "', 103), ?, ?)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, n.getNID());
            ps.setString(2, n.getUID());
            ps.setString(3, n.getTitle());
            ps.setString(4, n.getCategory());
            ps.setString(5, n.getNewsContent());
            ps.setString(6, n.getStatus());
            ps.setBytes(7, n.getPicture());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }
    }

    public List<News> getList() {
        List<News> list = new ArrayList<>();
        String sql = "SELECT * FROM [News]";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News();
                n.setNID(rs.getString("NID"));
                n.setUID(rs.getString("UID"));
                n.setTitle(rs.getString("title"));
                n.setCategory(rs.getString("category"));
                n.setNewsContent(rs.getString("newsContent"));

                String formattedDate = tool.trimDate(rs.getString("uploadDate"));
                formattedDate = tool.convertDisplayDate(formattedDate);
                n.setUploadDate(formattedDate);

                n.setStatus(rs.getString("status"));
                n.setPicture(rs.getBytes("picture"));
                list.add(n);
            }
            rs.close();
        } catch (SQLException e) {
        }
        return list;
    }

    public List<News> getTop10() {
        List<News> list = new ArrayList<>();
        String sql = "SELECT TOP 10 * FROM [News] ORDER BY uploadDate DESC";

        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                News n = new News();
                n.setNID(rs.getString("NID"));
                n.setUID(rs.getString("UID"));
                n.setTitle(rs.getString("title"));
                n.setCategory(rs.getString("category"));
                n.setNewsContent(rs.getString("newsContent"));

                String formattedDate = tool.trimDate(rs.getString("uploadDate"));
                formattedDate = tool.convertDisplayDate(formattedDate);
                n.setUploadDate(formattedDate);

                n.setStatus(rs.getString("status"));
                n.setPicture(rs.getBytes("picture"));
                list.add(n);
            }

            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    public News load(String NID) {
        News n = new News();
        String sql = "SELECT * FROM [News] WHERE NID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, NID);
            ResultSet rs;
            rs = ps.executeQuery();
            if (rs.next()) {
                n.setNID(rs.getString("NID"));
                n.setUID(rs.getString("UID"));
                n.setTitle(rs.getString("title"));
                n.setCategory(rs.getString("category"));
                n.setNewsContent(rs.getString("newsContent"));
                String formattedDate = tool.trimDate(rs.getString("uploadDate"));
                formattedDate = tool.convertDisplayDate(formattedDate);
                n.setUploadDate(formattedDate);
                n.setStatus(rs.getString("status"));
                n.setPicture(rs.getBytes("picture"));
            }
            rs.close();
            return n;
        } catch (SQLException e) {
        }
        return n;
    }

 

    public void update(News n) throws ClassNotFoundException {
        String sql = "UPDATE News SET title = ?, category = ?, "
                + "newsContent = ? , status = ? WHERE NID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, n.getTitle());
            ps.setString(2, n.getCategory());
            ps.setString(3, n.getNewsContent());
            ps.setString(4, n.getStatus());
            ps.setString(5, n.getNID());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to update due to internal error :(" + ex.getMessage());
        }
    }

    public void updateImage(byte[] image, String NID) throws ClassNotFoundException {
        String sql = "UPDATE News SET picture = ? WHERE NID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setBytes(1, image);
            ps.setString(2, NID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to update due to internal error :(" + ex.getMessage());
        }
    }
    public static void main(String[] args) {
    try {
        // Create a new News object with the required data
        News news = new News();
        news.setNID("NID40");
        news.setUID("UID1");
        news.setTitle("Sample News");
        news.setCategory("General");
        news.setNewsContent("This is a sample news article.");
        news.setStatus("Published");
        // Set the upload date and time, assuming it's in the format "dd/MM/yyyy HH:mm"       
        
        news.setUploadDate("01/07/2023");

        // Add an example image as a byte array (replace with your own image data)
        byte[] image = "Example Image Data".getBytes();
        news.setPicture(image);

        // Create an instance of the NewsManager class
        NewsManager newsManager = new NewsManager();

        // Call the insert method to insert the news into the database
        newsManager.insert(news);

        System.out.println("News inserted successfully!");
    } catch (Exception e) {
        System.out.println("Failed to insert news: " + e.getMessage());
    }
}
}
