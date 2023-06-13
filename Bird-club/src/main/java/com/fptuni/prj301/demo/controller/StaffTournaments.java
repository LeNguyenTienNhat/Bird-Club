
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.MemberManager;
import com.fptuni.prj301.demo.dbmanager.TournamentManager;
import com.fptuni.prj301.demo.model.Member;
import com.fptuni.prj301.demo.model.Tournament;

//import com.oreilly.servlet.MultipartRequest;

import tool.utils.Tools;
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
import tool.utils.EmailSender;
import tool.utils.MessageContent;

public class StaffTournaments extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
               
        String action = request.getParameter("action");
        Tools tool = new Tools();
        TournamentManager tournamentManager = new TournamentManager();
                
        //View all tournaments
         if (action == null || action.equals("viewtournaments")) {
                //display tournament
                List<Tournament> tournamentsList = tournamentManager.getRecords(0, 0, null, "startDate");
                request.setAttribute("tournamentsList", tournamentsList);
                
                RequestDispatcher rd = request.getRequestDispatcher("staff_tournaments.jsp");
                rd.forward(request, response);
            }
        
        //Add a tournament      
            else if (action.equals("addtournament")) {
                String TID = tool.generateID("Tournament", "TID");
                String name = request.getParameter("name");
                String description = request.getParameter("description");
                String registrationDeadline  = tool.convertDateFormat(request.getParameter("registrationDeadline"));
                String startDate  = tool.convertDateFormat(request.getParameter("startDate"));
                String endDate  = tool.convertDateFormat(request.getParameter("endDate"));
                String LID = request.getParameter("LID");
                String status = "pending";
                int fee = Integer.parseInt(request.getParameter("fee"));
                int numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
                int totalPrize = Integer.parseInt(request.getParameter("totalPrize"));
                String note = request.getParameter("note");
                String incharge = request.getParameter("incharge");
                String host = request.getParameter("host");
                String contact = request.getParameter("contact");
                Tournament tournament = new Tournament(TID, name, description, registrationDeadline, 
                         startDate, endDate, LID, status, fee, numberOfParticipant, totalPrize, note, incharge, host, contact);
                tournamentManager.insert(tournament);
                
                request.setAttribute("action","viewtournaments");
                RequestDispatcher rd = request.getRequestDispatcher("StaffTournaments");
                rd.forward(request, response);
            }
         
         //Update a field trip's details
         else if (action.equals("updatetournament")) {
                String TID = request.getParameter("TID");
                String name = request.getParameter("name");
                String description = request.getParameter("description");
                
                String registrationDeadline  = tool.convertDateFormat(request.getParameter("registrationDeadline"));
                String startDate  = tool.convertDateFormat(request.getParameter("startDate"));
                String endDate  = tool.convertDateFormat(request.getParameter("endDate"));
                
                String LID = request.getParameter("LID");
                String status = request.getParameter("status").trim();
                int fee = Integer.parseInt(request.getParameter("fee"));
                int numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
                int totalPrize = Integer.parseInt(request.getParameter("totalPrize"));
                String note = request.getParameter("note");
                String incharge = request.getParameter("incharge");
                String host = request.getParameter("host");
                String contact = request.getParameter("contact");
                Tournament tournament = new Tournament(TID, name, description, registrationDeadline, 
                         startDate, endDate, LID, status, fee, numberOfParticipant, totalPrize, note, incharge, host, contact);
                
                tournamentManager.update(tournament);
                request.setAttribute("action","viewtournaments");
                RequestDispatcher rd = request.getRequestDispatcher("StaffTournaments");
                rd.forward(request, response);
            }
                  
         //Terminate a field trip
         else if (action.equals("terminatetournament")) {
            String TID = request.getParameter("TID");
            tournamentManager.terminate(TID);

            request.setAttribute("action","viewtournaments");
            RequestDispatcher rd = request.getRequestDispatcher("StaffTournaments");
            rd.forward(request, response);
            }
         
         //Close registration form of a field trip
         else if (action.equals("closeform")) {
            String TID = request.getParameter("TID");
            tournamentManager.closeForm(TID);

            request.setAttribute("action","viewtournaments");
            RequestDispatcher rd = request.getRequestDispatcher("StaffTournaments");
            rd.forward(request, response);
            }
         
         //View a tournament's details
            else if (action.equals("edittournament")) {
                String TID = request.getParameter("TID");
                Tournament tournament = tournamentManager.load(TID);
                
                request.setAttribute("tournament", tournament);
                RequestDispatcher rd = request.getRequestDispatcher("staff_tournament_details.jsp");
                rd.forward(request, response);
            }

        
         //View a tournament's media
            else if (action.equals("viewtournamentmedia")) {
                String TID = request.getParameter("TID");
                Tournament t = tournamentManager.load(TID);
                
                request.setAttribute("tournament", t);
                RequestDispatcher rd = request.getRequestDispatcher("staff_tournament_media.jsp");
                rd.forward(request, response);
            }
        
        else if (action.equals("notifymember")) {
                MemberManager m = new MemberManager();
                List<Member> list = m.getRecords(0, 0, "member", "MID");
                EmailSender e = new EmailSender();
                MessageContent c = new MessageContent();
                String content = c.HTMLContentGenerator();
                for (Member member : list) {
                    if (!member.getEmail().isEmpty()) e.sendEmail(member.getEmail(), content);
                }
                request.setAttribute("action","viewtournaments");
                RequestDispatcher rd = request.getRequestDispatcher("StaffTournaments");
                rd.forward(request, response);
            }
        
        


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | ParseException ex) {
            Logger.getLogger(StaffTournaments.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | ParseException ex) {
            Logger.getLogger(StaffTournaments.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}