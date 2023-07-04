package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Member;
import com.fptuni.prj301.demo.model.MemberProfile;
import com.fptuni.prj301.demo.utils.DBUtils;
import tool.utils.Tools;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberManager {

    Tools tool = new Tools();

    public List<Member> getRecords(int skip, int numOfRow, String role, String orderCategory) throws ClassNotFoundException {
        List<Member> list = new ArrayList<>();
        String sql = "SELECT * FROM [User] WHERE role=? "
                + "ORDER BY " + orderCategory;
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps;
            if (numOfRow == 20) {
                sql = sql + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
                ps = conn.prepareStatement(sql);
                ps.setString(1, role);
                ps.setInt(2, skip);
                ps.setInt(3, numOfRow);
            } else {
                ps = conn.prepareStatement(sql);
                ps.setString(1, role);
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Member member = new Member();
                member.setUID(rs.getString("UID"));
                member.setUserName(rs.getString("userName"));
                member.setPassword(rs.getString("password"));
                member.setFullName(rs.getString("fullName"));
                member.setGender(rs.getString("gender"));
                member.setPhone(rs.getString("phone"));
                member.setEmail(rs.getString("email"));
                member.setRole(rs.getString("role"));
                member.setStatus(rs.getString("status"));
                member.setSignupDate(tool.trimDate(rs.getString("signupDate")));
                member.setExpiredDate(tool.trimDate(rs.getString("expiredDate")));
                member.setMID(rs.getString("MID"));
                member.setProfilePicture(rs.getBytes("profilePicture"));
                list.add(member);
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return list;
    }

    public boolean update(Member member) throws ClassNotFoundException {
        String sql = "UPDATE User SET userName = ?, password = ?, "
                + "fullName = ?, gender = ?, phone = ?, email = ?, "
                + "signupDate = CONVERT(DATETIME,'" + member.getSignupDate() + "', 103), "
                + "expiredDate = CONVERT(DATETIME,'" + member.getExpiredDate() + "', 103), "
                + "profilePicture = ? WHERE UID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, member.getUserName());
            ps.setString(2, member.getPassword());
            ps.setString(3, member.getFullName());
            ps.setString(4, member.getGender());
            ps.setString(5, member.getPhone());
            ps.setString(6, member.getEmail());
            ps.setBytes(7, member.getProfilePicture());
            ps.setString(8, member.getUID());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to update due to internal error :(" + ex.getMessage());
        }
        return false;
    }

    public boolean update(MemberProfile member) throws ClassNotFoundException {
        String sql = "UPDATE [User] SET userName = ?, "
                + "fullName = ?, gender = ?, phone = ?, email = ?, "
                + "avatar = ? WHERE UID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, member.getUserName());
            ps.setString(2, member.getFullName());
            ps.setString(3, member.getGender());
            ps.setString(4, member.getPhone());
            ps.setString(5, member.getEmail());
            ps.setString(6, member.getAvatar());
            ps.setString(7, member.getUID());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to update due to internal error :(" + ex.getMessage());
        }
        return false;
    }

    public void updateRole(String UID, String role) {
        String sql = "UPDATE [User] SET role = ? WHERE UID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, role);
            ps.setString(2, UID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to update due to internal error :(" + ex.getMessage());
        }
    }

    public Member load(String UID) throws ClassNotFoundException {
        String sql = "select * from [User] where UID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, UID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Member member = new Member();
                member.setUID(rs.getString("UID"));
                member.setUserName(rs.getString("userName"));
                member.setPassword(rs.getString("password"));
                member.setFullName(rs.getString("fullName"));
                member.setGender(rs.getString("gender"));
                member.setPhone(rs.getString("phone"));
                member.setEmail(rs.getString("email"));
                member.setRole(rs.getString("role"));
                member.setStatus(rs.getString("status"));
                member.setSignupDate(tool.trimDate(rs.getString("signupDate")));
                member.setExpiredDate(tool.trimDate(rs.getString("expiredDate")));
                member.setMID(rs.getString("MID"));
                member.setProfilePicture(rs.getBytes("profilePicture"));
                return member;
            }
        } catch (SQLException ex) {
            System.out.println("Failed to load the member's details due to internal error :(" + ex.getMessage());
        }
        return null;
    }

    public int getNumberOfMembers(String role) throws ClassNotFoundException {
        int count = 0;
        String sql = "SELECT * FROM [User] WHERE role = ? ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, role);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count++;
            }
            return count;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return count;
    }

    public String getUserEmail(String UID) throws ClassNotFoundException {
        String sql = "select * from [User] where UID = ?";
        String email = "unavailable";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, UID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                email = rs.getString("email");
            }
            return email;
        } catch (SQLException ex) {
            System.out.println("Failed to load the member's details due to internal error :(" + ex.getMessage());
        }
        return email;
    }

    public List<String> getAllUserEmail() throws ClassNotFoundException {
        String sql = "select * from [User]";
        List<String> emailList = new ArrayList();
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String emailAddress = rs.getString("email");
                emailList.add(emailAddress);
            }
            return emailList;
        } catch (SQLException ex) {
            System.out.println("Failed to load the member's details due to internal error :(" + ex.getMessage());
        }
        return emailList;
    }

    public int getTotalNumberAsDuration(int year, int month) {
        int count = 0;
        String sql = "SELECT COUNT(UID) as num FROM [User] WHERE (DATEPART(yy, signupDate) = ? "
                + " AND DATEPART(mm, signupDate) = ?)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, year);
            ps.setInt(2, month);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("num");
            }
            return count;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return count;
    }

    public List<Integer> getTotalNumberAsYear(int year) {
        List<Integer> list = new ArrayList();
        for (int i = 1; i <= 12; i++) {
            int num = getTotalNumberAsDuration(year, i);
            list.add(num);
        }
        return list;
    }

    public void insert(Member user) {
        String sql = "INSERT INTO [User] "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, "
                + "CONVERT(DATETIME,'" + user.getSignupDate() + "', 103), "
                + "CONVERT(DATETIME,'" + user.getExpiredDate() + "', 103), "
                + "?, ?)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUID());
            ps.setString(2, user.getUserName());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getFullName());
            ps.setString(5, user.getGender());
            ps.setString(6, user.getPhone());
            ps.setString(7, user.getEmail());
            ps.setString(8, user.getRole());
            ps.setString(9, user.getStatus());
            ps.setString(10, user.getMID());
            ps.setBytes(11, user.getProfilePicture());
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
        public int getTotalNumberOfMember() {
        int count = 0;
        String sql = "SELECT COUNT(UID) as num FROM [User]";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("num");
            }
            return count;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return count;
    }
}
