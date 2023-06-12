
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Fieldtrip;
import com.fptuni.prj301.demo.utils.DBUtils;
import tool.utils.Tools;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class FieldtripManager {
    Tools tool = new Tools();
    public List<Fieldtrip> getRecords(int skip, int numOfRow, String status, String sortCategory) throws ClassNotFoundException {  
        List<Fieldtrip> list = new ArrayList<>();        
        String sql = "SELECT * FROM FieldTrip "; 
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps;
            if (numOfRow==10 && !status.isEmpty()) {
                sql=sql+"WHERE status=? "
                        + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY"
                        + "ORDER BY "+sortCategory+"DESC";
                ps = conn.prepareStatement(sql);   
                ps.setString(1, status);
                ps.setInt(2, skip);
                ps.setInt(3, numOfRow);
            }
            else {
                sql=sql+"ORDER BY "+sortCategory+" DESC";
                ps = conn.prepareStatement(sql);
            }     
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Fieldtrip fieldtrip = new Fieldtrip();
                fieldtrip.setFID(rs.getString("FID"));
                fieldtrip.setName(rs.getString("name"));
                fieldtrip.setDescription(rs.getString("description"));
                fieldtrip.setRegistrationDeadline(tool.trimDate(rs.getString("registrationDeadline")));
                fieldtrip.setStartDate(tool.trimDate(rs.getString("startDate")));
                fieldtrip.setEndDate(tool.trimDate(rs.getString("endDate")));
                
                fieldtrip.setLID(rs.getString("LID"));
                fieldtrip.setStatus(rs.getString("status"));
                fieldtrip.setFee(rs.getInt("fee"));
                fieldtrip.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                fieldtrip.setCategory("Field trip");
                list.add(fieldtrip);
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return list;	 
    } 
    
    public List<Fieldtrip> getStatus(String status) {
        List<Fieldtrip> fieldtrips = new ArrayList<>();
        String sql = "SELECT * FROM Fieldtrip WHERE status = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, status);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Fieldtrip fieldtrip = new Fieldtrip();
                    fieldtrip.setFID(rs.getString("FID"));
                    fieldtrip.setName(rs.getString("name"));
                    fieldtrip.setDescription(rs.getString("description"));
                    fieldtrip.setRegistrationDeadline(tool.trimDate(rs.getString("registrationDeadline")));
                    fieldtrip.setStartDate(tool.trimDate(rs.getString("startDate")));
                    fieldtrip.setEndDate(tool.trimDate(rs.getString("endDate")));
                    fieldtrip.setLID(rs.getString("LID"));
                    fieldtrip.setStatus(rs.getString("status"));
                    fieldtrip.setFee(rs.getInt("fee"));
                    fieldtrip.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                    fieldtrip.setCategory("Fieldtrip");
                    fieldtrips.add(fieldtrip);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return fieldtrips;
    }
    
    public List<Fieldtrip> getList() {
        List<Fieldtrip> fieldtrips = new ArrayList<>();
        String sql = "SELECT * FROM Fieldtrip ";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {


            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Fieldtrip fieldtrip = new Fieldtrip();
                    fieldtrip.setFID(rs.getString("FID"));
                    fieldtrip.setName(rs.getString("name"));
                    fieldtrip.setDescription(rs.getString("description"));
                    fieldtrip.setRegistrationDeadline(tool.trimDate(rs.getString("registrationDeadline")));
                    fieldtrip.setStartDate(tool.trimDate(rs.getString("startDate")));
                    fieldtrip.setEndDate(tool.trimDate(rs.getString("endDate")));
                    fieldtrip.setLID(rs.getString("LID"));
                    fieldtrip.setStatus(rs.getString("status"));
                    fieldtrip.setFee(rs.getInt("fee"));
                    fieldtrip.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                    fieldtrip.setCategory("Fieldtrip");
                    fieldtrips.add(fieldtrip);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return fieldtrips;
    }
    
    public void insert(Fieldtrip fieldtrip) throws ClassNotFoundException, ParseException  {
        String sql = "INSERT INTO FieldTrip"               
                + " VALUES (?, ?, ?, "
                + "CONVERT(DATETIME,'"
                + fieldtrip.getRegistrationDeadline()
                + "', 103), "
                + "CONVERT(DATETIME,'"
                + fieldtrip.getStartDate()
                + "', 103), "
                + "CONVERT(DATETIME,'"
                + fieldtrip.getEndDate()
                + "', 103), "
                + "?, ?, ?, ?)";    
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql); 
            ps.setString(1, fieldtrip.getFID());
            ps.setString(2, fieldtrip.getName());
            ps.setString(3, fieldtrip.getDescription());
            ps.setString(4, fieldtrip.getLID());
            ps.setString(5, fieldtrip.getStatus());
            ps.setInt(6, fieldtrip.getFee());
            ps.setInt(7, fieldtrip.getNumberOfParticipant());
            ps.executeUpdate();
        }
        catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }
    }
    
    public Fieldtrip load(String FID) throws ClassNotFoundException {
        String sql = "select * from FieldTrip where FID = ?";
        try {
            Connection conn = DBUtils.getConnection();      
            PreparedStatement ps = conn.prepareStatement(sql);                         
            ps.setString(1, FID);     
            ResultSet rs = ps.executeQuery();       
            if (rs.next()){
                Fieldtrip fieldtrip = new Fieldtrip();
                fieldtrip.setFID(rs.getString("FID"));
                fieldtrip.setName(rs.getString("name"));
                fieldtrip.setDescription(rs.getString("description"));
                fieldtrip.setRegistrationDeadline(tool.trimDate(rs.getString("registrationDeadline")));
                fieldtrip.setStartDate(tool.trimDate(rs.getString("startDate")));
                fieldtrip.setEndDate(tool.trimDate(rs.getString("endDate")));
                fieldtrip.setLID(rs.getString("LID"));
                fieldtrip.setStatus(rs.getString("status"));
                fieldtrip.setFee(rs.getInt("fee"));
                fieldtrip.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                fieldtrip.setCategory("Field trip");
                return fieldtrip;
               }
        }
        catch (SQLException ex) {
            System.out.println("Failed to load the fieldtrip details due to internal error :(" + ex.getMessage());
        }
        return null;
    }
    
        public boolean update(Fieldtrip fieldtrip) throws ClassNotFoundException{
        String sql = "UPDATE FieldTrip SET name = ?, description = ?, "
                + "registrationDeadline = CONVERT(DATETIME,'"+fieldtrip.getRegistrationDeadline() + "', 103), "
                + "startDate = CONVERT(DATETIME,'"+ fieldtrip.getStartDate()+ "', 103), "
                + "endDate = CONVERT(DATETIME,'"+ fieldtrip.getEndDate()+ "', 103), "
                + "LID = ? , status = ? , fee = ? , numberOfParticipant = ? WHERE FID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, fieldtrip.getName());
            ps.setString(2, fieldtrip.getDescription());
            ps.setString(3, fieldtrip.getLID());
            ps.setString(4, fieldtrip.getStatus());
            ps.setInt(5, fieldtrip.getFee());
            ps.setInt(6, fieldtrip.getNumberOfParticipant());
            ps.setString(7, fieldtrip.getFID());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to update due to internal error :(" + ex.getMessage());
        }
        return false;
    }

    public void terminate(String FID) {
        String sql = "UPDATE FieldTrip SET status = ? WHERE FID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(2, FID);
            ps.setString(1, "finished");
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to ternimate due to internal error :(" + ex.getMessage());
        }
    }
    
    public void closeForm(String FID) {
        String sql = "UPDATE FieldTrip SET status = ? WHERE FID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(2, FID);
            ps.setString(1, "formClosed");
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to close form due to internal error :(" + ex.getMessage());
        }
    }
    
    
    public void remove(String FID) {
        String sql = "DELETE FROM FieldTrip WHERE FID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, FID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to ternimate due to internal error :(" + ex.getMessage());
        }
    }
    
}
