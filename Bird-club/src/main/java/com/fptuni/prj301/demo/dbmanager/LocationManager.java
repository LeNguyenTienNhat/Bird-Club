package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Location;
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
public class LocationManager {

    public String getCoordinationByTournamentId(String tournamentId) {
        String coordination = null;
        String query = "SELECT coordination FROM Location WHERE lid=(SELECT LID FROM Tournament WHERE TID = ?)";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, tournamentId);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    coordination = rs.getString("coordination");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return coordination;
    }

    public String getName(String LID) {
        String sql = "SELECT name FROM Location WHERE LID = ?";
        String name = null;
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, LID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                name = rs.getString("name");
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return name;
    }

    public List<Location> getList() {
        List<Location> list = new ArrayList<>();
        String sql = "SELECT * FROM Location ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Location l = new Location();
                l.setLid(rs.getString("LID"));
                l.setName(rs.getString("name"));
                l.setCoordination(rs.getString("coordination"));
                list.add(l);
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public Location load(String LID) {
        Location l = new Location();
        String sql = "SELECT * FROM Location WHERE LID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, LID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                l.setLid(rs.getString("LID"));
                l.setName(rs.getString("name"));
                l.setCoordination(rs.getString("coordination"));
            }
        } catch (SQLException e) {
        }
        return l;
    }

}
