
package com.fptuni.prj301.demo.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Tools {
    public String convertDateFormat(String date) {
        String str = date;
        String[] arrOfStr;
        StringBuilder sb = new StringBuilder();
        
        arrOfStr = str.split("-", 3);
        sb.append(arrOfStr[2]).append("/"); 
        sb.append(arrOfStr[1]).append("/"); 
        sb.append(arrOfStr[0]); 
        
        return sb.toString();
    }
    
    public String trimDate(String date) {
        String str = date;
        String[] arrOfStr;
        StringBuilder sb = new StringBuilder();
        
        arrOfStr = str.split(" ", 2);
        sb.append(arrOfStr[0]); 
        
        return sb.toString();
    }
    
    public int getQuantity(String tableName) {
        String sql = "SELECT * FROM "+ tableName;
        int count = 0;
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) count++;
            return count;
            
        } catch (Exception ex) {
        }
        return count;
    }
    
    public String generateID(String tablename, String tableID) {
        StringBuilder sb = new StringBuilder();
        sb.append(tableID);
        String id = Integer.toString(getQuantity(tablename)+1);
        sb.append(id);
        return sb.toString();
    }
}
