/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.LocationManager;
import com.fptuni.prj301.demo.dbmanager.TransactionManager;
import com.fptuni.prj301.demo.dbmanager.UserAccessManager;
import com.fptuni.prj301.demo.model.Location;
import com.fptuni.prj301.demo.model.Transaction;
import java.io.IOException;
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

@WebServlet(name = "TransactionController", urlPatterns = {"/TransactionController"})
public class TransactionController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action != null && action.equals("add")) {
            String PID = UIDGenerator.generatePID();

            BigDecimal amount1 = new BigDecimal(request.getParameter("amount")).multiply(BigDecimal.valueOf(100));
            String uid = request.getParameter("UID");
            String TT = request.getParameter("TT");
            String doc = request.getParameter("docT");
            String name = request.getParameter("name");
            if (name != null) {
                UserAccessManager u = new UserAccessManager();
                uid = u.findUIDByName(name);
            }

            Transaction transaction = new Transaction();
            transaction.setPID(PID);
            transaction.setUID(uid);
            transaction.setValue(amount1); // Set the value
            transaction.setPaymentDate(new Date()); // Set the payment date
            transaction.setTransactionType(TT); // Set the transaction type
            transaction.setDocNo(doc); // Set the DocNo

            TransactionManager transactionManager = new TransactionManager();
            boolean insertionSuccess = transactionManager.insertTransaction(transaction);
            if (uid == null) {
                request.getRequestDispatcher("/.jsp").forward(request, response);
            }
            if (insertionSuccess) {
                request.setAttribute("successMessage", "Transaction saved successfully");
                request.getRequestDispatcher("/payment_success.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("successMessage", "Transaction saved successfully");
                request.getRequestDispatcher("/payment_fail.jsp").forward(request, response);
                return;
            }
        }
        if (action != null && action.equals("location")) {
            LocationManager l = new LocationManager();
            List<Location> locations = l.getList();
             HttpSession ss = request.getSession(true);
            ss.setAttribute("location", locations);
            
           response.sendRedirect(request.getContextPath() +"/member_locations.jsp");
        }

        // Handle insertion failure if needed
        // For example, show an error message or redirect to an error page
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
