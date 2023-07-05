package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.FeedbackManager;
import com.fptuni.prj301.demo.model.Feedback;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tool.utils.Tools;

public class StaffFeedback extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        FeedbackManager fm = new FeedbackManager();
        Tools tool = new Tools();

        //View all feedbacks
        if (action == null || action.equals("viewfeedbacks")) {
            int page, skip;
            try {
                page = Integer.parseInt(request.getParameter("page"));
                skip = (page - 1) * 20;
            } catch (NumberFormatException e) {
                skip = 0;
            }
            List<Feedback> list = fm.getRecords(skip, 20, "Technical", "date");
            
            int allfeedbacks = fm.getNumberAsStatus("all");
            int pending = fm.getNumberAsStatus("pending");
            request.setAttribute("list", list);
            request.setAttribute("allfeedbacks", allfeedbacks);
            request.setAttribute("pending", pending);
            RequestDispatcher rd = request.getRequestDispatcher("staff_feedbacks.jsp");
            rd.forward(request, response);
        }
        
        else if (action.equals("mark")) {
            String FeID = request.getParameter("FeID");
            fm.updateStatus(FeID, "seen");
            RequestDispatcher rd = request.getRequestDispatcher("StaffFeedback");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(StaffFeedback.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(StaffFeedback.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
