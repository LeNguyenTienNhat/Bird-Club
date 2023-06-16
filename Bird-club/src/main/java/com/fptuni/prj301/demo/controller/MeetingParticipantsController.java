/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.MeetingManager;
import com.fptuni.prj301.demo.dbmanager.MeetingParticipantsManager;
import com.fptuni.prj301.demo.model.Meeting;
import com.fptuni.prj301.demo.model.MeetingParticipants;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
            request.getRequestDispatcher("/member_meeting_register.jsp").forward(request, response);
        }
        
        if (action != null && action.equals("register")) {
            String meid = request.getParameter("MeID");
            String uid = request.getParameter("uid");
            String docNo = UIDGenerator.generateDocM();

            MeetingParticipants meetingparticipants = new MeetingParticipants();
            meetingparticipants.setMeID(meid);
            meetingparticipants.setUID(uid);
            meetingparticipants.setDocNo(docNo);

            MeetingParticipantsManager meetingparticipantsManager = new MeetingParticipantsManager();
            boolean success = meetingparticipantsManager.insert(meetingparticipants);

            if (success) {
                // Redirect to a success page
                response.sendRedirect(request.getContextPath() + "/member_meeting_register.jsp");
            } else {
                // Redirect to a failure page
                response.sendRedirect(request.getContextPath() + "/failure.jsp");
            }
        }
    }
}
