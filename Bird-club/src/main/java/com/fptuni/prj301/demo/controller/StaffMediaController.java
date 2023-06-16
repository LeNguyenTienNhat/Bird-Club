
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.MediaManager;
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
            
            MediaManager mm = new MediaManager();
            String root = "D:\\gt\\Bird-Club\\Bird-club\\src\\main\\webapp\\media";
            MultipartRequest mr = new MultipartRequest(request,root);
            
            String ID = mr.getParameter("ID");
            String description = mr.getParameter("description");
            String tableName = mr.getParameter("tableName");
            
            Enumeration files = mr.getFileNames();
            String name = (String) files.nextElement();
            String filename = mr.getFilesystemName(name);
            Media i = new Media(ID,"media/"+filename, description);
            mm.insert(tableName,i);
            
            response.sendRedirect("staffhome");
            
        } catch (ClassNotFoundException | ParseException ex) {}
        
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