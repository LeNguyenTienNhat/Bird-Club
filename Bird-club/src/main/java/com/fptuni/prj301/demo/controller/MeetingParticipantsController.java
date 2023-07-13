/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.EventsMediaManager;
import com.fptuni.prj301.demo.dbmanager.LocationManager;
import com.fptuni.prj301.demo.dbmanager.MeetingManager;
import com.fptuni.prj301.demo.dbmanager.MeetingParticipantsManager;
import com.fptuni.prj301.demo.dbmanager.TournamentManager;
import com.fptuni.prj301.demo.model.Meeting;
import com.fptuni.prj301.demo.model.MeetingParticipants;
import com.fptuni.prj301.demo.model.Tournament;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tool.utils.Tools;
import tool.utils.UIDGenerator;

/**
 *
 * @author Legion
 */
public class MeetingParticipantsController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");

        if (action != null && action.equals("viewmeeting")) {
            // Process the view action
            MeetingManager meetingManager = new MeetingManager();
            String UID = request.getParameter("UID");
            List<Meeting> meetingsList = meetingManager.getList();
            request.setAttribute("meetingsList", meetingsList);
            request.getRequestDispatcher("/member_meeting_details.jsp").forward(request, response);
        }

        if (action != null && action.equals("add")) {
            String meid = request.getParameter("MeID");
            String uid = request.getParameter("UID");
            String docNo = UIDGenerator.generateDocM();
            HttpSession ss = request.getSession(true);

            MeetingParticipants meetingparticipants = new MeetingParticipants();
            meetingparticipants.setMeID(meid);
            meetingparticipants.setUID(uid);
            meetingparticipants.setDocNo(docNo);

            MeetingParticipantsManager meetingparticipantsManager = new MeetingParticipantsManager();
            boolean success = meetingparticipantsManager.insert(meetingparticipants);

            if (success) {
                // Redirect to a success page
                request.setAttribute("docT", docNo);
                ss.setAttribute("docT", docNo);
                response.sendRedirect(request.getContextPath() + "/StaffAccountMTController?action=viewmeeting");
            } else {
                // Redirect to a failure page
                response.sendRedirect(request.getContextPath() + "/login.jsp");
            }
        } else if (action.equals("view")) {
            // Retrieve the Tparticipation object from the database based on the provided parameters (e.g., docNo)
            String meid = request.getParameter("MeID");
            String UID = request.getParameter("UID");
            MeetingManager meetingManager = new MeetingManager();
            MeetingParticipantsManager meetingParticipantsManager = new MeetingParticipantsManager();
            List<MeetingParticipants> meetingParticipants = meetingParticipantsManager.getParticipantList(meid);
            LocationManager l = new LocationManager();
            Meeting meeting = meetingManager.getMeetingById(meid);
            String location = l.getCoordinationByMeetingId(meid);
            EventsMediaManager media = new EventsMediaManager();
            byte[]  a = media.getURLByID("MeetingMedia", meid);
            List<byte[]> images = media.getImagesByDescription("MeetingMedia", meid);

            boolean participantExists = false;
            for (MeetingParticipants participant : meetingParticipants) {
                if (participant.getUID().trim().equals(UID)) {
                    participantExists = true;
                    break;
                }
            }
            
            
            if (meeting != null) {
                // Store the Tparticipation object in request scope
                request.setAttribute("meeting", meeting);
                request.setAttribute("location", location);
                request.setAttribute("img", a);
                request.setAttribute("join", participantExists);
                 request.setAttribute("gallery", images);
                // Forward the request to the view page member_tournament_details
                RequestDispatcher dispatcher = request.getRequestDispatcher("/member_meeting_details.jsp");
                dispatcher.forward(request, response);
            } else {
                // Redirect to a failure page
                response.sendRedirect(request.getContextPath() + "/login.jsp");
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
