///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.fptuni.prj301.demo.controller;
//
//import com.fptuni.prj301.demo.dbmanager.BirdManager;
//import com.fptuni.prj301.demo.model.BirdProfile;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
///**
// *
// * @author Legion
// */
//public class BirdProfileEditController extends HttpServlet {
//
//    /**
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
//     * methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException, ClassNotFoundException {
//        response.setContentType("text/html;charset=UTF-8");                
//       String action = request.getParameter("action");
//       BirdManager birdManager = new BirdManager();
//        
//
//        if (action != null && action.equals("view")) {
//            // Process the view action
//           birdManager  = new BirdManager();
//            String birds = request.getParameter("BID");
//
//            request.setAttribute("birds", birds);
//            request.getRequestDispatcher("/member_BirdLish.jsp").forward(request, response);
//        }
//        //update member profile
//        else if (action != null && action.equals("updatebirdprofile")) {
//           
//            HttpSession ss = request.getSession(true);
//            String BID = request.getParameter("BID");
//            String UID = request.getParameter("UID");
//            String name = request.getParameter("userName");
//            String age = request.getParameter("age");
//            String gender = request.getParameter("gender");
//            String description = request.getParameter("description");
//            String imageURL = request.getParameter("imageURL");
//            String color = request.getParameter("color");
////            String addDate = request.getParameter("addDate");
//            BirdProfile birdprofile = new BirdProfile(BID, UID, name, age, gender, description, imageURL, color);
//
//            birdManager.update(birdprofile);
//            ss.setAttribute("birdprofile", birdprofile);
//            request.setAttribute("action", "add");
//            RequestDispatcher rd = request.getRequestDispatcher("/member_BirdDetail.jsp");
//            rd.forward(request, response);
//        }
//    }
//      
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        try {
//            processRequest(request, response);
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(BirdProfileEditController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        try {
//            processRequest(request, response);
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(BirdProfileEditController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
