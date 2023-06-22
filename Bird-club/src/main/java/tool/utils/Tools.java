package tool.utils;

import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

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

    public String convertDisplayDate(String date) {
        String str = date;
        String d, m, y;
        String[] arrOfStr;
        arrOfStr = str.split("-", 3);
        d = arrOfStr[2];
        m = arrOfStr[1];
        y = arrOfStr[0];
        if (m.equalsIgnoreCase("01")) {
            m = "January";
        } else if (m.equalsIgnoreCase("02")) {
            m = "February";
        } else if (m.equalsIgnoreCase("03")) {
            m = "March";
        } else if (m.equalsIgnoreCase("04")) {
            m = "April";
        } else if (m.equalsIgnoreCase("05")) {
            m = "May";
        } else if (m.equalsIgnoreCase("06")) {
            m = "June";
        } else if (m.equalsIgnoreCase("07")) {
            m = "July";
        } else if (m.equalsIgnoreCase("08")) {
            m = "August";
        } else if (m.equalsIgnoreCase("09")) {
            m = "September";
        } else if (m.equalsIgnoreCase("10")) {
            m = "Octorber";
        } else if (m.equalsIgnoreCase("11")) {
            m = "November";
        } else if (m.equalsIgnoreCase("12")) {
            m = "December";
        }
        return m + " " + d + ", " + y;
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
        String sql = "SELECT * FROM " + tableName;
        int count = 0;
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                count++;
            }
            return count;

        } catch (Exception ex) {
        }
        return count;
    }

    public String generateID(String tablename, String tableID) {
        StringBuilder sb = new StringBuilder();
        sb.append(tableID);
        String id = Integer.toString(getQuantity(tablename) + 1);
        sb.append(id);
        return sb.toString();
    }

    public String generateExclusiveID() {

        return null;
    }

    public String getCurrentDate() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        String date = dtf.format(now);
        date = trimDate(date);
        StringBuilder sb = new StringBuilder();
        String[] arrOfStr = date.split("/", 3);
        sb.append(arrOfStr[2]).append("/");
        sb.append(arrOfStr[1]).append("/");
        sb.append(arrOfStr[0]);
        
        return sb.toString(); //target: dd/MM/yyyy
    }

    public String getShortDescription(String content) {
        content = content.replace("<p>", "");
        content = content.replace("</p>", "").substring(0, 200);

        return content;
    }
    
        public String getPlainText(String content) {
        content = content.replace("<p>", "");
        content = content.replace("</p>", "\n");
        return content;
    }

    public String formatPara(String content) {
        StringBuilder sb = new StringBuilder();
        String[] arrOfStr;
        arrOfStr = content.split("\n");
        for (String s : arrOfStr) {
            sb.append("<p>").append(s).append("</p>");
        }
        return sb.toString();
    }
}
