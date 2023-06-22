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
import java.util.List;

/**
 *
 * @author Administrator
 */
public class BlogManage {


    public List<Blog> getList() {
        List<Blog> Blogs = new ArrayList<>();
        String sql = "SELECT * FROM Blog ";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Blog Blog = new Blog();
                    Blog.setBID(rs.getString("BID"));
                    Blog.setDescription(rs.getString("description"));
                    Blog.setCategory("Blog");
                    Blog.setUploadDate(rs.getDate("uploadDate"));
                    Blog.setUID(rs.getString("UID"));
                    Blog.setVote(rs.getBigDecimal("vote"));
                    Blogs.add(Blog);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return Blogs;
    }
}
