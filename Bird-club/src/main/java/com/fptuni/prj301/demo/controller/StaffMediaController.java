package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.BlogManager;
import com.fptuni.prj301.demo.dbmanager.EventsMediaManager;
import com.fptuni.prj301.demo.dbmanager.GalleryManager;
import com.fptuni.prj301.demo.dbmanager.MemberManager;
import com.fptuni.prj301.demo.dbmanager.NewsManager;
import com.fptuni.prj301.demo.model.Blog;
import com.fptuni.prj301.demo.model.Image;
import com.fptuni.prj301.demo.model.Media;
import com.fptuni.prj301.demo.model.UserSession;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.text.ParseException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import tool.utils.UIDGenerator;

public class StaffMediaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try {
            String ID = request.getParameter("ID").trim();
            String UID = request.getParameter("UID");
            String description = request.getParameter("description");
            Part filePart = request.getPart("image");
            InputStream ism = filePart.getInputStream();
            ByteArrayOutputStream osm = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int length;
            while ((length = ism.read(buffer)) != -1) {
                osm.write(buffer, 0, length);
            }
            byte[] pictureData = osm.toByteArray();
            ism.close();

            EventsMediaManager mm = new EventsMediaManager();
            GalleryManager gm = new GalleryManager();
            NewsManager nm = new NewsManager();

           
            String tableName = request.getParameter("tableName");

            //Inserting the image for club's gallery
            if (ID.equals("Gallery")) {
                Image image = new Image(description, pictureData);
                gm.insert(image);
                response.sendRedirect("gallery");
            } //Inserting the image for news
            else if (ID.contains("NID")) {
                nm.updateImage(pictureData, ID);
                response.sendRedirect("http://localhost:8080/chimowners/news?NID=" + ID + "&action=edit");
            } //Inserting Tournament media
            else if (ID.contains("TID")) {
                Media media = new Media(ID, description, pictureData);
                mm.insert(tableName, media);
                response.sendRedirect("http://localhost:8080/chimowners/tournaments?TID=" + ID + "&action=viewtournamentmedia");
            } //Inserting Field trip media
            else if (ID.contains("FID")) {
                Media media = new Media(ID, description, pictureData);
                mm.insert(tableName, media);
                response.sendRedirect("http://localhost:8080/chimowners/events?FID=" + ID + "&action=viewfieldtripmedia");
            } //Inserting Meeting media
            else if (ID.contains("MeID")) {
                Media media = new Media(ID, description, pictureData);
                mm.insert(tableName, media);
                response.sendRedirect("http://localhost:8080/chimowners/events?MeID=" + ID + "&action=viewmeetingmedia");
            } else if (ID.contains("UID")) {
                String blid = UIDGenerator.generateBlogID();
                String category = request.getParameter("category");
                Blog newBlog = new Blog();
                newBlog.setBLID(blid);
                newBlog.setDescription(description);
                newBlog.setCategory(category);
                newBlog.setUploadDate(new Date()); // Set upload date to current date
                newBlog.setUID(ID); // Set the UID accordingly
                newBlog.setVote(BigDecimal.ZERO); // Set vote to default value 0
                newBlog.setPicture(pictureData);
                newBlog.setStatus("idle"); // Set status to default value "idle"

                // Create an instance of the BlogManager
                BlogManager blogManager = new BlogManager();

                // Add the new blog entry to the database
                blogManager.addBlog(newBlog);

                // Redirect to the viewblog action to display the updated blog list
                response.sendRedirect(request.getContextPath() + "/BlogController?action=viewblog");
            } else if (ID.contains("picture")) {
                HttpSession session = request.getSession();
                UserSession user = (UserSession) session.getAttribute("users");
                MemberManager memberManager = new MemberManager();
                boolean updateSuccess = memberManager.updateProfilePicture(pictureData, UID);

                if (updateSuccess) {
                    // Update the profile picture in the user object
                    user.setImage(pictureData);
                    session.setAttribute("users", user);

                    // Forward the request to the member_profile.jsp
                    request.setAttribute("action", "view");
                    request.getRequestDispatcher("/member_profile.jsp").forward(request, response);
                } else {
                    // Handle the update failure case
                    // Redirect to an appropriate page or display an error message
                    response.sendRedirect(request.getContextPath() + "/error.jsp");
                }
            }
        } catch (ClassNotFoundException | ParseException ex) {
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
