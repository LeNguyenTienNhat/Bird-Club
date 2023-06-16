
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Media;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class MediaManager {
        public void insert(String tableName ,Media media) throws ClassNotFoundException, ParseException  {
        String sql = "INSERT INTO ["+tableName+"] VALUES (?, ?, ?)";    
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql); 
            ps.setString(1, media.getID());
            ps.setString(2, media.getURL());
            ps.setString(3, media.getDescription());
            ps.executeUpdate();
        }
        catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }
    }
        
        public List<Media> getList(String tableName, String ID) {
        List<Media> list = new ArrayList<>();
        String IDtype;
        if (tableName.equalsIgnoreCase("TournamentMedia")) IDtype = "TID";
        else if (tableName.equalsIgnoreCase("FieldTripMedia")) IDtype = "FID";
        else IDtype = "MeID";
        String sql = "SELECT * FROM ["+tableName +"] WHERE "+IDtype+"= ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, ID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Media i = new Media();
                i.setID(rs.getString(IDtype));
                i.setDescription(rs.getString("description"));
                i.setURL(rs.getString("URL"));
                list.add(i);
            } rs.close();
        } catch (SQLException e) {
        }
        return list;
    }

}
