/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.FieldtripManager;
import com.fptuni.prj301.demo.dbmanager.StaffAccountManager;
import com.fptuni.prj301.demo.dbmanager.TournamentManager;
import com.fptuni.prj301.demo.model.Tournament;
import com.fptuni.prj301.demo.model.Fieldtrip;
import com.fptuni.prj301.demo.model.UserSession;
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
import tool.utils.Mailer;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "StaffAccountController", urlPatterns = {"/StaffAccountController"})
public class StaffAccountController extends HttpServlet {

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

        if (action != null && action.equals("approve")) {
            String userId = request.getParameter("UID");
            String role = request.getParameter("role");

            // Call the DAO to update the user's status as "active"
            StaffAccountManager userDao = new StaffAccountManager();
            boolean success = userDao.approveUser(userId, role);

            if (success) {
                String email = userDao.getUserEmail(userId);
                Mailer.send("fptswp@gmail.com", "fijqfrjphrrkenna", email, "Bird Club", "You account have been approve", "http://localhost:8080/chimowners/member_checkout.jsp");
                response.sendRedirect(request.getContextPath() + "staff_homepage.jsp");
            } else {
                response.sendRedirect("staff_approval_failure.jsp");
            }
        } else if (action != null && action.equals("view")) {

            StaffAccountManager staffAccountManager = new StaffAccountManager();
            List<UserSession> userList = staffAccountManager.getUsersWithUnactiveStatus();

            if (!userList.isEmpty()) {
                request.setAttribute("userList", userList);
                request.getRequestDispatcher("/staff_member.jsp").forward(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/staff_member.jsp");
            }
        } else if (action == null || action.equals("viewlist")) {
            int pageNumber = 1; // Default page number
            int pageSize = 5; // Default page size

            String pageParam = request.getParameter("page");
            if (pageParam != null && !pageParam.isEmpty()) {
                pageNumber = Integer.parseInt(pageParam);
            }

            TournamentManager tournamentManager = new TournamentManager();
            List<Tournament> tournamentsList = tournamentManager.getListP(pageNumber, pageSize);
            request.setAttribute("tList", tournamentsList);

            int totalTournaments = tournamentManager.getTotalNumber("all"); // Get the total count of tournaments
            int totalPages = (int) Math.ceil((double) totalTournaments / pageSize); // Calculate the total number of pages

            request.setAttribute("pageNumber", pageNumber);
            request.setAttribute("pageSize", pageSize);
            request.setAttribute("totalPages", totalPages);

            RequestDispatcher rd = request.getRequestDispatcher("member_tournament.jsp");
            rd.forward(request, response);
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
