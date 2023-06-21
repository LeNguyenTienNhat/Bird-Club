
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
    public void insert(News n) throws ClassNotFoundException, ParseException  {
        String sql = "INSERT INTO [News] VALUES (?, ?, ?, ?, ?"
                 + "CONVERT(DATETIME,'" + n.getUploadDate() + "', 103), ?, ?)";    
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql); 
            ps.setString(1, n.getNID());
            ps.setString(2, n.getUID());
            ps.setString(3, n.getTitle());
            ps.setString(4, n.getCategory());
            ps.setString(5, n.getNewsContent());
            ps.setString(6, n.getStatus());
            ps.setString(7, n.getImage());
            ps.executeUpdate();
        }
        catch (SQLException ex) {
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
                n.setImage(rs.getString("image"));
                list.add(n);
            } rs.close();
        } catch (SQLException e) {
        }
        return list;
    }
}