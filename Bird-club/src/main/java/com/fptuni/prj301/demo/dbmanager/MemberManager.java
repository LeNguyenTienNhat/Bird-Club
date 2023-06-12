
package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Member;
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
                + "ORDER BY "+ orderCategory; 
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps;
            if (numOfRow==10) {
                sql=sql+" OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
                ps = conn.prepareStatement(sql);     
                ps.setString(1, role);
                ps.setInt(2, skip);
                ps.setInt(3, numOfRow);
            }
            else {
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
                member.setAvatar(rs.getString("avatar"));
                list.add(member);
            }
            return list;
        } catch (SQLException ex) {
            System.out.println("Query error!" + ex.getMessage());
        }
        return list;	 
    }   
    
     public void approve(String UID) {
        String sql = "UPDATE [User] SET role = ? WHERE UID = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "member");
            ps.setString(2, UID);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Failed to update due to internal error :(" + ex.getMessage());
        }
    }
     
     public Member load(String UID) throws ClassNotFoundException {
        String sql = "select * from User where UID = ?";
        try {
            Connection conn = DBUtils.getConnection();      
            PreparedStatement ps = conn.prepareStatement(sql);                         
            ps.setString(1, UID);     
            ResultSet rs = ps.executeQuery();       
            if (rs.next()){
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
                member.setAvatar(rs.getString("avatar"));
                return member;
               }
        }
        catch (SQLException ex) {
            System.out.println("Failed to load the member's details due to internal error :(" + ex.getMessage());
        }
        return null;
    }
}
