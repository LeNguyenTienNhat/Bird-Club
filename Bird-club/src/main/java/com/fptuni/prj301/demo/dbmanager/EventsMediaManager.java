package com.fptuni.prj301.demo.dbmanager;

import com.fptuni.prj301.demo.model.Media;
import com.fptuni.prj301.demo.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class EventsMediaManager {

    public void insert(String tableName, Media media) throws ClassNotFoundException, ParseException {
        String sql = "INSERT INTO [" + tableName + "] VALUES (?, ?, ?)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, media.getID());
            ps.setString(2, media.getDescription());
            ps.setBytes(3, media.getImage());

            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Insertion failed due to internal error :(" + ex.getMessage());
        }
    }

    public List<Media> getList(String tableName, String ID) {
        List<Media> list = new ArrayList<>();
        String IDtype;
        if (tableName.equalsIgnoreCase("TournamentMedia")) {
            IDtype = "TID";
        } else if (tableName.equalsIgnoreCase("FieldTripMedia")) {
            IDtype = "FID";
        } else {
            IDtype = "MeID";
        }
        String sql = "SELECT * FROM [" + tableName + "] WHERE " + IDtype + "= ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, ID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Media i = new Media();
                i.setID(rs.getString(IDtype));
                i.setDescription(rs.getString("description"));
                i.setImage(rs.getBytes("image"));
                list.add(i);
            }
            rs.close();
        } catch (SQLException e) {
        }
        return list;
    }

    //need to fix
    public byte[] getURLByID(String tableName, String ID) {
        String IDtype;
        if (tableName.equalsIgnoreCase("TournamentMedia")) {
            IDtype = "TID";
        } else if (tableName.equalsIgnoreCase("FieldTripMedia")) {
            IDtype = "FID";
        } else {
            IDtype = "MeID";
        }

        String sql = "SELECT Image FROM " + tableName + " WHERE " + IDtype + " = ? AND description = 'thumbnail'";
        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, ID);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    byte[] imageBytes = rs.getBytes("Image");
                    return imageBytes;
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null; // Return null if the image is not found or an exception occurs
    }

    public List<byte[]> getImagesByDescription(String tableName, String ID) {
        String IDtype;
        if (tableName.equalsIgnoreCase("TournamentMedia")) {
            IDtype = "TID";
        } else if (tableName.equalsIgnoreCase("FieldTripMedia")) {
            IDtype = "FID";
        } else {
            IDtype = "MeID";
        }

        String sql = "SELECT Image FROM " + tableName + " WHERE " + IDtype + " = ? AND description = 'gallery'";
        List<byte[]> images = new ArrayList<>();

        try (Connection conn = DBUtils.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, ID);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    byte[] imageBytes = rs.getBytes("Image");
                    images.add(imageBytes);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return images;
    }

    public static void main(String[] args) {
        // Create an instance of the class containing the getList() and getURLByID() methods
        EventsMediaManager yourClass = new EventsMediaManager();

        // Test getList() method
        String tableName = "FieldTripMedia";
        String ID = "FID29";

        // Print the details of the media objects
        // Test getURLByID() method
        List<byte[]> mediaURL = yourClass.getImagesByDescription(tableName, ID);
        System.out.println("URLs:");
        for (byte[] imageBytes : mediaURL) {
            System.out.println(imageBytes);
        }
    }

    public List<Media> getImagesData(String ID) {
        List<Media> list = new ArrayList<>();
        String tableName, IDtype;
        if (ID.contains("TID")) {
            tableName = "TournamentMedia";
            IDtype = "TID";
        } else if (ID.contains("FID")) {
            tableName = "FieldTripMedia";
            IDtype = "FID";
        } else {
            tableName = "MeetingMedia";
            IDtype = "MeID";
        }
        String sql = "SELECT * FROM [" + tableName + "] WHERE " + IDtype + "= ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, ID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Media i = new Media();
                i.setID(rs.getString(IDtype));
                i.setDescription(rs.getString("description"));
                i.setImage(rs.getBytes("image"));
                list.add(i);
            }
            rs.close();
        } catch (SQLException e) {
        }
        return list;
    }

}
