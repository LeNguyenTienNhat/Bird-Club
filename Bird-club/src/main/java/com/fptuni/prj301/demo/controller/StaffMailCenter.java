package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.BirdManager;
import com.fptuni.prj301.demo.dbmanager.FieldTripParticipantsManager;
import com.fptuni.prj301.demo.dbmanager.FieldtripManager;
import com.fptuni.prj301.demo.dbmanager.MeetingManager;
import com.fptuni.prj301.demo.dbmanager.MeetingParticipantsManager;
import com.fptuni.prj301.demo.dbmanager.MemberManager;
import com.fptuni.prj301.demo.dbmanager.TournamentManager;
import com.fptuni.prj301.demo.dbmanager.TparticipationManager;
import com.fptuni.prj301.demo.model.FieldTripParticipants;
import com.fptuni.prj301.demo.model.Fieldtrip;
import com.fptuni.prj301.demo.model.Meeting;
import com.fptuni.prj301.demo.model.MeetingParticipants;
import com.fptuni.prj301.demo.model.Member;
import com.fptuni.prj301.demo.model.Tournament;
import com.fptuni.prj301.demo.model.Tparticipation;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tool.utils.EmailSender;
import tool.utils.MessageContent;
import tool.utils.Tools;

public class StaffMailCenter extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        Tools tool = new Tools();
        TournamentManager tManager = new TournamentManager();
        FieldtripManager fManager = new FieldtripManager();
        MeetingManager mManager = new MeetingManager();

        if (action == null || action.equals("viewmailform")) {
            String ID = request.getParameter("ID");
            String name, id, category;
            switch (ID.charAt(0)) {
                case 'T':
                    Tournament t = tManager.load(ID);
                    name = t.getName();
                    id = t.getTID();
                    category = "Tournament";
                    break;
                case 'F':
                    Fieldtrip f = fManager.load(ID);
                    name = f.getName();
                    id = f.getFID();
                    category = "FieldTrip";
                    break;
                default:
                    Meeting m = mManager.load(ID);
                    name = m.getName();
                    id = m.getMeID();
                    category = "Meeting";
                    break;
            }
            request.setAttribute("name", name);
            request.setAttribute("ID", id);
            request.setAttribute("category", category);
            RequestDispatcher rd = request.getRequestDispatcher("staff_mail.jsp");
            rd.forward(request, response);
        } else if (action.equals("notifymember")) {
            MessageContent c = new MessageContent();

            String ID = request.getParameter("ID");
            String category = request.getParameter("category");
            String subject = request.getParameter("subject");
            String headline = request.getParameter("headline");
            String content = c.splitAndFormatContent(headline, request.getParameter("content"));
            String link = request.getParameter("link");
            String receiver = request.getParameter("receiver");
            if (link.isEmpty()) {
                link = "http://localhost:8080/chimowners/";
            }
            List<String> emailList = new ArrayList(); //list of receivers' email address
            MemberManager mm = new MemberManager();
            BirdManager bm = new BirdManager();

            //notify all members
            if (receiver.equals("member")) {
                emailList = mm.getAllUserEmail();
            } //notify only TOURNAMENT participants
            else if (category.equalsIgnoreCase("Tournament")) {
                TparticipationManager tm = new TparticipationManager();
                List<Tparticipation> tlist = tm.getParticipantList(ID);
                for (Tparticipation t : tlist) {
                    String UID = bm.getBirdOwnerUIDByBID(t.getBid());
                    String emailAddress = mm.getUserEmail(UID);
                    emailList.add(emailAddress);
                }
            } //notify only MEETING participants
            else if (category.equalsIgnoreCase("Meeting")) {
                MeetingParticipantsManager mpm = new MeetingParticipantsManager();
                List<MeetingParticipants> mlist = mpm.getParticipantList(ID);
                for (MeetingParticipants mp : mlist) {
                    String UID = mp.getUID();
                    String emailAddress = mm.getUserEmail(UID);                 
                    emailList.add(emailAddress);
                }
            } //notify only FIELD TRIP participants
            else {
                FieldTripParticipantsManager ftm = new FieldTripParticipantsManager();
                List<FieldTripParticipants> flist = ftm.getParticipantList(ID);
                for (FieldTripParticipants f : flist) {
                    String UID = f.getUid();
                    String emailAddress = mm.getUserEmail(UID);                 
                    emailList.add(emailAddress);
                }
            }

            EmailSender e = new EmailSender();
            for (String email : emailList) {
                 e.sendEmail(email, subject, content, link);                
            }
            request.setAttribute("action", "viewmailform");
            RequestDispatcher rd = request.getRequestDispatcher("StaffMailCenter");
            rd.forward(request, response);
        } 
        
        
        
        else if (action.equalsIgnoreCase("sendapprovalmessage")) {
            String UID = request.getParameter("UID");
            MemberManager mm = new MemberManager();
            String email = mm.getUserEmail(UID);
            EmailSender e = new EmailSender();
            e.sendEmail(email, "Approval notification", ""
                    + "Congratulation on becoming one of ChimOwners' members", "http://localhost:8080/chimowners/");
            RequestDispatcher rd = request.getRequestDispatcher("StaffMember");
            rd.forward(request, response);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(StaffMailCenter.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(StaffMailCenter.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
