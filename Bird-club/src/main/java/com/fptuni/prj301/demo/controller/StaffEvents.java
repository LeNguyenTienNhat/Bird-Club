
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.FieldtripManager;
import com.fptuni.prj301.demo.dbmanager.MeetingManager;
import com.fptuni.prj301.demo.model.Fieldtrip;
import com.fptuni.prj301.demo.model.Meeting;
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

public class StaffEvents extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        Tools tool = new Tools();
        FieldtripManager eventsManager = new FieldtripManager();
        MeetingManager meetingManager = new MeetingManager();
                
        //View all events
         if (action == null || action.equals("viewevents")) {
                //display fieldtrips
                List<Fieldtrip> eventsList = eventsManager.getRecords(0, 0, null, "startDate");
                request.setAttribute("eventsList", eventsList);
                //display meetings
                List<Meeting> meetingsList = meetingManager.getRecords(0, 0, null, "startDate");
                request.setAttribute("meetingsList", meetingsList);
                
                RequestDispatcher rd = request.getRequestDispatcher("staff_events.jsp");
                rd.forward(request, response);
            }
        
        //Add a field trip            
            else if (action.equals("addfieldtrip")) {
                String FID = tool.generateID("FieldTrip", "FID");
                String name = request.getParameter("name");
                String description = request.getParameter("description");
                
                String registrationDeadline  = tool.convertDateFormat(request.getParameter("registrationDeadline"));
                String startDate  = tool.convertDateFormat(request.getParameter("startDate"));
                String endDate  = tool.convertDateFormat(request.getParameter("endDate"));
                
                String LID = request.getParameter("LID");
                String status = "pending";
                int fee = Integer.parseInt(request.getParameter("fee"));
                int numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
                Fieldtrip fieldtrip = new Fieldtrip(FID, name, description, registrationDeadline, 
                         startDate, endDate, LID, status, fee, numberOfParticipant);
                eventsManager.insert(fieldtrip);
                
                request.setAttribute("action","viewevents");
                RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
                rd.forward(request, response);
            }
         
         //Update a field trip's details
         else if (action.equals("updatefieldtrip")) {
                String FID = request.getParameter("FID");
                String name = request.getParameter("name");
                String description = request.getParameter("description");
                
                String registrationDeadline  = tool.convertDateFormat(request.getParameter("registrationDeadline"));
                String startDate  = tool.convertDateFormat(request.getParameter("startDate"));
                String endDate  = tool.convertDateFormat(request.getParameter("endDate"));
                
                String LID = request.getParameter("LID");
                String status = request.getParameter("status").trim();
                int fee = Integer.parseInt(request.getParameter("fee"));
                int numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
                Fieldtrip fieldtrip = new Fieldtrip(FID, name, description, registrationDeadline, 
                         startDate, endDate, LID, status, fee, numberOfParticipant);
                eventsManager.update(fieldtrip);
                
                request.setAttribute("action","viewevents");
                RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
                rd.forward(request, response);
            }
                  
         //Terminate a field trip
         else if (action.equals("terminatefieldtrip")) {
            String FID = request.getParameter("FID");
            eventsManager.terminate(FID);

            request.setAttribute("action","viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
            }
         
         //Close registration form of a field trip
         else if (action.equals("closeform")) {
            String FID = request.getParameter("FID");
            eventsManager.closeForm(FID);

            request.setAttribute("action","viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
            }
         
         //View a field trip's details
            else if (action.equals("editfieldtrip")) {
                String FID = request.getParameter("FID");
                Fieldtrip fieldtrip = eventsManager.load(FID);
                fieldtrip.setCategory("Field trip");
                
                request.setAttribute("fieldtrip", fieldtrip);
                RequestDispatcher rd = request.getRequestDispatcher("staff_fieldtrip_details.jsp");
                rd.forward(request, response);
            }

            //Add a meeting            
            else if (action.equals("addmeeting")) {
                String FID = tool.generateID("Meeting", "MeID");
                String name = request.getParameter("name");
                String description = request.getParameter("description");
                
                String registrationDeadline  = tool.convertDateFormat(request.getParameter("registrationDeadline"));
                String startDate  = tool.convertDateFormat(request.getParameter("startDate"));
                String endDate  = tool.convertDateFormat(request.getParameter("endDate"));
                
                String LID = request.getParameter("LID");
                String status = "pending";
                int numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
                Meeting meeting = new Meeting(FID, name, description, registrationDeadline, 
                         startDate, endDate, LID, status, numberOfParticipant);
                meetingManager.insert(meeting);
                
                request.setAttribute("action","viewevents");
                RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
                rd.forward(request, response);
            }
         
         //Update a meeting's details
         else if (action.equals("updatemeeting")) {
                String FID = request.getParameter("MeID");
                String name = request.getParameter("name");
                String description = request.getParameter("description");
                
                String registrationDeadline  = tool.convertDateFormat(request.getParameter("registrationDeadline"));
                String startDate  = tool.convertDateFormat(request.getParameter("startDate"));
                String endDate  = tool.convertDateFormat(request.getParameter("endDate"));
                
                String LID = request.getParameter("LID");
                String status = request.getParameter("status").trim();
                int numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
                Meeting meeting = new Meeting(FID, name, description, registrationDeadline, 
                         startDate, endDate, LID, status, numberOfParticipant);
                meetingManager.update(meeting);
                
                request.setAttribute("action","viewevents");
                RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
                rd.forward(request, response);
            }
         
         //Terminate a meeting
         else if (action.equals("terminatemeeting")) {
            String MeID = request.getParameter("MeID");
            eventsManager.terminate(MeID);

            request.setAttribute("action","viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
            }
         
         //Close registration form of a meeting
         else if (action.equals("closeformmeeting")) {
            String MeID = request.getParameter("MeID");
            meetingManager.closeForm(MeID);

            request.setAttribute("action","viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
            }
         
         //View a meeting's details
            else if (action.equals("editmeeting")) {
                String MeID = request.getParameter("MeID");
                Meeting meeting = meetingManager.load(MeID);
                meeting.setCategory("Meeting");
                
                request.setAttribute("meeting", meeting);
                RequestDispatcher rd = request.getRequestDispatcher("staff_meeting_details.jsp");
                rd.forward(request, response);
            }
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | ParseException ex) {
            Logger.getLogger(StaffEvents.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | ParseException ex) {
            Logger.getLogger(StaffEvents.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


}
