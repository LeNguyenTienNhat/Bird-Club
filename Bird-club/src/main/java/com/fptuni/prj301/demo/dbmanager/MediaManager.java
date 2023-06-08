
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Media;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;

public class MediaManager {
        public void insert(Media media) throws ClassNotFoundException, ParseException  {
        String sql = "INSERT INTO FieldtripMedia VALUES (?, ?)";    
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql); 
            ps.setString(1, media.getFID());
            ps.setString(2, media.getURL());
            ps.executeUpdate();
        }
        catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }
    }
}
