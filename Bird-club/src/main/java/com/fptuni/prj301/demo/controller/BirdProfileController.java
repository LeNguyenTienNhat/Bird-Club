/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.BirdManager;
import com.fptuni.prj301.demo.dbmanager.FieldtripManager;
import com.fptuni.prj301.demo.dbmanager.MemberManager;
import com.fptuni.prj301.demo.model.Bird;
import com.fptuni.prj301.demo.model.BirdProfile;
import com.fptuni.prj301.demo.model.Fieldtrip;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
        String action = request.getParameter("action");


        if (action != null && action.equals("viewbirdprofile")) {
            // Process the view action
            BirdManager birdController = new BirdManager();
            String UID = request.getParameter("UID");
            List<Bird> birds = birdController.getBirdsByUID(UID);
            request.setAttribute("birdList", birds);
            request.getRequestDispatcher("/member_BirdList.jsp").forward(request, response);
        }
       else if (action.equals("view")) {
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
        }//update bird profile
        
        
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
