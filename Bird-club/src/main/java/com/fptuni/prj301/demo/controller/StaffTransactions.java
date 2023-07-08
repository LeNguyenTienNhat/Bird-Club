package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.TransactionManager;
import com.fptuni.prj301.demo.model.Transaction;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StaffTransactions extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        TransactionManager tm = new TransactionManager();

        if (action == null || action.equals("view")) {
            int page, skip, revenue;
            String transactionType = request.getParameter("transactionType");
            if (transactionType == null) {
                transactionType = "all";
            }
            try {
                page = Integer.parseInt(request.getParameter("page"));
                skip = (page - 1) * 20;
            } catch (NumberFormatException e) {
                skip = 0;
                page = 1;
            }
            int totalNum = tm.countNumAsTransactionType(transactionType);
            List<Transaction> list = tm.getRecords(skip, 20, transactionType);
            revenue = tm.getSumAsTransactionType(transactionType);
            request.setAttribute("revenue", revenue);
            request.setAttribute("list", list);
            request.setAttribute("pageNum", page);
            request.setAttribute("transactionType", transactionType);
            request.setAttribute("totalNum", totalNum);
            RequestDispatcher rd = request.getRequestDispatcher("staff_transactions.jsp");
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods.">
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
