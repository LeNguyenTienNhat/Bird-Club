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
        Tools tool = new Tools();
        MemberManager manager = new MemberManager();

        //display a list of unapproved members
        if (action == null || action.equals("viewmembers")) {
            int page, skip;
            try {
                page = Integer.parseInt(request.getParameter("page"));
                skip = (page - 1) * 20;
            } catch (NumberFormatException e) {
                skip = 0;
            }
            List<Member> guestsList = manager.getRecords(0, 0, "guest", "UID");
            List<Member> membersList = manager.getRecords(skip, 20, "member", "UID");
            int size = manager.getNumberOfMembers();
            request.setAttribute("guestsList", guestsList);
            request.setAttribute("membersList", membersList);
            request.setAttribute("size", size);
            RequestDispatcher rd = request.getRequestDispatcher("staff_members.jsp");
            rd.forward(request, response);
        } //approve a member
        else if (action.equals("approvemember")) {
            String UID = request.getParameter("UID");
            manager.approve(UID);

            RequestDispatcher rd = request.getRequestDispatcher("StaffMember");
            rd.forward(request, response);
        } //view a member's details
        else if (action.equals("viewmemberdetails")) {
            String UID = request.getParameter("UID");
            Member member = manager.load(UID);

            request.setAttribute("member", member);
            RequestDispatcher rd = request.getRequestDispatcher("staff_member_profile.jsp");
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
