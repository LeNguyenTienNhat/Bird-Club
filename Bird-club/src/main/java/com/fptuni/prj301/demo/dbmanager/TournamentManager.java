package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Tournament;
import com.fptuni.prj301.demo.utils.DBUtils;
import tool.utils.Tools;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class TournamentManager {

    Tools tool = new Tools();

    public List<Tournament> getRecords(int skip, int numOfRow, String status, String sortCategory) throws ClassNotFoundException {
        List<Tournament> list = new ArrayList<>();
        String sql = "SELECT * FROM Tournament ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps;
            if (numOfRow == 10 && !status.isEmpty()) {
                sql = sql + "WHERE status=? "
                        + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY"
                        + "ORDER BY " + sortCategory + "DESC";
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
                Tournament tournament = new Tournament();
                tournament.setTID(rs.getString("TID"));
                tournament.setName(rs.getString("name"));
                tournament.setDescription(rs.getString("description"));
                String registrationDeadline  = tool.trimDate(rs.getString("registrationDeadline"));
                String startDate  = tool.trimDate(rs.getString("startDate"));
                String endDate  = tool.trimDate(rs.getString("endDate"));
                registrationDeadline  = tool.convertDisplayDate(registrationDeadline);
                startDate  = tool.convertDisplayDate(startDate);
                endDate  = tool.convertDisplayDate(endDate);
                tournament.setRegistrationDeadline(registrationDeadline);
                tournament.setStartDate(startDate);
                tournament.setEndDate(endDate);
                tournament.setLID(rs.getString("LID"));
                tournament.setStatus(rs.getString("status"));
                tournament.setFee(rs.getInt("fee"));
                tournament.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                tournament.setTotalPrize(rs.getInt("totalPrize"));
                tournament.setCategory("Tournament");
                tournament.setNote(rs.getString("note"));
                tournament.setIncharge(rs.getString("incharge"));
                tournament.setHost(rs.getString("host"));
                tournament.setContact(rs.getString("contact"));
                
                
                list.add(tournament);
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return list;
    }

    public List<Tournament> getStatus(String status) {
        List<Tournament> tournaments = new ArrayList<>();
        String sql = "SELECT * FROM Tournament WHERE status = ?";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, status);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Tournament tournament = new Tournament();
                    tournament.setTID(rs.getString("TID"));
                    tournament.setName(rs.getString("name"));
                    tournament.setDescription(rs.getString("description"));
                    tournament.setRegistrationDeadline(tool.trimDate(rs.getString("registrationDeadline")));
                    tournament.setStartDate(tool.trimDate(rs.getString("startDate")));
                    tournament.setEndDate(tool.trimDate(rs.getString("endDate")));
                    tournament.setLID(rs.getString("LID"));
                    tournament.setStatus(rs.getString("status"));
                    tournament.setFee(rs.getInt("fee"));
                    tournament.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                    tournament.setTotalPrize(rs.getInt("totalPrize"));
                    tournament.setCategory("Tournament");
                    tournament.setNote(rs.getString("note"));
                    tournament.setIncharge(rs.getString("incharge"));
                    tournament.setHost(rs.getString("host"));
                    tournament.setContact(rs.getString("contact"));
                    tournaments.add(tournament);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tournaments;
    }
      public List<Tournament> getList() {
        List<Tournament> tournaments = new ArrayList<>();
        String sql = "SELECT * FROM Tournament ";

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Tournament tournament = new Tournament();
                    tournament.setTID(rs.getString("TID"));
                    tournament.setName(rs.getString("name"));
                    tournament.setDescription(rs.getString("description"));
                    tournament.setRegistrationDeadline(tool.trimDate(rs.getString("registrationDeadline")));
                    tournament.setStartDate(tool.trimDate(rs.getString("startDate")));
                    tournament.setEndDate(tool.trimDate(rs.getString("endDate")));
                    tournament.setLID(rs.getString("LID"));
                    tournament.setStatus(rs.getString("status"));
                    tournament.setFee(rs.getInt("fee"));
                    tournament.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                    tournament.setTotalPrize(rs.getInt("totalPrize"));
                    tournament.setCategory("Tournament");
                    tournament.setNote(rs.getString("note"));
                    tournament.setIncharge(rs.getString("incharge"));
                    tournament.setHost(rs.getString("host"));
                    tournament.setContact(rs.getString("contact"));
                    tournaments.add(tournament);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tournaments;
    }

    public void insert(Tournament tournament) throws ClassNotFoundException, ParseException {
        String sql = "INSERT INTO Tournament"
                + " VALUES (?, ?, ?, "
                + "CONVERT(DATETIME,'" + tournament.getRegistrationDeadline() + "', 103), "
                + "?, ?,"
                + "CONVERT(DATETIME,'" + tournament.getStartDate() + "', 103), "
                + "CONVERT(DATETIME,'" + tournament.getEndDate() + "', 103), "
                + "?, ?, ?, ?, ?, ?, ?)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, tournament.getTID());
            ps.setString(2, tournament.getName());
            ps.setString(3, tournament.getDescription());
            ps.setString(4, tournament.getLID());
            ps.setString(5, tournament.getStatus());
            ps.setInt(6, tournament.getFee());
            ps.setInt(7, tournament.getNumberOfParticipant());
            ps.setInt(8, tournament.getTotalPrize());
            ps.setString(9, tournament.getNote());
            ps.setString(10, tournament.getIncharge());
            ps.setString(11, tournament.getHost());
            ps.setString(12, tournament.getContact());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }
    }

    public Tournament load(String TID) throws ClassNotFoundException {
        String sql = "select * from Tournament where TID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, TID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Tournament tournament = new Tournament();
                tournament.setTID(rs.getString("TID"));
                tournament.setName(rs.getString("name"));
                tournament.setDescription(rs.getString("description"));
                tournament.setRegistrationDeadline(tool.trimDate(rs.getString("registrationDeadline")));
                tournament.setStartDate(tool.trimDate(rs.getString("startDate")));
                tournament.setEndDate(tool.trimDate(rs.getString("endDate")));
                tournament.setLID(rs.getString("LID"));
                tournament.setStatus(rs.getString("status"));
                tournament.setFee(rs.getInt("fee"));
                tournament.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                tournament.setTotalPrize(rs.getInt("totalPrize"));
                tournament.setCategory("Tournament");
                tournament.setNote(rs.getString("note"));
                tournament.setIncharge(rs.getString("incharge"));
                tournament.setHost(rs.getString("host"));
                tournament.setContact(rs.getString("contact"));
                return tournament;
            }
        } catch (SQLException ex) {
            System.out.println("Failed to load the tournament details due to internal error :(" + ex.getMessage());
        }
        return null;
    }

    public boolean update(Tournament tournament) throws ClassNotFoundException {
        String sql = "UPDATE Tournament SET name = ?, description = ?, "
                + "registrationDeadline = CONVERT(DATETIME,'" + tournament.getRegistrationDeadline() + "', 103), "
                + "startDate = CONVERT(DATETIME,'" + tournament.getStartDate() + "', 103), "
                + "endDate = CONVERT(DATETIME,'" + tournament.getEndDate() + "', 103), "
                + "LID = ? , status = ? , fee = ? , numberOfParticipant = ?, totalPrize = ?, note = ?, incharge = ?, host = ?, contact = ? WHERE TID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, tournament.getName());
            ps.setString(2, tournament.getDescription());
            ps.setString(3, tournament.getLID());
            ps.setString(4, tournament.getStatus());
            ps.setInt(5, tournament.getFee());
            ps.setInt(6, tournament.getNumberOfParticipant());
            ps.setInt(7, tournament.getTotalPrize());
            ps.setString(8, tournament.getNote());
            ps.setString(9, tournament.getIncharge());
            ps.setString(10, tournament.getHost());
            ps.setString(11, tournament.getContact());
            ps.setString(12, tournament.getTID());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to update due to internal error :(" + ex.getMessage());
        }
        return false;
    }

    public void terminate(String TID) {
        String sql = "UPDATE Tournament SET status = ? WHERE TID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(2, TID);
            ps.setString(1, "finished");
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to ternimate due to internal error :(" + ex.getMessage());
        }
    }

    public void closeForm(String TID) {
        String sql = "UPDATE Tournament SET status = ? WHERE TID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(2, TID);
            ps.setString(1, "formClosed");
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to close form due to internal error :(" + ex.getMessage());
        }
    }

    public void remove(String TID) {
        String sql = "DELETE FROM Tournament WHERE TID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, TID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to ternimate due to internal error :(" + ex.getMessage());
        }
    }
    public Tournament getTournamentById(String tid) {
    Tournament tournament = null;
    String query = "SELECT * FROM Tournament WHERE TID = ?";

     try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(query)) {
        ps.setString(1, tid);

        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                tournament = new Tournament();
                tournament.setTID(rs.getString("TID"));
                tournament.setName(rs.getString("name"));
                tournament.setDescription(rs.getString("description"));
                String registrationDeadline = rs.getString("registrationDeadline");
                String startDate = rs.getString("startDate");
                String endDate = rs.getString("endDate");
                registrationDeadline = tool.trimDate(registrationDeadline);
                startDate = tool.trimDate(startDate);
                endDate = tool.trimDate(endDate);
                tournament.setRegistrationDeadline(tool.convertDisplayDate(registrationDeadline));
                tournament.setStartDate(tool.convertDisplayDate(startDate));
                tournament.setEndDate(tool.convertDisplayDate(endDate));
                tournament.setLID(rs.getString("LID"));
                tournament.setStatus(rs.getString("status"));
                tournament.setFee(rs.getInt("fee"));
                tournament.setNumberOfParticipant(rs.getInt("numberOfParticipant"));
                tournament.setTotalPrize(rs.getInt("totalPrize"));
                tournament.setCategory("Tournament");
                tournament.setNote(rs.getString("note"));
                tournament.setIncharge(rs.getString("incharge"));
                tournament.setHost(rs.getString("host"));
                tournament.setContact(rs.getString("contact"));
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return tournament;
}
    
    public static void main(String[] args) {
        // Test the getTournamentById method
        TournamentManager tournamentDAO = new TournamentManager();
        String tid = "TID0"; // Replace with the actual tournament ID
        Tournament tournament = tournamentDAO.getTournamentById(tid);

        if (tournament != null) {
            System.out.println("Tournament found:");
            System.out.println("TID: " + tournament.getTID());
            System.out.println("Name: " + tournament.getName());
            // Print other tournament details as needed
        } else {
            System.out.println("Tournament not found.");
        }
    }
  
}
