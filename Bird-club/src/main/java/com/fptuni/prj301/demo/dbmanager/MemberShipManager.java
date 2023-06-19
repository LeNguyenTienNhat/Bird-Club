/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.dbmanager;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.fptuni.prj301.demo.model.MemberShip;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class MemberShipManager {
    public List<MemberShip> getAllRecords() {
    List<MemberShip> records = new ArrayList<>();
    String sql = "SELECT MID, name, value, duration, description FROM Membership";

    try (Connection conn = DBUtils.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        while (rs.next()) {
            String MID = rs.getString("MID");
            String name = rs.getString("name");
            BigDecimal value = rs.getBigDecimal("value");
            String duration = rs.getString("duration");
            String description = rs.getString("description");

            MemberShip record = new MemberShip(MID, name, value, duration, description);
            records.add(record);
        }
    } catch (SQLException e) {
        // Handle the exception appropriately
        e.printStackTrace();
    }

    return records;
}
}
