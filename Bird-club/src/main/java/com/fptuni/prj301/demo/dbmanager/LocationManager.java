/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

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
}
