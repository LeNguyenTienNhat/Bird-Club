package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.MemberManager;
import com.fptuni.prj301.demo.model.Member;
import tool.utils.Tools;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StaffMember extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        MemberManager manager = new MemberManager();

        //display a list of members
        if (action == null || action.equals("viewmembers")) {
            int page, skip;
            try {
                page = Integer.parseInt(request.getParameter("page"));
                skip = (page - 1) * 20;
            } catch (NumberFormatException e) {
                skip = 0;
            }
            List<Member> membersList = manager.getRecords(skip, 20, "member", "UID");
            int memberNum = manager.getNumberOfMembers("member");
            int guestNum = manager.getNumberOfMembers("guest");
            int ignoredNum = manager.getNumberOfMembers("ignored");
            
            request.setAttribute("membersList", membersList);
            request.setAttribute("memberNum", memberNum);
            request.setAttribute("guestNum", guestNum);
            request.setAttribute("ignoredNum", ignoredNum);
            RequestDispatcher rd = request.getRequestDispatcher("staff_members.jsp");
            rd.forward(request, response);
        } 
        
        else if (action.equals("viewguests")) {
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
        } 




        //approve a member
        else if (action.equals("approvemember")) {
            String UID = request.getParameter("UID");
            manager.updateRole(UID, "member");

            RequestDispatcher rd = request.getRequestDispatcher("StaffMember");
            rd.forward(request, response);
        } //view a member's details
        else if (action.equals("viewmemberdetails")) {
            String UID = request.getParameter("UID");
            Member member = manager.load(UID);

            request.setAttribute("member", member);
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
