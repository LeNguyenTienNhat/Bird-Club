/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.MemberShipManager;
import com.fptuni.prj301.demo.model.MemberShip;
import java.io.IOException;
import java.math.BigDecimal;
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
 * @author Administrator
 */
@WebServlet(name = "MemberShipController", urlPatterns = {"/MemberShipController"})
public class MemberShipController extends HttpServlet {

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
        String action = request.getParameter("action");
        MemberShipManager mbs = new MemberShipManager();
        HttpSession ss = request.getSession(true);
        
        //MEMBER INTERFACE: View a list of memberships
        if (action.equals("view")) {
            List<MemberShip> records = mbs.getAllRecords();
            request.setAttribute("records", records);
            request.getRequestDispatcher("/member_membership.jsp").forward(request, response);
        } 

        //MEMBER INTERFACE: A member purchased a membership bundle
        else if (action.equals("add")) {
            String userId = request.getParameter("UID");
            String membership = request.getParameter("membership");
            boolean updateMembership = mbs.updateMembership(membership, userId);
            boolean updateExpiredDay = mbs.updateExpiredDay(membership, userId);

            if (updateMembership && updateExpiredDay) {
                String docNo = UIDGenerator.generateDocMS();
                request.setAttribute("docT", docNo);
                ss.setAttribute("docT", docNo);
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            } else {
                response.sendRedirect(request.getContextPath() + "/EventDetails.jsp");
            }
        } 

        //STAFF INTERFACE: Add a membership
        else if (action.equals("addmembership")) {
            Tools tool = new Tools();
            
            String MID = tool.generateID("Membership", "MID");
            String name = request.getParameter("name");
            String duration = request.getParameter("duration");
            String description = request.getParameter("description");
            BigDecimal value = new BigDecimal(request.getParameter("value"));
            MemberShip membership = new MemberShip(MID, name, value, duration+" months", description, "available");
            mbs.insert(membership);

            response.sendRedirect("/MemberShipController");

        } 

        //STAFF INTERFACE: View a list of memberships
        else if (action == null || action.equals("list")) {
            List<MemberShip> r = mbs.getAllRecords();
            request.setAttribute("r", r);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/staff_memberships.jsp");
            dispatcher.forward(request, response);

        } 

        //STAFF INTERFACE: Edit a membership's details
        else if (action.equals("edit")) {
            String MID = request.getParameter("MID");
            MemberShip r = mbs.getMembershipById(MID);
            r.setDuration(r.getDuration().substring(0, 1));
            request.setAttribute("membership", r);
            RequestDispatcher dispatcher = request.getRequestDispatcher("staff_memberships_details.jsp");
            dispatcher.forward(request, response);
        }
        
        //STAFF INTERFACE: Edit a membership's details
        else if (action.equals("update")) {
            String MID = request.getParameter("MID");
            String name = request.getParameter("name");
            String duration = request.getParameter("duration");
            String description = request.getParameter("description");
            BigDecimal value = new BigDecimal(request.getParameter("value"));
            String status = request.getParameter("status");
            MemberShip membership = new MemberShip(MID, name, value, duration+" months", description, status);
            mbs.update(membership);

            response.sendRedirect("/MemberShipController");

        }
        
         else if (action.equals("donate")) {
             String docNo = UIDGenerator.generateDocD();
            request.setAttribute("docT", docNo);
                ss.setAttribute("docT", docNo);

            response.sendRedirect(request.getContextPath() + "/index.jsp");

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
