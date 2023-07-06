    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.FieldtripManager;
import com.fptuni.prj301.demo.dbmanager.MeetingManager;
import com.fptuni.prj301.demo.dbmanager.NewsManager;
import com.fptuni.prj301.demo.dbmanager.TournamentManager;
import com.fptuni.prj301.demo.model.Fieldtrip;
import com.fptuni.prj301.demo.model.Meeting;
import com.fptuni.prj301.demo.model.News;
import com.fptuni.prj301.demo.model.Tournament;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "HomepageController", urlPatterns = {"/HomepageController"})
public class HomepageController extends HttpServlet {

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

        HttpSession ss = request.getSession(true);
        if (action != null && action.equals("view")) {
            TournamentManager tournamentManager = new TournamentManager();
            List<Tournament> tournamentsList = tournamentManager.getTop10();
           
            FieldtripManager eventsManager = new FieldtripManager();
            List<Fieldtrip> eventsList = eventsManager.getTop10();
            
            MeetingManager meetingManager = new MeetingManager();
            List<Meeting> meetingsList = meetingManager.getTop10();
             NewsManager nm = new NewsManager();
             List<News> list = nm.getTop10();
            
            ss.setAttribute("news", list); 
            
            request.setAttribute("meetingsList", meetingsList);
            request.setAttribute("eventsList", eventsList);
            request.setAttribute("tList", tournamentsList);
             
            request.getRequestDispatcher("/member_homepage.jsp").forward(request, response);
        }
         else {
            response.sendRedirect(request.getContextPath() + "/home?action=view");
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
