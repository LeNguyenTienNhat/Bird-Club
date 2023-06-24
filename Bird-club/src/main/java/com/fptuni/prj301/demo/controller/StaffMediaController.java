package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.EventsMediaManager;
import com.fptuni.prj301.demo.dbmanager.GalleryManager;
import com.fptuni.prj301.demo.dbmanager.NewsManager;
import com.fptuni.prj301.demo.model.Image;
import com.fptuni.prj301.demo.model.Media;
import com.oreilly.servlet.MultipartRequest;
import java.io.IOException;
import java.text.ParseException;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StaffMediaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");

            EventsMediaManager mm = new EventsMediaManager();
            GalleryManager gm = new GalleryManager();
            NewsManager nm = new NewsManager();
            String root = "D:\\gt\\Bird-Club\\Bird-club\\src\\main\\webapp\\media";

            MultipartRequest mr = new MultipartRequest(request, root);
            String ID = mr.getParameter("ID");
            String description = mr.getParameter("description");
            String tableName = mr.getParameter("tableName");

            Enumeration files = mr.getFileNames();
            String name = (String) files.nextElement();
            String filename = mr.getFilesystemName(name);
            //Inserting the image for club's gallery
            if (ID.equalsIgnoreCase("Gallery")) {
                Image image = new Image("media/" + filename, description);
                gm.insert(image);
                response.sendRedirect("gallery");
            } //Inserting the image for news
            else if (ID.contains("NID")) {
                nm.updateImage("media/" + filename, ID);
                response.sendRedirect("http://localhost:8080/chimowners/news");
            } //Inserting Tournament media
            else if (ID.contains("TID")) {
                Media media = new Media(ID, "media/" + filename, description);
                mm.insert(tableName, media);
                response.sendRedirect("http://localhost:8080/chimowners/tournaments?TID=" + ID + "&action=viewtournamentmedia");
            } //Inserting Field trip media
            else if (ID.contains("FID")) {
                Media media = new Media(ID, "media/" + filename, description);
                mm.insert(tableName, media);
                response.sendRedirect("http://localhost:8080/chimowners/events?FID="+ID+"&action=viewfieldtripmedia");
            } //Inserting Meeting media
            else if (ID.contains("MeID")) {
                Media media = new Media(ID, "media/" + filename, description);
                mm.insert(tableName, media);
                response.sendRedirect("http://localhost:8080/chimowners/events?MeID="+ID+"&action=viewmeetingmedia");
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
