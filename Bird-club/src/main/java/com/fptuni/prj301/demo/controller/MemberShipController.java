/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.MemberShipManager;
import com.fptuni.prj301.demo.model.MemberShip;
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
        if (action != null && action.equals("view")) {

            List<MemberShip> records = mbs.getAllRecords();
            request.setAttribute("records", records);
            request.getRequestDispatcher("/member_membership.jsp").forward(request, response);
        } else if (action != null && action.equals("add")) {
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
        } else if (action != null && action.equals("list")) {

            List<MemberShip> r = mbs.getAllRecords();
            if (r != null) {
                request.setAttribute("r", r);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/staff_memberships.jsp");
                dispatcher.forward(request, response);
            }
        } else if (action != null && action.equals("edit")) {
            String MID = request.getParameter("MID");
            MemberShip r = mbs.getMembershipById(MID);
            if (r != null) {
                request.setAttribute("r", r);
                response.sendRedirect(request.getContextPath() + "/staff_memberships_details.jsp");
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
