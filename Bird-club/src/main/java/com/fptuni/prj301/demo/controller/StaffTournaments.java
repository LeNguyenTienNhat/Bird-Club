
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.TournamentManager;
import com.fptuni.prj301.demo.model.Tournament;
import com.fptuni.prj301.demo.utils.Tools;
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
                Tournament tournament = new Tournament(TID, name, description, registrationDeadline, 
                         startDate, endDate, LID, status, fee, numberOfParticipant, totalPrize);
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
                Tournament tournament = new Tournament(TID, name, description, registrationDeadline, 
                         startDate, endDate, LID, status, fee, numberOfParticipant, totalPrize);
                
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
         
         //View a field trip's details
            else if (action.equals("edittournament")) {
                String TID = request.getParameter("TID");
                Tournament tournament = tournamentManager.load(TID);
                tournament.setCategory("Tournament");
                
                request.setAttribute("tournament", tournament);
                RequestDispatcher rd = request.getRequestDispatcher("staff_tournament_details.jsp");
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