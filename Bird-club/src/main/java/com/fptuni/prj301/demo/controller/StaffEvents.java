
package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.FieldtripManager;
import com.fptuni.prj301.demo.model.Fieldtrip;
import com.fptuni.prj301.demo.model.Media;
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
        FieldtripManager manager = new FieldtripManager();
        
        //View all events
         if (action == null || action.equals("viewevents")) {
                //display fieldtrips
                List<Fieldtrip> eventsList = manager.getRecords(0, 0, null, "startDate");
                request.setAttribute("eventsList", eventsList);
                
                RequestDispatcher rd = request.getRequestDispatcher("staff_events.jsp");
                rd.forward(request, response);
            }
        
        //Add a fieldtrip            
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
                manager.insert(fieldtrip);
                
                request.setAttribute("action","viewevents");
                RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
                rd.forward(request, response);
            }
         
         //Update a fieldtrip's details
         else if (action.equals("updatefieldtrip")) {
                String FID = request.getParameter("FID");
                String name = request.getParameter("name");
                String description = request.getParameter("description");
                
                String registrationDeadline  = tool.convertDateFormat(request.getParameter("registrationDeadline"));
                String startDate  = tool.convertDateFormat(request.getParameter("startDate"));
                String endDate  = tool.convertDateFormat(request.getParameter("endDate"));
                
                String LID = request.getParameter("LID");
                String status = request.getParameter("status");
                int fee = Integer.parseInt(request.getParameter("fee"));
                int numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
                Fieldtrip fieldtrip = new Fieldtrip(FID, name, description, registrationDeadline, 
                         startDate, endDate, LID, status, fee, numberOfParticipant);
                manager.update(fieldtrip);
                
                request.setAttribute("action","viewevents");
                RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
                rd.forward(request, response);
            }
         
         //Add more images to the fieldtrip
         else if (action.equals("addfieldtripmedia")) {
             Media image = new Media();
             image.setFID(request.getParameter("FID"));
             image.setURL(request.getParameter("URL"));
             //manager.insert(image);
         }
         
         //Terminate a fieldtrip
         else if (action.equals("terminatefieldtrip")) {
            String FID = request.getParameter("FID");
            manager.terminate(FID);

            request.setAttribute("action","viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
            }
         
         //Close registration form of a fieldtrip
         else if (action.equals("closeform")) {
            String FID = request.getParameter("FID");
            manager.closeForm(FID);

            request.setAttribute("action","viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
            }
         
         //View a fieldtrip's details
            else if (action.equals("editfieldtrip")) {
                String FID = request.getParameter("FID");
                Fieldtrip fieldtrip = manager.load(FID);
                fieldtrip.setCategory("Field trip");
                
                request.setAttribute("fieldtrip", fieldtrip);
                RequestDispatcher rd = request.getRequestDispatcher("staff_fieldtrip_details.jsp");
                rd.forward(request, response);
            }
         
         
         else if (action.equals("test")) {
             response.sendRedirect("test.html");
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
