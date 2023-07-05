package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.BirdManager;
import com.fptuni.prj301.demo.dbmanager.MemberManager;
import com.fptuni.prj301.demo.dbmanager.TparticipationManager;
import com.fptuni.prj301.demo.model.Bird;
import com.fptuni.prj301.demo.model.Member;
import com.fptuni.prj301.demo.model.Tparticipation;
import java.io.IOException;
import java.text.DateFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tool.utils.EmailSender;
import tool.utils.Tools;

public class StaffMember extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        MemberManager manager = new MemberManager();

        //display a list of members
        if (action == null || action.equals("viewmembers")) {
            int page = 1, skip;
            try {
                page = Integer.parseInt(request.getParameter("page"));
                skip = (page - 1) * 20;
            } catch (NumberFormatException e) {
                skip = 0;
            }

            int month, year;
            List<Member> membersList;
            try {
                month = Integer.parseInt(request.getParameter("month"));
                year = Integer.parseInt(request.getParameter("year"));
                membersList = manager.getMemberListAsDuration(year, month);
            } catch (NumberFormatException e) {
                membersList = manager.getRecords(skip, 20, "member", "UID");
            }
            int memberNum = manager.getNumberOfMembers("member");
            int guestNum = manager.getNumberOfMembers("guest");
            int ignoredNum = manager.getNumberOfMembers("ignored");

            request.setAttribute("membersList", membersList);
            request.setAttribute("memberNum", memberNum);
            request.setAttribute("guestNum", guestNum);
            request.setAttribute("ignoredNum", ignoredNum);
            request.setAttribute("page", page);
            RequestDispatcher rd = request.getRequestDispatcher("staff_members.jsp");
            rd.forward(request, response);
        } //display a list of birds
        else if (action.equals("viewbirds")) {
            int page, skip;
            try {
                page = Integer.parseInt(request.getParameter("page"));
                skip = (page - 1) * 20;
            } catch (NumberFormatException e) {
                skip = 0;
                page = 1;
            }
            BirdManager bm = new BirdManager();
            List<Bird> birdsList = bm.getRecords(skip, 20);
            int totalNum = bm.getTotal();

            request.setAttribute("birdsList", birdsList);
            request.setAttribute("birdNum", totalNum);
            request.setAttribute("page", page);
            RequestDispatcher rd = request.getRequestDispatcher("staff_members_birds.jsp");
            rd.forward(request, response);
        } else if (action.equals("viewguests")) {
            int guestPage, guestSkip, ignoredPage, ignoredSkip;
            try {
                guestPage = Integer.parseInt(request.getParameter("guestPage"));
                guestSkip = (guestPage - 1) * 20;
            } catch (NumberFormatException e) {
                guestSkip = 0;
            }
            try {
                ignoredPage = Integer.parseInt(request.getParameter("ignoredPage"));
                ignoredSkip = (ignoredPage - 1) * 20;
            } catch (NumberFormatException e) {
                ignoredSkip = 0;
            }
            List<Member> guestsList = manager.getRecords(guestSkip, 20, "guest", "UID");
            List<Member> ignoredList = manager.getRecords(ignoredSkip, 20, "ignored", "UID");
            int guestNum = manager.getNumberOfMembers("guest");
            int ignoredNum = manager.getNumberOfMembers("ignored");

            request.setAttribute("guestsList", guestsList);
            request.setAttribute("ignoredList", ignoredList);
            request.setAttribute("guestNum", guestNum);
            request.setAttribute("ignoredNum", ignoredNum);
            RequestDispatcher rd = request.getRequestDispatcher("staff_guests.jsp");
            rd.forward(request, response);
        } //approve a member
        else if (action.equals("approvemember")) {
            String UID = request.getParameter("UID");
            manager.updateRole(UID, "member");

            MemberManager mm = new MemberManager();
            String email = mm.getUserEmail(UID);
            EmailSender e = new EmailSender();
            e.sendEmail(email, "Approval notification", ""
                    + "Congratulation on becoming one of ChimOwners' members", "http://localhost:8080/chimowners/");
            RequestDispatcher rd = request.getRequestDispatcher("StaffMember");
            rd.forward(request, response);
        } //view a member's details
        else if (action.equals("viewmemberdetails")) {
            String UID = request.getParameter("UID");
            Member member = manager.load(UID);
            BirdManager bm = new BirdManager();
            List<Bird> list = bm.getBirdsByUID(UID);
            Tools tool = new Tools();            
            int size = list.size();
            
            request.setAttribute("member", member);
            request.setAttribute("list", list);
            request.setAttribute("size", size);
            RequestDispatcher rd = request.getRequestDispatcher("staff_member_profile.jsp");
            rd.forward(request, response);
        } //Cancel approving a guest
        else if (action.equals("cancel")) {
            String UID = request.getParameter("UID");
            manager.updateRole(UID, "guest");

            RequestDispatcher rd = request.getRequestDispatcher("StaffMember");
            rd.forward(request, response);
        } //Ignore a guest
        else if (action.equals("ignore")) {
            String UID = request.getParameter("UID");
            manager.updateRole(UID, "ignored");

            RequestDispatcher rd = request.getRequestDispatcher("StaffMember");
            rd.forward(request, response);
        } else if (action.equals("viewbirddetails")) {
            String BID = request.getParameter("BID");
            BirdManager bm = new BirdManager();
            TparticipationManager tm = new TparticipationManager();
            Bird b = bm.load(BID);
            String ownerName = manager.load(b.getUID()).getFullName();
            b.setUID(ownerName);
            List<Tparticipation> list = tm.getAllParticipations(BID);
            int size = list.size();

            request.setAttribute("bird", b);
            request.setAttribute("list", list);
            request.setAttribute("size", size);
            RequestDispatcher rd = request.getRequestDispatcher("staff_bird_profile.jsp");
            rd.forward(request, response);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(StaffEvents.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(StaffEvents.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
