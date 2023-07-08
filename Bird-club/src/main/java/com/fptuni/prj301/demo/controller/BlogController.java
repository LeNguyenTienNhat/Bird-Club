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
import javax.servlet.http.HttpSession;
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
            // Display blog
            BlogManager blogManager = new BlogManager();
            List<Blog> blogList = blogManager.getList();
            request.setAttribute("blogList", blogList);

            // Get the current scroll position from the request parameter
            int scrollPosition = 0;
            if (request.getParameter("scrollPosition") != null) {
                scrollPosition = Integer.parseInt(request.getParameter("scrollPosition"));
            }
            request.setAttribute("scrollPosition", scrollPosition);

            RequestDispatcher rd = request.getRequestDispatcher("blog.jsp");
            rd.forward(request, response);
        } else if (action.equals("vote")) {
            String blid = request.getParameter("BLID");

            // Create an instance of the BlogManager
            BlogManager blogManager = new BlogManager();
            HttpSession session = request.getSession();

            try {
                // Update the vote for the specified blog
                blogManager.updateVote(blid);
                session.setAttribute(blid + "_like", "ok");
                session.setAttribute(blid + "_dislike", "!ok");
            } catch (Exception e) {
                // Handle any exceptions that occur during the vote update
                e.printStackTrace(); // You can change this to appropriate error handling
            }

            // Redirect to the viewblog action to display the updated blog list
            String scrollPosition = request.getParameter("scrollPosition");
            String redirectURL = request.getContextPath() + "/BlogController?action=viewblog&BLID=" + blid;
            if (scrollPosition != null) {
                redirectURL += "&scrollPosition=" + scrollPosition;
            }
            response.sendRedirect(redirectURL);
        } else if (action.equals("dislike")) {
            String blid = request.getParameter("BLID");

            // Create an instance of the BlogManager
            BlogManager blogManager = new BlogManager();
            HttpSession session = request.getSession();

            try {
                // Dislike the specified blog by decrementing the vote count
                blogManager.disVote(blid);
                session.setAttribute(blid + "_like", "!ok");
                session.setAttribute(blid + "_dislike", "ok");
            } catch (Exception e) {
                // Handle any exceptions that occur during the vote update
                e.printStackTrace(); // You can change this to appropriate error handling
            }

            // Redirect to the viewblog action to display the updated blog list
            String scrollPosition = request.getParameter("scrollPosition");
            String redirectURL = request.getContextPath() + "/BlogController?action=viewblog&BLID=" + blid;
            if (scrollPosition != null) {
                redirectURL += "&scrollPosition=" + scrollPosition;
            }
            response.sendRedirect(redirectURL);
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
