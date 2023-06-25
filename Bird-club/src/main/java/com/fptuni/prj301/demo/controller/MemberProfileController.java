/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.MemberManager;
import com.fptuni.prj301.demo.model.Member;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tool.utils.Tools;

/**
 *
 * @author DELL-7391
 */
public class MemberProfileController extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, ParseException {
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");
        Tools tool = new Tools();
        MemberManager memberManager = new MemberManager();

        if (action != null && action.equals("view")) {
            // Process the view action
            memberManager = new MemberManager();
            String users = request.getParameter("UID");

            request.setAttribute("users", users);
            request.getRequestDispatcher("/member_profile.jsp").forward(request, response);
        }
        //update member profile
        if (action != null && action.equals("updateprofile")) {
            String UID = request.getParameter("UID");
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            String fullName = request.getParameter("fullName");
            String gender = request.getParameter("gender");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String status = request.getParameter("status").trim();
            if (status != null) {
                status = status.trim();
            }
            String role = request.getParameter("role").trim();
            if (role != null) {
                role = role.trim();
            }

            String signupDate = tool.convertDateFormat(request.getParameter("signupDate"));
            String expiredDate = tool.convertDateFormat(request.getParameter("expiredDate"));

            String MID = request.getParameter("MID");
            String avatar = request.getParameter("avatar");
            Member member = new Member(UID, userName, password, fullName, gender, phone, email, status, role, signupDate, expiredDate, MID, avatar);

            memberManager.update(member);
            request.setAttribute("action", "view");
            RequestDispatcher rd = request.getRequestDispatcher("MemberProfileController");
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MemberProfileController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(MemberProfileController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MemberProfileController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(MemberProfileController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
