/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Blog;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
        String sql = "SELECT * FROM Blog ";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Blog blog = new Blog();
                    blog.setBID(rs.getString("BID"));
                    blog.setUID(rs.getString("UID"));
                    blog.setCategory("Blog");
                    blog.setBlogsContent(rs.getString("blogsContent"));
                    blog.setUploadDate(rs.getDate("uploadDate"));
                    blog.setStatus(rs.getString("status"));
                    blog.setPicture(rs.getBytes("image"));
                    blog.setVote(rs.getBigDecimal("vote"));
                    blogs.add(blog);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return blogs;
    }

    public Blog getBlogByBID(String bid) {
        Blog blog = null;
        String query = "SELECT * FROM Blog WHERE BID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, bid);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    blog = new Blog();
                    blog.setBID(rs.getString("BID"));
                    blog.setUID(rs.getString("UID"));
                    blog.setCategory("Blog");
                    blog.setBlogsContent(rs.getString("blogsContent"));
                    blog.setUploadDate(rs.getDate("uploadDate"));
                    blog.setStatus(rs.getString("status"));
                    blog.setPicture(rs.getBytes("image"));
                    blog.setVote(rs.getBigDecimal("vote"));

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return blog;
    }

    public static void main(String[] args) {
        // Test the getFieldTripById method
        BlogManager blogDAO = new BlogManager();
        String bid = "BID16"; // Replace with the actual tournament ID
        Blog blog = blogDAO.getBlogByBID(bid);

        if (blog != null) {
            System.out.println("Blog found:");
            System.out.println("BID: " + blog.getBID());
            System.out.println("UID: " + blog.getUID());
            System.out.println("Category: " + blog.getCategory());
            System.out.println("Description: " + blog.getBlogsContent());
            System.out.println("Upload Date: " + blog.getUploadDate());
            System.out.println("Comment: " + blog.getVote());
            // Print other fieldtrip details as needed
        } else {
            System.out.println("Blog not found.");
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
                b.setBID(rs.getString("BLID"));
                b.setUID(rs.getString("UID"));
                b.setCategory(rs.getString("category"));
                b.setBlogsContent(rs.getString("description"));
                b.setUploadDate(rs.getDate("uploadDate"));
                b.setStatus(rs.getString("status"));
                b.setVote(rs.getBigDecimal("vote"));
                b.setPicture(rs.getBytes("picture"));
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
}
