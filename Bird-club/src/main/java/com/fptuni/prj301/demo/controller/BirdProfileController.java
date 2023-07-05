/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.BirdManager;
import com.fptuni.prj301.demo.model.Bird;
import com.fptuni.prj301.demo.model.BirdProfile;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tool.utils.Tools;

/**
 *
 * @author Legion
 */
public class BirdProfileController extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");
        BirdManager bird = new BirdManager();
        Tools tool = new Tools();    
        if (action != null && action.equals("viewbirdprofile")) {
            // Process the view action
            BirdManager birdController = new BirdManager();
            String UID = request.getParameter("UID");
            List<Bird> birds = birdController.getBirdsByUID(UID);
            request.setAttribute("birdList", birds);
            request.getRequestDispatcher("/member_BirdList.jsp").forward(request, response);
        } else if (action.equals("view")) {
            // Retrieve the Tparticipation object from the database based on the provided parameters (e.g., docNo)
            String bid = request.getParameter("BID");
            String UID = request.getParameter("UID");
            BirdManager birdManager = new BirdManager();
            Bird birds = birdManager.getBirdByBID(bid);

            if (birds != null) {
                // Store the Tparticipation object in request scope
                request.setAttribute("birds", birds);
                // Forward the request to the view page
                RequestDispatcher dispatcher = request.getRequestDispatcher("/member_BirdDetail.jsp");
                dispatcher.forward(request, response);
            } else {
                // Redirect to a failure page
                response.sendRedirect(request.getContextPath() + "/fail.jsp");
            }
        }else if (action.equals("upload")) {
            String BID = tool.generateID("Bird", "BID");
            String UID = request.getParameter("UID");
            String name = request.getParameter("name");
            int age = Integer.parseInt(request.getParameter("age")) ;
            String gender = request.getParameter("gender");
            String description;

            try {
                description = tool.formatPara(request.getParameter("description"));
            } catch (Exception e) {
                description = "Content hasn't been uploaded yet";
            }
            String color = request.getParameter("color");
            byte[] profilePic = new byte[0xFFFFFF];
            Bird b = new Bird(BID, UID, name, age, gender, description, color, profilePic);
            bird.insert(b);
            
            request.setAttribute("action", "viewbirdprofile");
            RequestDispatcher rd = request.getRequestDispatcher("BirdProfileController");
            rd.forward(request, response);
        } //update bird profile
        if (action != null && action.equals("updatebirdprofile")) {
            HttpSession ss = request.getSession(true);
            String UID = request.getParameter("UID");
            String BID = request.getParameter("BID");
            String name = request.getParameter("name");
            int age = Integer.parseInt(request.getParameter("age"));
            String gender = request.getParameter("gender");
            String description = request.getParameter("description");           
            String color = request.getParameter("color");

            BirdProfile birds = new BirdProfile(BID, UID, name, age, gender, description, color);
            BirdManager birdManager = new BirdManager();
            birdManager.update(birds);
            ss.setAttribute("birds", birds);
            request.setAttribute("action", "view");
            request.getRequestDispatcher("/member_BirdDetail.jsp").forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BirdProfileController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BirdProfileController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
