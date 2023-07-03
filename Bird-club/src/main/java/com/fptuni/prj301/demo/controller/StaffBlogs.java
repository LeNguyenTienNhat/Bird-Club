package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.BlogManager;
import com.fptuni.prj301.demo.model.Blog;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tool.utils.Tools;

public class StaffBlogs extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        BlogManager bm = new BlogManager();
        Tools tool = new Tools();

        //View all news
        if (action == null || action.equals("viewblogs")) {
            int page, skip;
            String status = request.getParameter("status");
            if (status == null) {
                status = "idle";
            }
            try {
                page = Integer.parseInt(request.getParameter("page"));
                skip = (page - 1) * 10;
            } catch (NumberFormatException e) {
                skip = 0;
                page = 1;
            }
            List<Blog> list = bm.getRecords(skip, 10, status, "uploadDate");
            int listSize = list.size();
            int totalNum = bm.getTotalNum("all");
            int idleNum = bm.getTotalNum("idle");
            int appovedNum = bm.getTotalNum("approved");
            int deniedNum = bm.getTotalNum("denied");

            request.setAttribute("status", status);
            request.setAttribute("pageNum", page);
            request.setAttribute("totalNum", totalNum);
            request.setAttribute("idleNum", idleNum);
            request.setAttribute("appovedNum", appovedNum);
            request.setAttribute("deniedNum", deniedNum);
            request.setAttribute("list", list);
            request.setAttribute("listSize", listSize);
            RequestDispatcher rd = request.getRequestDispatcher("staff_blogs.jsp");
            rd.forward(request, response);
        } //Approve
        else if (action.equals("approve")) {
            String BLID = request.getParameter("BLID");
            bm.updateStatus(BLID, "approved");
            RequestDispatcher rd = request.getRequestDispatcher("StaffBlogs");
            rd.forward(request, response);
        } //Denie
        else if (action.equals("denie")) {
            String BLID = request.getParameter("BLID");
            bm.updateStatus(BLID, "denied");
            RequestDispatcher rd = request.getRequestDispatcher("StaffBlogs");
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | ParseException ex) {
            Logger.getLogger(StaffNews.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException | ParseException ex) {
            Logger.getLogger(StaffNews.class.getName()).log(Level.SEVERE, null, ex);
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
