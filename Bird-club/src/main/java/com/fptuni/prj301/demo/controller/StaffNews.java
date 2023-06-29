package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.NewsManager;
import com.fptuni.prj301.demo.dbmanager.UserAccessManager;
import com.fptuni.prj301.demo.model.News;
import com.fptuni.prj301.demo.model.UserSession;
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
import javax.servlet.http.HttpSession;
import tool.utils.Tools;

public class StaffNews extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        NewsManager nm = new NewsManager();
        Tools tool = new Tools();

        //View all news
        if (action == null || action.equals("viewnews")) {
            List<News> list = nm.getList();
            for (News n : list) {
                String shortDescription;
                try {
                    shortDescription = tool.getShortDescription(n.getNewsContent());
                } catch (Exception e) {
                    shortDescription = n.getNewsContent();
                }
                n.setNewsContent(shortDescription + "...");
            }
            int numOfNews = list.size();

            request.setAttribute("list", list);
            request.setAttribute("numOfNews", numOfNews);
            RequestDispatcher rd = request.getRequestDispatcher("staff_news.jsp");
            rd.forward(request, response);
        } //Upload a news
        else if (action.equals("upload")) {
            String NID = tool.generateID("News", "NID");
            String UID = "UID100";
            String title = request.getParameter("title");
            String category = request.getParameter("category");
            String newsContent;
            try {
                newsContent = tool.formatPara(request.getParameter("newsContent"));
            } catch (Exception e) {
                newsContent = "Content hasn't been uploaded yet";
            }
            String uploadDate = tool.getCurrentDate();

            String status = request.getParameter("status");
            byte[] image = new byte[0];
            News n = new News(NID, UID, title, category, newsContent, uploadDate, status, image);
            nm.insert(n);

            RequestDispatcher rd = request.getRequestDispatcher("StaffNews");
            rd.forward(request, response);
        } //Edit
        else if (action.equals("edit")) {
            String NID = request.getParameter("NID");
            News n = nm.load(NID);
            String plainContent = tool.getPlainText(n.getNewsContent());
            n.setNewsContent(plainContent);
            request.setAttribute("news", n);
            RequestDispatcher rd = request.getRequestDispatcher("staff_news_details.jsp");
            rd.forward(request, response);
        } else if (action.equals("update")) {
            String NID = request.getParameter("NID");
            String title = request.getParameter("title");
            String status = request.getParameter("status");
            String category = request.getParameter("category");
            String content;
            try {
                content = tool.formatPara(request.getParameter("content"));
            } catch (Exception e) {
                content = "Content is removed";
            }
            News n = new News(NID, title, status, category, content);
            nm.update(n);

            RequestDispatcher rd = request.getRequestDispatcher("StaffNews");
            rd.forward(request, response);
        } else if (action.equals("view")) {
            List<News> list = nm.getList();
            HttpSession ss = request.getSession(true);// Retrieve the news data
            if(list!=null){
            ss.setAttribute("news", list);  // Set the news list as a request attribute
            response.sendRedirect(request.getContextPath() + "/member_article.jsp"); } 

        }else if (action.equals("details")) {
            String nid = request.getParameter("NID");
            News n= nm.load(nid);
            HttpSession ss = request.getSession(true);// Retrieve the news data
            UserAccessManager u = new UserAccessManager();
             UserSession user = u.searchName(n.getUID());
            if(n!=null){
            ss.setAttribute("news", n);  // Set the news list as a request attribute
            ss.setAttribute("u", user);
            response.sendRedirect(request.getContextPath() + "/member_article_details.jsp"); } 

        }

    }

    public StaffNews() {
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
