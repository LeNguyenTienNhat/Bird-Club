/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.EventsMediaManager;
import com.fptuni.prj301.demo.dbmanager.FieldTripParticipantsManager;
import com.fptuni.prj301.demo.dbmanager.FieldtripManager;
import com.fptuni.prj301.demo.dbmanager.LocationManager;
import com.fptuni.prj301.demo.dbmanager.TransactionManager;
import com.fptuni.prj301.demo.model.FieldTripParticipants;
import com.fptuni.prj301.demo.model.Fieldtrip;
import com.fptuni.prj301.demo.model.Transaction;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.Date;
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
 * @author DELL-7391
 */
public class FieldTripParticipantsController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");
        if (action != null && action.equals("viewfieldtrip")) {
            // Process the view action
            FieldtripManager eventsManager = new FieldtripManager();
            String UID = request.getParameter("UID");
            List<Fieldtrip> eventsList = eventsManager.getList();
            request.setAttribute("eventsList", eventsList);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }

        if (action != null && action.equals("add")) {
            String fid = request.getParameter("FID");
            String uid = request.getParameter("UID");
            String docNo = UIDGenerator.generateDocF();
            HttpSession ss = request.getSession(true);
            // Create a new Tparticipation object with the provided parameters
            FieldTripParticipants fieldTripParticipants = new FieldTripParticipants();
            fieldTripParticipants.setFid(fid);
            fieldTripParticipants.setUid(uid);
            fieldTripParticipants.setDocNo(docNo);
            // Insert the Tparticipation object into the database
            FieldTripParticipantsManager fieldTripParticipantsManager = new FieldTripParticipantsManager();
            boolean success = fieldTripParticipantsManager.insert(fieldTripParticipants);

            if (success) {
                // Redirect to a success page
                request.setAttribute("docT", docNo);
                ss.setAttribute("docT", docNo);
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            } else {
                // Redirect to a failure page
                response.sendRedirect(request.getContextPath() + "/failure.jsp");
            }
        } else if (action.equals("view")) {
            // Retrieve the Tparticipation object from the database based on the provided parameters (e.g., docNo)
            String fid = request.getParameter("FID");
            String UID = request.getParameter("UID");
            FieldtripManager fieldtripManager = new FieldtripManager();
            FieldTripParticipantsManager f = new FieldTripParticipantsManager();
            List< FieldTripParticipants> field = f.getParticipantList(fid);
            LocationManager l = new LocationManager();
            Fieldtrip fieldtrip = fieldtripManager.getFieldTripById(fid);
            String location = l.getCoordinationByFieldTripId(fid);
            EventsMediaManager media = new EventsMediaManager();
            byte[]  a = media.getURLByID("FieldTripMedia", fid);

            boolean participantExists = false;
            for (FieldTripParticipants participant : field) {
                if (participant.getUid().trim().equals(UID)) {
                    participantExists = true;
                    break;
                }
            }

            
            if (fieldtrip != null) {
                // Store the Tparticipation object in request scope
                request.setAttribute("fieldtrip", fieldtrip);
                request.setAttribute("location", location);
                request.setAttribute("img", a);
                request.setAttribute("join", participantExists);
                // Forward the request to the view page
                RequestDispatcher dispatcher = request.getRequestDispatcher("/member_fieldtrip_details.jsp");
                dispatcher.forward(request, response);
            } else {
                // Redirect to a failure page
                response.sendRedirect(request.getContextPath() + "/fail.jsp");
            }
        }
        if (action != null && action.equals("delete")) {
            String docNoToDelete = request.getParameter("docF");

            if (docNoToDelete != null) {
                FieldTripParticipantsManager eventsManager = new FieldTripParticipantsManager();
                boolean deletionSuccess = eventsManager.delete(docNoToDelete);

                if (deletionSuccess) {
                    // Deletion successful, redirect to a success page
                    response.sendRedirect(request.getContextPath() + "/member_homepage.jsp");
                } else {
                    // Deletion failed, redirect to a failure page
                    response.sendRedirect(request.getContextPath() + "/failure.jsp");
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
            String doc = request.getParameter("docF");

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
