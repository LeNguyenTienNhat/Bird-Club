/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.BirdManager;
import com.fptuni.prj301.demo.dbmanager.EventsMediaManager;
import com.fptuni.prj301.demo.dbmanager.LocationManager;
import com.fptuni.prj301.demo.dbmanager.TournamentManager;
import com.fptuni.prj301.demo.dbmanager.TparticipationManager;
import com.fptuni.prj301.demo.model.Bird;
import com.fptuni.prj301.demo.model.Tournament;
import com.fptuni.prj301.demo.model.Tparticipation;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.List;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "TparticipationController", urlPatterns = {"/TparticipationController"})
public class TparticipationController extends HttpServlet {

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
        if (action != null && action.equals("add")) {
            String tid = request.getParameter("Tid");
            String bid = request.getParameter("bid");
            String docNo = UIDGenerator.generateDocT();

            // Create a new Tparticipation object with the provided parameters
            Tparticipation tparticipation = new Tparticipation();
            tparticipation.setTID(tid);
            tparticipation.setBID(bid);
            tparticipation.setDocNo(docNo);
            tparticipation.setAchievement("non");
            tparticipation.setScore(BigDecimal.ZERO);

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
        } else if (action.equals("view")) {
            // Retrieve the Tparticipation object from the database based on the provided parameters (e.g., docNo)
            String tid = request.getParameter("TID");
            String UID = request.getParameter("UID");
            TournamentManager tparticipationManager = new TournamentManager();
            LocationManager l = new LocationManager();
            Tournament tournament = tparticipationManager.getTournamentById(tid);
            String location = l.getCoordinationByTournamentId(tid);
            EventsMediaManager media = new EventsMediaManager();
            byte[] a = media.getURLByID("TournamentMedia", tid);
            TparticipationManager p = new TparticipationManager();
            List<byte[]> images = media.getImagesByDescription("TournamentMedia", tid);
            List<Tparticipation> list = p.getBirdList(tid);
            BirdManager b = new BirdManager();
            List<Bird> birds = b.getBirdsByUID(UID);
            boolean participantFound = false;
            Tparticipation participant = null;
            for (Bird bird : birds) {
                // Check if a participant exists for the current bird
                participant = p.getParticipant(tid, bird.getBID());

                if (participant != null) {
                    participantFound = true;
                    break; // Exit the loop if a participant is found
                }
            }
            if (participantFound) {
                request.setAttribute("bird", participant.getBID());
            }

            if (tournament != null) {
                // Store the Tparticipation object in request scope
                request.setAttribute("tournament", tournament);
                request.setAttribute("location", location);
                request.setAttribute("img", a);
                request.setAttribute("join", participantFound);
                request.setAttribute("gallery", images);
                request.setAttribute("list", list);

                // Forward the request to the view page
                RequestDispatcher dispatcher = request.getRequestDispatcher("/member_tournament_details.jsp");
                dispatcher.forward(request, response);
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
