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
            if (numOfRow == 5 && !status.isEmpty()) {
                sql = sql + "WHERE status = ? ORDER BY " + sortCategory + " DESC"
                        + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
                ps = conn.prepareStatement(sql);
                ps.setString(1, status);
                ps.setInt(2, skip);
                ps.setInt(3, numOfRow);
            } else {
                sql = sql + "ORDER BY " + sortCategory + " DESC";
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
                meeting.setNote(rs.getString("note"));
                meeting.setIncharge(rs.getString("incharge"));
                meeting.setHost(rs.getString("host"));
                meeting.setContact(rs.getString("contact"));
                meeting.setCategory("Meeting");
                list.add(meeting);
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return list;
    }

    public void insert(Meeting meeting) throws ClassNotFoundException, ParseException {
        String sql = "INSERT INTO [Meeting]"
                + " VALUES (?, ?, ?, "
                + "CONVERT(DATETIME,'" + meeting.getRegistrationDeadline() + "', 103), "
                + "?, ?,"
                + "CONVERT(DATETIME,'" + meeting.getStartDate() + "', 103), "
                + "CONVERT(DATETIME,'" + meeting.getEndDate() + "', 103), "
                + "?, ?, ?, ?, ?)";

        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, meeting.getMeID());
            ps.setString(2, meeting.getName());
            ps.setString(3, meeting.getDescription());
            ps.setString(4, meeting.getStatus());
            ps.setString(5, meeting.getLID());
            ps.setInt(6, meeting.getNumberOfParticipant());
            ps.setString(7, meeting.getNote());
            ps.setString(8, meeting.getIncharge());
            ps.setString(9, meeting.getHost());
            ps.setString(10, meeting.getContact());
            ps.executeUpdate();
        } catch (SQLException ex) {
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
            if (rs.next()) {
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
                meeting.setNote(rs.getString("note"));
                meeting.setIncharge(rs.getString("incharge"));
                meeting.setHost(rs.getString("host"));
                meeting.setContact(rs.getString("contact"));
                meeting.setCategory("Meeting");
                return meeting;
            }
        } catch (SQLException ex) {
            System.out.println("Failed to load the meeting details due to internal error :(" + ex.getMessage());
        }
        return null;
    }

    public boolean update(Meeting meeting) throws ClassNotFoundException {
        String sql = "UPDATE Meeting SET name = ?, description = ?, "
                + "registrationDeadline = CONVERT(DATETIME,'" + meeting.getRegistrationDeadline() + "', 103), "
                + "status = ?, LID = ? ,"
                + "startDate = CONVERT(DATETIME,'" + meeting.getStartDate() + "', 103), "
                + "endDate = CONVERT(DATETIME,'" + meeting.getEndDate() + "', 103), "
                + " numberOfParticipant = ?, note = ?, incharge = ?, host = ?, contact = ? WHERE MeID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, meeting.getName());
            ps.setString(2, meeting.getDescription());
            ps.setString(4, meeting.getLID());
            ps.setString(3, meeting.getStatus());
            ps.setInt(5, meeting.getNumberOfParticipant());
            ps.setString(6, meeting.getNote());
            ps.setString(7, meeting.getIncharge());
            ps.setString(8, meeting.getHost());
            ps.setString(9, meeting.getContact());
            ps.setString(10, meeting.getMeID());

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

    public List<Meeting> getList() {
        List<Meeting> meetings = new ArrayList<>();
        String sql = "SELECT * FROM Meeting ";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Meeting meeting = new Meeting();
                    meeting.setMeID(rs.getString("MeID"));
                    meeting.setName(rs.getString("name"));
                    meeting.setDescription(rs.getString("description"));
                    meeting.setRegistrationDeadline(tool.trimDate(rs.getString("registrationDeadline")));
                    meeting.setStatus(rs.getString("status"));
                    meeting.setLID(rs.getString("LID"));
                    meeting.setStartDate(tool.trimDate(rs.getString("startDate")));
                    meeting.setEndDate(tool.trimDate(rs.getString("endDate")));
                    meeting.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                    meeting.setNote(rs.getString("note"));
                    meeting.setIncharge(rs.getString("incharge"));
                    meeting.setHost(rs.getString("host"));
                    meeting.setContact(rs.getString("contact"));
                    meetings.add(meeting);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return meetings;
    }

    public List<Meeting> getTop10() {
        List<Meeting> meetings = new ArrayList<>();
        String sql = "SELECT TOP 10 M.*, MM.URL FROM Meeting AS M "
                + "LEFT JOIN "
                + "(SELECT DISTINCT MeID, URL FROM MeetingMedia) AS MM "
                + "ON M.MeID = MM.MeID "
                + "ORDER BY M.startDate DESC";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Meeting meeting = new Meeting();
                meeting.setMeID(rs.getString("MeID"));
                meeting.setName(rs.getString("name"));
                meeting.setDescription(rs.getString("description"));
                meeting.setRegistrationDeadline(tool.trimDate(rs.getString("registrationDeadline")));
                meeting.setStatus(rs.getString("status"));
                meeting.setLID(rs.getString("LID"));
                meeting.setStartDate(tool.trimDate(rs.getString("startDate")));
                meeting.setEndDate(tool.trimDate(rs.getString("endDate")));
                meeting.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                meeting.setNote(rs.getString("note"));
                meeting.setIncharge(rs.getString("incharge"));
                meeting.setHost(rs.getString("host"));
                meeting.setContact(rs.getString("contact"));
                meeting.setPictureURL(rs.getString("URL")); // Set the picture URL from MeetingMedia
                meetings.add(meeting);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return meetings;
    }

    public Meeting getMeetingById(String meid) {
        Meeting meeting = null;
        String query = "SELECT * FROM Meeting WHERE MeID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, meid);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    meeting = new Meeting();
                    meeting.setMeID(rs.getString("MeID"));
                    meeting.setName(rs.getString("name"));
                    meeting.setDescription(rs.getString("description"));
                    String registrationDeadline = rs.getString("registrationDeadline");
                    meeting.setStatus(rs.getString("status"));
                    meeting.setLID(rs.getString("LID"));
                    String startDate = rs.getString("startDate");
                    String endDate = rs.getString("endDate");
                    registrationDeadline = tool.trimDate(registrationDeadline);
                    startDate = tool.trimDate(startDate);
                    endDate = tool.trimDate(endDate);
                    meeting.setRegistrationDeadline(tool.convertDisplayDate(registrationDeadline));
                    meeting.setStartDate(tool.convertDisplayDate(startDate));
                    meeting.setEndDate(tool.convertDisplayDate(endDate));
                    meeting.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                    meeting.setNote(rs.getString("note"));
                    meeting.setIncharge(rs.getString("incharge"));
                    meeting.setHost(rs.getString("host"));
                    meeting.setContact(rs.getString("contact"));
                    meeting.setCategory("Meeting");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return meeting;
    }
    
        public int getTotalNumber() {
        int count = 0;
        String sql = "SELECT * FROM Meeting";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    count++;
                }
            }
        } catch (SQLException e) {
        }
        return count;
    }

    public static void main(String[] args) {
        // Test the getTournamentById method
        MeetingManager meetingDAO = new MeetingManager();
        String meid = "MeID0"; // Replace with the actual tournament ID
        Meeting meeting = meetingDAO.getMeetingById(meid);

        if (meeting != null) {
            System.out.println("Meeting found:");
            System.out.println("MeID: " + meeting.getMeID());
            System.out.println("Name: " + meeting.getName());
            // Print other tournament details as needed
        } else {
            System.out.println("Meeting not found.");
        }
    }

    public int getNumberAsStatus(String status) {
        int count = 0;
        String sql = "SELECT * FROM Meeting WHERE status = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, status);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    count++;
                }
            }
        } catch (SQLException e) {
        }
        return count;
    }
}
