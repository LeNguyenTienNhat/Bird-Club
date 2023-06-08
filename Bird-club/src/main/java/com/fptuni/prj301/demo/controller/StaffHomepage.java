
package com.fptuni.prj301.demo.controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StaffHomepage extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String action = request.getParameter("action");
            
            if (action == null || action.equals("staffhome")) {
//                GalleryAccessManager load = new GalleryAccessManager();
//                List<Image> gallery = load.loadGallery();
//                request.setAttribute("gallery", gallery);
                RequestDispatcher rd = request.getRequestDispatcher("staff_homepage.jsp");
                rd.forward(request, response);                
            }            
            
            else if (action.equals("events")) {
                request.setAttribute("action", "viewevents");
                RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
                rd.forward(request, response);
            }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
