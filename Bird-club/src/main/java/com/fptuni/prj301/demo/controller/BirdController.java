/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.BirdManager;
import com.fptuni.prj301.demo.dbmanager.MemberShipManager;
import com.fptuni.prj301.demo.dbmanager.TournamentManager;
import com.fptuni.prj301.demo.dbmanager.TparticipationManager;
import com.fptuni.prj301.demo.dbmanager.TransactionManager;
import com.fptuni.prj301.demo.model.Bird;
import com.fptuni.prj301.demo.model.Tournament;
import com.fptuni.prj301.demo.model.Tparticipation;
import com.fptuni.prj301.demo.model.Transaction;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tool.utils.UIDGenerator;

import static tool.utils.UIDGenerator.generateDocT;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "BirdController", urlPatterns = {"/BirdController"})
public class BirdController extends HttpServlet {

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
        if (action != null && action.equals("view")) {
            //View birds owned to participate in the tournament
            BirdManager birdController = new BirdManager();
            String TID = request.getParameter("TID");
            String UID = request.getParameter("UID");
            String BID = request.getParameter("bird");
            List<Bird> birds = birdController.getBirdsByUID(UID);
            TournamentManager t = new TournamentManager();
            Tournament tournament = t.getTournamentById(TID);
            request.setAttribute("tournament", tournament);
            request.setAttribute("join", BID);
            request.setAttribute("birdList", birds);

            request.getRequestDispatcher("/member_TsignUp.jsp").forward(request, response);
        }
        if (action != null && action.equals("add")) {
            String tid = request.getParameter("TID");
            String bid = request.getParameter("BID");
            String docNo = UIDGenerator.generateDocT();
            HttpSession ss = request.getSession(true);

            TournamentManager t = new TournamentManager();
            Tournament tournament = t.getTournamentById(tid);
            int fee = tournament.getFee();
            // Create a new Tparticipation object with the provided parameters
            Tparticipation tparticipation = new Tparticipation();
            tparticipation.setTID(tid);
            tparticipation.setBID(bid);
            tparticipation.setDocNo(docNo);
            tparticipation.setAchievement("non");
            tparticipation.setScore(BigDecimal.ZERO);

            // Insert the Tparticipation object into the database
            TparticipationManager tparticipationManager = new TparticipationManager();
            boolean success = tparticipationManager.insert(tparticipation);

            if (success) {
                // Redirect to a success page
                request.setAttribute("docT", docNo);
                ss.setAttribute("docT", docNo);
                ss.setAttribute("amounttopay", fee);
                ss.setAttribute("TransactionType", "fee");
                response.sendRedirect(request.getContextPath() + "/vnpay_pay.jsp");
            } else {
                // Redirect to a failure page
                response.sendRedirect(request.getContextPath() + "/error.html");
            }
        }
        if (action != null && action.equals("delete")) {
            String docNoToDelete = request.getParameter("docT");
            String old = request.getParameter("old");
            String transactionType = request.getParameter("TransactionType");
            String UID = request.getParameter("username");

            if (transactionType.trim().equals("donate")) {
                response.sendRedirect(request.getContextPath() + "/home?action=view");
            } else if (transactionType.trim().equals("fee")) {
                TparticipationManager tparticipationManager = new TparticipationManager();
                boolean deletionSuccess = tparticipationManager.delete(docNoToDelete);

                if (deletionSuccess) {
                    // Deletion successful, redirect to a success page
                    response.sendRedirect(request.getContextPath() + "/home?action=view");
                } else {
                    // Deletion failed, redirect to a failure page
                    response.sendRedirect(request.getContextPath() + "/.jsp");
                }
            } else if (old.trim() != null) {
                MemberShipManager m = new MemberShipManager();
                boolean updateMembership = m.updateMembership(old, UID);
                if (updateMembership) {
                    response.sendRedirect(request.getContextPath() + "/home?action=view");
                }
            } else {
                // Missing docT attribute, redirect to a failure page
                response.sendRedirect(request.getContextPath() + "/failure.jsp");
            }
        }
        if (action != null && action.equals("save")) {
            String PID = UIDGenerator.generatePID();
            BigDecimal amount1 = new BigDecimal(request.getParameter("amount")).multiply(BigDecimal.valueOf(100));
            String uid = request.getParameter("UID");
            String TT = request.getParameter("TT");
            String doc = request.getParameter("docT");

            Transaction transaction = new Transaction();
            transaction.setPID(PID);
            transaction.setUID(uid);
            transaction.setValue(amount1); // Set the value
            transaction.setPaymentDate(new Date()); // Set the payment date
            transaction.setTransactionType(TT); // Set the transaction type
            transaction.setDocNo(doc); // Set the DocNo

            TransactionManager transactionManager = new TransactionManager();
            boolean insertionSuccess = transactionManager.insertTransaction(transaction);
            if (insertionSuccess) {
                request.setAttribute("successMessage", "Transaction saved successfully");
                request.getRequestDispatcher("/vnpay_pay.jsp").forward(request, response);
                return;
            }
        }

        if (action != null && action.equals("viewbirdprofile")) {
            // Process the view action
            BirdManager birdController = new BirdManager();
            String UID = request.getParameter("UID");
            List<Bird> birds = birdController.getBirdsByUID(UID);
            request.setAttribute("birdList", birds);
            request.getRequestDispatcher("/member_BirdList.jsp").forward(request, response);
        }
        if (action != null && action.equals("viewbirddetail")) {
            // Process the view action
            BirdManager birdController = new BirdManager();
            String UID = request.getParameter("UID");
            List<Bird> birds = birdController.getBirdsByUID(UID);
            request.setAttribute("birdList", birds);
            request.getRequestDispatcher("/member_BirdDetail.jsp").forward(request, response);
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
