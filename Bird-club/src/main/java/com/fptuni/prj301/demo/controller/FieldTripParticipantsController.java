/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.FieldTripParticipantsManager;
import com.fptuni.prj301.demo.dbmanager.FieldtripManager;
import com.fptuni.prj301.demo.model.FieldTripParticipants;
import com.fptuni.prj301.demo.model.Fieldtrip;
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
 * @author DELL-7391
 */
public class FieldTripParticipantsController extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");
        if (action != null && action.equals("viewfieldtrip")) {
            // Process the view action
            FieldtripManager eventsManager = new FieldtripManager();
            String UID = request.getParameter("UID");
            List<Fieldtrip> eventsList = eventsManager.getList();
            request.setAttribute("eventsList", eventsList);
            request.getRequestDispatcher("/payment.jsp").forward(request, response);
        }

        if (action != null && action.equals("add")) {
            String fid = request.getParameter("Fid");
            String uid = request.getParameter("uid");
            String docNo = UIDGenerator.generateDocF();
         
            // Create a new Tparticipation object with the provided parameters
            FieldTripParticipants fieldTripParticipants = new FieldTripParticipants();
            fieldTripParticipants.setFid(fid);
            fieldTripParticipants.setUid(uid);
            fieldTripParticipants.setDocNo(docNo);

            // Insert the Tparticipation object into the database
            FieldTripParticipantsManager fieldTripParticipantsManager = new FieldTripParticipantsManager();
            boolean success = fieldTripParticipantsManager.insert(fieldTripParticipants);

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