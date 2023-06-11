/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.BirdManager;
import com.fptuni.prj301.demo.dbmanager.TparticipationManager;
import com.fptuni.prj301.demo.model.Bird;
import com.fptuni.prj301.demo.model.Tparticipation;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tool.utils.UIDGenerator;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "BirdController", urlPatterns = {"/BirdController"})
public class BirdController extends HttpServlet {

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
        // Process the view action
        BirdManager birdController = new BirdManager();
        String UID = request.getParameter("UID");
        List<Bird> birds = birdController.getBirdsByUID(UID);

        request.setAttribute("birdList", birds);
        request.getRequestDispatcher("/member_TsignUp.jsp").forward(request, response);
    }
        if (action != null && action.equals("add")) {
            String tid = UIDGenerator.generateTID();
            String bid = request.getParameter("BID");
            String docNo = UIDGenerator.generateDocNo();
         
            // Create a new Tparticipation object with the provided parameters
            Tparticipation tparticipation = new Tparticipation();
            tparticipation.setTid(tid);
            tparticipation.setBid(bid);
            tparticipation.setDocNo(docNo);
            tparticipation.setAchievement(null);

            // Insert the Tparticipation object into the database
            TparticipationManager tparticipationManager = new TparticipationManager();
            boolean success = tparticipationManager.insert(tparticipation);

            if (success) {
                // Redirect to a success page
                response.sendRedirect(request.getContextPath() + "/payment.jsp");
            } else {
                // Redirect to a failure page
                response.sendRedirect(request.getContextPath() + "/failure.jsp");
            }
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
