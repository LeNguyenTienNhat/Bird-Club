
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Image;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class GalleryManager {
        public void insert(Image i) throws ClassNotFoundException, ParseException  {
        String sql = "INSERT INTO [GalleryImage] VALUES (?, ?)";    
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql); 
            ps.setString(1, i.getDescription());
            ps.setBytes(2, i.getImage());
            ps.executeUpdate();
        }
        catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }
    }
        
        public List<Image> getList() {
        List<Image> list = new ArrayList<>();
        String sql = "SELECT * FROM [GalleryImage]";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Image i = new Image();
                i.setDescription(rs.getString("description"));
                i.setImage(rs.getBytes("image"));
                list.add(i);
            } rs.close();
        } catch (SQLException e) {
        }
        return list;
    }

}
