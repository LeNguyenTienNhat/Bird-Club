
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Meeting;
import com.fptuni.prj301.demo.utils.DBUtils;
import tool.utils.Tools;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class MeetingManager {
    Tools tool = new Tools();
    public List<Meeting> getRecords(int skip, int numOfRow, String status, String sortCategory) throws ClassNotFoundException {  
        List<Meeting> list = new ArrayList<>();        
        String sql = "SELECT * FROM Meeting "; 
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
                Meeting meeting = new Meeting();
                meeting.setMeID(rs.getString("MeID"));
                meeting.setName(rs.getString("name"));
                meeting.setDescription(rs.getString("description"));
                meeting.setRegistrationDeadline(tool.trimDate(rs.getString("registrationDeadline")));
                meeting.setStartDate(tool.trimDate(rs.getString("startDate")));
                meeting.setEndDate(tool.trimDate(rs.getString("endDate")));
                
                meeting.setLID(rs.getString("LID"));
                meeting.setStatus(rs.getString("status"));
                meeting.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                meeting.setCategory("Meeting");
                list.add(meeting);
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return list;	 
    }   
    
    public void insert(Meeting meeting) throws ClassNotFoundException, ParseException  {
        String sql = "INSERT INTO Meeting"               
                + " VALUES (?, ?, ?, "
                + "CONVERT(DATETIME,'"+ meeting.getRegistrationDeadline()+ "', 103), "
                + "?, ?,"
                + "CONVERT(DATETIME,'"+ meeting.getStartDate()+ "', 103), "
                + "CONVERT(DATETIME,'"+ meeting.getEndDate()+ "', 103), "
                + "?)";    
        
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql); 
            ps.setString(1, meeting.getMeID());
            ps.setString(2, meeting.getName());
            ps.setString(3, meeting.getDescription());
            ps.setString(4, meeting.getStatus());
            ps.setString(5, meeting.getLID());
            ps.setInt(6, meeting.getNumberOfParticipant());
            ps.executeUpdate();
        }
        catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }
    }
    
    public Meeting load(String MeID) throws ClassNotFoundException {
        String sql = "select * from Meeting where MeID = ?";
        try {
            Connection conn = DBUtils.getConnection();      
            PreparedStatement ps = conn.prepareStatement(sql);                         
            ps.setString(1, MeID);     
            ResultSet rs = ps.executeQuery();       
            if (rs.next()){
                Meeting meeting = new Meeting();
                meeting.setMeID(rs.getString("MeID"));
                meeting.setName(rs.getString("name"));
                meeting.setDescription(rs.getString("description"));
                meeting.setRegistrationDeadline(tool.trimDate(rs.getString("registrationDeadline")));
                meeting.setStartDate(tool.trimDate(rs.getString("startDate")));
                meeting.setEndDate(tool.trimDate(rs.getString("endDate")));
                meeting.setLID(rs.getString("LID"));
                meeting.setStatus(rs.getString("status"));
                meeting.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                meeting.setCategory("Meeting");
                return meeting;
               }
        }
        catch (SQLException ex) {
            System.out.println("Failed to load the meeting details due to internal error :(" + ex.getMessage());
        }
        return null;
    }
    
        public boolean update(Meeting meeting) throws ClassNotFoundException{
        String sql = "UPDATE Meeting SET name = ?, description = ?, "
                + "registrationDeadline = CONVERT(DATETIME,'"+meeting.getRegistrationDeadline() + "', 103), "
                + "status = ?, LID = ? ,"
                + "startDate = CONVERT(DATETIME,'"+ meeting.getStartDate()+ "', 103), "
                + "endDate = CONVERT(DATETIME,'"+ meeting.getEndDate()+ "', 103), "
                + " numberOfParticipant = ? WHERE MeID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, meeting.getName());
            ps.setString(2, meeting.getDescription());
            ps.setString(4, meeting.getLID());
            ps.setString(3, meeting.getStatus());
            ps.setInt(5, meeting.getNumberOfParticipant());
            ps.setString(6, meeting.getMeID());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to update due to internal error :(" + ex.getMessage());
        }
        return false;
    }

    public void terminate(String MeID) {
        String sql = "UPDATE Meeting SET status = ? WHERE MeID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(2, MeID);
            ps.setString(1, "finished");
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to ternimate due to internal error :(" + ex.getMessage());
        }
    }
    
    public void closeForm(String MeID) {
        String sql = "UPDATE Meeting SET status = ? WHERE MeID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(2, MeID);
            ps.setString(1, "formClosed");
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to close form due to internal error :(" + ex.getMessage());
        }
    }
    
    
    public void remove(String MeID) {
        String sql = "DELETE FROM Meeting WHERE MeID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, MeID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to ternimate due to internal error :(" + ex.getMessage());
        }
    }
    
}
