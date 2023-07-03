package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.EventsMediaManager;
import com.fptuni.prj301.demo.dbmanager.GalleryManager;
import com.fptuni.prj301.demo.dbmanager.NewsManager;
import com.fptuni.prj301.demo.model.Image;
import com.fptuni.prj301.demo.model.Media;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

public class StaffMediaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try {
            String ID = request.getParameter("ID").trim();
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
         
            if (description.isEmpty()) {
                description = "No available description";
            }
            String tableName = request.getParameter("tableName");

            //Inserting the image for club's gallery
            if (ID.equalsIgnoreCase("Gallery")) {
                Image image = new Image(description,pictureData);
                gm.insert(image);
                response.sendRedirect("gallery");
            } //Inserting the image for news
            else if (ID.contains("NID")) {
                nm.updateImage(pictureData, ID);
                response.sendRedirect("http://localhost:8080/chimowners/news?NID="+ ID +"&action=edit");
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
