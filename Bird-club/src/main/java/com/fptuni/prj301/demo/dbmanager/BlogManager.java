/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Blog;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import tool.utils.Tools;

/**
 *
 * @author Administrator
 */
public class BlogManager {

    Tools tool = new Tools();

    public List<Blog> getList() {
        List<Blog> blogs = new ArrayList<>();
        String sql = "SELECT * FROM Blog where status='approved' ";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Blog blog = new Blog();
                    blog.setBLID(rs.getString("BLID"));
                    blog.setDescription(rs.getString("description"));
                    blog.setCategory(rs.getString("category"));
                    blog.setUploadDate(rs.getDate("uploadDate"));
                    blog.setUID(rs.getString("UID"));
                    blog.setVote(rs.getBigDecimal("vote"));
                    blog.setPicture(rs.getBytes("picture"));
                    blog.setStatus(rs.getString("status"));
                    blogs.add(blog);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return blogs;
    }

    public void addBlog(Blog blog) {
        String sql = "INSERT INTO Blog (BLID, description, category, uploadDate, UID, vote, picture, status) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, blog.getBLID());
            ps.setString(2, blog.getDescription());
            ps.setString(3, blog.getCategory());
            ps.setDate(4, new java.sql.Date(blog.getUploadDate().getTime()));
            ps.setString(5, blog.getUID());
            ps.setBigDecimal(6, blog.getVote());
            ps.setBytes(7, blog.getPicture());
            ps.setString(8, blog.getStatus());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception or rethrow it to handle it at a higher level
        }
    }

    public void updateVote(String blogID) {
        String sql = "UPDATE Blog SET vote = vote + 1 WHERE BLID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, blogID);

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception or rethrow it to handle it at a higher level
        }
    }

    public void disVote(String blogID) {
        String sql = "UPDATE Blog SET vote = CASE WHEN vote > 0 THEN vote - 1 ELSE 0 END WHERE BLID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, blogID);

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception or rethrow it to handle it at a higher level
        }
    }

    public static List<String> ExistingBID() {
        List<String> existingBLIDs = new ArrayList<>();
        String sql = "SELECT BLID FROM Blog";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                String blid = rs.getString("BLID");
                existingBLIDs.add(blid);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return existingBLIDs;
    }

    public Blog getBlogByBLID(String blid) {
        Blog blog = null;
        String query = "SELECT * FROM Blog WHERE BLID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, blid);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    blog = new Blog();
                    blog.setBLID(rs.getString("BLID"));
                    blog.setDescription(rs.getString("description"));
                    blog.setCategory(rs.getString("category"));
                    blog.setUploadDate(rs.getDate("uploadDate"));
                    blog.setUID(rs.getString("UID"));
                    blog.setVote(rs.getBigDecimal("vote"));
                    blog.setPicture(rs.getBytes("picture"));
                    blog.setStatus(rs.getString("status"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return blog;
    }

    public static void main(String[] args) {
        List<String> existingBLIDs = ExistingBID();

        System.out.println("Existing Blog IDs:");
        for (String blid : existingBLIDs) {
            System.out.println(blid);
        }
    }

    public List<Blog> getRecords(int skip, int numOfRow, String status, String sortCategory) throws ClassNotFoundException {
        List<Blog> list = new ArrayList<>();
        String sql = "SELECT * FROM [Blog] ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps;
            if (numOfRow == 10 && !status.isEmpty()) {
                sql = sql + "WHERE status=? ORDER BY " + sortCategory + " DESC"
                        + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
                ps = conn.prepareStatement(sql);
                ps.setString(1, status);
                ps.setInt(2, skip);
                ps.setInt(3, numOfRow);
            } else {
                sql = sql + "ORDER BY " + sortCategory + " DESC";
                ps = conn.prepareStatement(sql);
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog();
                b.setBLID(rs.getString("BLID"));
                b.setDescription(rs.getString("description"));
                b.setCategory(rs.getString("category"));
                b.setUploadDate(rs.getDate("uploadDate"));
                b.setUID(rs.getString("UID"));
                b.setVote(rs.getBigDecimal("vote"));
                b.setPicture(rs.getBytes("picture"));
                b.setStatus(rs.getString("status"));
                list.add(b);
            }

            return list;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return list;
    }

    public int getTotalNum(String status) {
        String sql = "select COUNT(BLID) from Blog ";
        int count = 0;
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps;
            if (status.equals("all")) {
                ps = conn.prepareStatement(sql);
            } else {
                sql = sql + " where status = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, status);
            }
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("");
                return count;
            }
        } catch (Exception e) {
        }
        return count;
    }

    public void updateStatus(String BLID, String status) {
        String sql = "UPDATE [Blog] SET status = ? WHERE BLID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, status);
            ps.setString(2, BLID);
            ps.executeUpdate();
        } catch (SQLException ex) {
        }
    }

    public List<Blog> getTopBlog(int num) {
        List<Blog> list = new ArrayList();
        String sql = "SELECT TOP " + num + " * FROM Blog ORDER BY vote DESC";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setBLID(rs.getString("BLID"));
                blog.setDescription(rs.getString("description"));
                blog.setCategory(rs.getString("category"));
                blog.setUploadDate(rs.getDate("uploadDate"));
                blog.setUID(rs.getString("UID"));
                blog.setVote(rs.getBigDecimal("vote"));
                blog.setPicture(rs.getBytes("picture"));
                blog.setStatus(rs.getString("status"));
                list.add(blog);
            }
        } catch (SQLException ex) {
        }
        return list;
    }
    
    public void updateThumbnail(String BLID, byte[] picture) {
        String sql = "UPDATE [Blog] SET picture = ? WHERE BLID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setBytes(1, picture);
            ps.setString(2, BLID);
            ps.executeUpdate();
        } catch (SQLException ex) {
        }
    }
}
