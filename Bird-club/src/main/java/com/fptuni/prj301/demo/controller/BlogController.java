/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.BlogManager;
import com.fptuni.prj301.demo.dbmanager.StaffAccountManager;
import com.fptuni.prj301.demo.model.Blog;
import com.fptuni.prj301.demo.model.UserSession;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import tool.utils.UIDGenerator;

/**
 *
 * @author DELL-7391
 */
public class BlogController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");

        if (action != null && action.equals("view")) {

            StaffAccountManager staffAccountManager = new StaffAccountManager();
            List<UserSession> userList = staffAccountManager.getUsersWithUnactiveStatus();

            if (!userList.isEmpty()) {
                request.setAttribute("userList", userList);
                request.getRequestDispatcher("/staff_member.jsp").forward(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/staff_member.jsp");
            }
        } else if (action == null || action.equals("viewblog")) {
            //display tournament
            BlogManager blogmanager = new BlogManager();
            List<Blog> blogList = blogmanager.getList();
            request.setAttribute("blogList", blogList);

            RequestDispatcher rd = request.getRequestDispatcher("blog.jsp");
            rd.forward(request, response);
        } else if (action.equals("addblog")) {
            // Process adding a new blog
            String blid = UIDGenerator.generateBlogID();
            String description = request.getParameter("description");
            String category = request.getParameter("category");
            String UID = request.getParameter("UID");

            // Retrieve the image file from the request
            Part filePart = request.getPart("image");
            InputStream inputStream = filePart.getInputStream();

            // Read the image data into a byte array
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int length;
            while ((length = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, length);
            }
            byte[] pictureData = outputStream.toByteArray();

            inputStream.close();
            outputStream.close();

            // Create a new Blog object and set its properties
            Blog newBlog = new Blog();
            newBlog.setBLID(blid);
            newBlog.setDescription(description);
            newBlog.setCategory(category);
            newBlog.setUploadDate(new Date()); // Set upload date to current date
            newBlog.setUID(UID); // Set the UID accordingly
            newBlog.setVote(BigDecimal.ZERO); // Set vote to default value 0
            newBlog.setPicture(pictureData);
            newBlog.setStatus("idle"); // Set status to default value "idle"

            // Create an instance of the BlogManager
            BlogManager blogManager = new BlogManager();

            // Add the new blog entry to the database
            blogManager.addBlog(newBlog);

            // Redirect to the viewblog action to display the updated blog list
            response.sendRedirect(request.getContextPath() + "/BlogController?action=viewblog");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
