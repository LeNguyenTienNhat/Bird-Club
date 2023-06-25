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
                fieldtrip.setNote(rs.getString("note"));
                fieldtrip.setIncharge(rs.getString("incharge"));
                fieldtrip.setHost(rs.getString("host"));
                fieldtrip.setContact(rs.getString("contact"));
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
                    fieldtrip.setNote(rs.getString("note"));
                    fieldtrip.setIncharge(rs.getString("incharge"));
                    fieldtrip.setHost(rs.getString("host"));
                    fieldtrip.setContact(rs.getString("contact"));
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
                    fieldtrip.setNote(rs.getString("note"));
                    fieldtrip.setIncharge(rs.getString("incharge"));
                    fieldtrip.setHost(rs.getString("host"));
                    fieldtrip.setContact(rs.getString("contact"));
                    fieldtrips.add(fieldtrip);
                }
            }
        } catch (SQLException e) {
        }

        return fieldtrips;
    }

    public List<Fieldtrip> getTop10() {
        List<Fieldtrip> fieldtrips = new ArrayList<>();
        String sql = "SELECT TOP 10 F.*, FM.URL "
                + "FROM FieldTrip AS F "
                + "LEFT JOIN "
                + "(SELECT FID, URL "
                + " FROM (SELECT FID, URL, ROW_NUMBER() OVER (PARTITION BY FID ORDER BY URL DESC) AS RowNum "
                + "       FROM FieldTripMedia) AS FMSub "
                + " WHERE RowNum = 1) AS FM "
                + "ON F.FID = FM.FID "
                + "ORDER BY F.startDate DESC";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {

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
                fieldtrip.setNote(rs.getString("note"));
                fieldtrip.setIncharge(rs.getString("incharge"));
                fieldtrip.setHost(rs.getString("host"));
                fieldtrip.setContact(rs.getString("contact"));
                fieldtrip.setPictureURL(rs.getString("URL")); // Set the picture URL from FieldTripMedia
                fieldtrips.add(fieldtrip);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return fieldtrips;
    }

    public void insert(Fieldtrip fieldtrip) throws ClassNotFoundException, ParseException {
        String sql = "INSERT INTO FieldTrip"
                + " VALUES (?, ?, ?, "
                + "CONVERT(DATETIME,'" + fieldtrip.getRegistrationDeadline() + "', 103), "
                + "CONVERT(DATETIME,'" + fieldtrip.getStartDate() + "', 103), "
                + "CONVERT(DATETIME,'" + fieldtrip.getEndDate() + "', 103), "
                + "?, ?, ?, ?, ?, ?, ?, ?)";
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
            ps.setString(8, fieldtrip.getNote());
            ps.setString(9, fieldtrip.getIncharge());
            ps.setString(10, fieldtrip.getHost());
            ps.setString(11, fieldtrip.getContact());
            ps.executeUpdate();
        } catch (SQLException ex) {
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
            if (rs.next()) {
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
                fieldtrip.setNote(rs.getString("note"));
                fieldtrip.setIncharge(rs.getString("incharge"));
                fieldtrip.setHost(rs.getString("host"));
                fieldtrip.setContact(rs.getString("contact"));
                return fieldtrip;
            }
        } catch (SQLException ex) {
            System.out.println("Failed to load the fieldtrip details due to internal error :(" + ex.getMessage());
        }
        return null;
    }

    public boolean update(Fieldtrip fieldtrip) throws ClassNotFoundException {
        String sql = "UPDATE FieldTrip SET name = ?, description = ?, "
                + "registrationDeadline = CONVERT(DATETIME,'" + fieldtrip.getRegistrationDeadline() + "', 103), "
                + "startDate = CONVERT(DATETIME,'" + fieldtrip.getStartDate() + "', 103), "
                + "endDate = CONVERT(DATETIME,'" + fieldtrip.getEndDate() + "', 103), "
                + "LID = ? , status = ? , fee = ? , numberOfParticipant = ?, note = ?, incharge = ?, host = ?, contact = ? WHERE FID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, fieldtrip.getName());
            ps.setString(2, fieldtrip.getDescription());
            ps.setString(3, fieldtrip.getLID());
            ps.setString(4, fieldtrip.getStatus());
            ps.setInt(5, fieldtrip.getFee());
            ps.setInt(6, fieldtrip.getNumberOfParticipant());
            ps.setString(7, fieldtrip.getNote());
            ps.setString(8, fieldtrip.getIncharge());
            ps.setString(9, fieldtrip.getHost());
            ps.setString(10, fieldtrip.getContact());
            ps.setString(11, fieldtrip.getFID());
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

    public Fieldtrip getFieldTripById(String tid) {
        Fieldtrip fieldtrip = null;
        String query = "SELECT * FROM Fieldtrip WHERE FID = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, tid);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    fieldtrip = new Fieldtrip();
                    fieldtrip.setFID(rs.getString("FID"));
                    fieldtrip.setName(rs.getString("name"));
                    fieldtrip.setDescription(rs.getString("description"));
                    String registrationDeadline = rs.getString("registrationDeadline");
                    String startDate = rs.getString("startDate");
                    String endDate = rs.getString("endDate");
                    registrationDeadline = tool.trimDate(registrationDeadline);
                    startDate = tool.trimDate(startDate);
                    endDate = tool.trimDate(endDate);
                    fieldtrip.setRegistrationDeadline(tool.convertDisplayDate(registrationDeadline));
                    fieldtrip.setStartDate(tool.convertDisplayDate(startDate));
                    fieldtrip.setEndDate(tool.convertDisplayDate(endDate));
                    fieldtrip.setLID(rs.getString("LID"));
                    fieldtrip.setStatus(rs.getString("status"));
                    fieldtrip.setFee(rs.getInt("fee"));
                    fieldtrip.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                    fieldtrip.setNote(rs.getString("note"));
                    fieldtrip.setIncharge(rs.getString("incharge"));
                    fieldtrip.setHost(rs.getString("host"));
                    fieldtrip.setContact(rs.getString("contact"));
                    fieldtrip.setCategory("Fieldtrip");
                }
            }
        } catch (SQLException e) {
        }

        return fieldtrip;
    }

    public int getNumberAsStatus(String status) {
        int count = 0;
        String sql = "SELECT * FROM Fieldtrip WHERE status = ?";

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

    public int getTotalNumber() {
        int count = 0;
        String sql = "SELECT * FROM Fieldtrip";

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
        // Create an instance of your class
        FieldtripManager yourClass = new FieldtripManager();

        // Call the getTop10() method
        List<Fieldtrip> top10Fieldtrips = yourClass.getTop10();

        // Iterate over the field trips and print their details
        for (Fieldtrip fieldtrip : top10Fieldtrips) {
            System.out.println("Field Trip ID: " + fieldtrip.getFID());
            System.out.println("Name: " + fieldtrip.getName());
            System.out.println("Description: " + fieldtrip.getDescription());
            System.out.println("Start Date: " + fieldtrip.getStartDate());
            System.out.println("End Date: " + fieldtrip.getEndDate());
            System.out.println("LID: " + fieldtrip.getLID());
            System.out.println("Status: " + fieldtrip.getStatus());
            System.out.println("Fee: " + fieldtrip.getFee());
            System.out.println("Number of Participants: " + fieldtrip.getNumberOfParticipant());
            System.out.println("Category: " + fieldtrip.getCategory());
            System.out.println("Note: " + fieldtrip.getNote());
            System.out.println("Incharge: " + fieldtrip.getIncharge());
            System.out.println("Host: " + fieldtrip.getHost());
            System.out.println("Contact: " + fieldtrip.getContact());
            System.out.println("------------------------");
        }
    }
}
