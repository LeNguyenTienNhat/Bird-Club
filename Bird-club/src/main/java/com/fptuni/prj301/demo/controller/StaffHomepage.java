package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.BlogManager;
import com.fptuni.prj301.demo.dbmanager.FieldtripManager;
import com.fptuni.prj301.demo.dbmanager.MeetingManager;
import com.fptuni.prj301.demo.dbmanager.MemberManager;
import com.fptuni.prj301.demo.dbmanager.TournamentManager;
import com.fptuni.prj301.demo.dbmanager.TparticipationManager;
import com.fptuni.prj301.demo.model.Blog;
import com.fptuni.prj301.demo.model.Fieldtrip;
import com.fptuni.prj301.demo.model.Meeting;
import com.fptuni.prj301.demo.model.Tournament;
import com.fptuni.prj301.demo.model.UserSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StaffHomepage extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String action = request.getParameter("action");

        if (action == null || action.equals("staffhome")) {
            //Data for members' sign-ups chart
            MemberManager mem = new MemberManager();
            List<Integer> list = mem.getTotalNumberAsYear(2023);
                        
            //Data for tournament chart
            TournamentManager tm = new TournamentManager();
            List<Tournament> topTournament = tm.getTop10Participation();
            
            //Data for field trip chart
            FieldtripManager fm = new FieldtripManager();
            List<Fieldtrip> topFieldtrip = fm.getTop10Participation();
            
            //Data for meeting chart
            MeetingManager mm = new MeetingManager();
            List<Meeting> topMeeting = mm.getTop10Participation();
            
            //Data for members' increase chart
            List<Integer> memberList = mem.getTotalNumberAsYear(2023);
            List<Integer> bList = new ArrayList();
            bList.add(memberList.get(0));
            for (int i=1; i<memberList.size(); i++) {
                bList.add(bList.get(i-1)+memberList.get(i));
            }
            //Data for top blog
            BlogManager bm = new BlogManager();
            List<Blog> blogList = bm.getTopBlog(1);
            
            //Send data
            request.setAttribute("list", list);
            request.setAttribute("bList", bList);
            request.setAttribute("topTournament", topTournament);
            request.setAttribute("topFieldtrip", topFieldtrip);
            request.setAttribute("topMeeting", topMeeting);     
            request.setAttribute("blogList", blogList);
            RequestDispatcher rd = request.getRequestDispatcher("staff_homepage.jsp");
            rd.forward(request, response);
        } 
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(StaffHomepage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(StaffHomepage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
