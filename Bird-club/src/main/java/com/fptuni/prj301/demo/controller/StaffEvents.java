package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.FieldtripManager;
import com.fptuni.prj301.demo.dbmanager.EventsMediaManager;
import com.fptuni.prj301.demo.dbmanager.FieldTripParticipantsManager;
import com.fptuni.prj301.demo.dbmanager.MeetingManager;
import com.fptuni.prj301.demo.dbmanager.MeetingParticipantsManager;
import com.fptuni.prj301.demo.dbmanager.MemberManager;
import com.fptuni.prj301.demo.model.FieldTripParticipants;
import com.fptuni.prj301.demo.model.Fieldtrip;
import com.fptuni.prj301.demo.model.Media;
import com.fptuni.prj301.demo.model.Meeting;
import com.fptuni.prj301.demo.model.MeetingParticipants;
import com.fptuni.prj301.demo.model.Member;
import tool.utils.Tools;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
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
        FieldtripManager fm = new FieldtripManager();
        MeetingManager mm = new MeetingManager();

        //View all events
        if (action == null || action.equals("viewevents")) {
            //display fieldtrips
            List<Fieldtrip> fList = fm.getRecords(0, 0, null, "startDate");
            request.setAttribute("fList", fList);
            //display meetings
            List<Meeting> mList = mm.getRecords(0, 0, null, "startDate");
            request.setAttribute("mList", mList);

            RequestDispatcher rd = request.getRequestDispatcher("staff_events.jsp");
            rd.forward(request, response);
        } //Add a field trip            
        else if (action.equals("addfieldtrip")) {
            String FID = tool.generateID("FieldTrip", "FID");
            String name = request.getParameter("name");
            String description = request.getParameter("description");

            String registrationDeadline = tool.convertDateFormat(request.getParameter("registrationDeadline"));
            String startDate = tool.convertDateFormat(request.getParameter("startDate"));
            String endDate = tool.convertDateFormat(request.getParameter("endDate"));

            String LID = request.getParameter("LID");
            String status = "pending";
            int fee = Integer.parseInt(request.getParameter("fee"));
            int numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
            String note = request.getParameter("note");
            String incharge = request.getParameter("incharge");
            String host = request.getParameter("host");
            String contact = request.getParameter("contact");
            Fieldtrip fieldtrip = new Fieldtrip(FID, name, description, registrationDeadline,
                    startDate, endDate, LID, status, fee, numberOfParticipant, note, incharge, host, contact);
            fm.insert(fieldtrip);

            request.setAttribute("action", "viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //Update a field trip's details
        else if (action.equals("updatefieldtrip")) {
            String FID = request.getParameter("FID");
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            String registrationDeadline = tool.convertDateFormat(request.getParameter("registrationDeadline"));
            String startDate = tool.convertDateFormat(request.getParameter("startDate"));
            String endDate = tool.convertDateFormat(request.getParameter("endDate"));
            String LID = request.getParameter("LID");
            String status = request.getParameter("status").trim();
            int fee = Integer.parseInt(request.getParameter("fee"));
            int numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
            String note = request.getParameter("note");
            String incharge = request.getParameter("incharge");
            String host = request.getParameter("host");
            String contact = request.getParameter("contact");
            Fieldtrip fieldtrip = new Fieldtrip(FID, name, description, registrationDeadline,
                    startDate, endDate, LID, status, fee, numberOfParticipant, note, incharge, host, contact);
            fm.update(fieldtrip);

            request.setAttribute("action", "viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //Terminate a field trip
        else if (action.equals("terminatefieldtrip")) {
            String FID = request.getParameter("FID");
            fm.terminate(FID);

            request.setAttribute("action", "viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //Close registration form of a field trip
        else if (action.equals("closeformfieldtrip")) {
            String FID = request.getParameter("FID");
            fm.closeForm(FID);

            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //View a field trip's details
        else if (action.equals("editfieldtrip")) {
            String FID = request.getParameter("FID");
            Fieldtrip fieldtrip = fm.load(FID);
            fieldtrip.setCategory("Field trip");

            request.setAttribute("fieldtrip", fieldtrip);
            RequestDispatcher rd = request.getRequestDispatcher("staff_fieldtrip_details.jsp");
            rd.forward(request, response);
        } //Add a meeting            
        else if (action.equals("addmeeting")) {
            String FID = tool.generateID("Meeting", "MeID");
            String name = request.getParameter("name");
            String description = request.getParameter("description");

            String registrationDeadline = tool.convertDateFormat(request.getParameter("registrationDeadline"));
            String startDate = tool.convertDateFormat(request.getParameter("startDate"));
            String endDate = tool.convertDateFormat(request.getParameter("endDate"));

            String LID = request.getParameter("LID");
            String status = "pending";
            String note = request.getParameter("note");
            String incharge = request.getParameter("incharge");
            String host = request.getParameter("host");
            String contact = request.getParameter("contact");
            int numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
            Meeting meeting = new Meeting(FID, name, description, registrationDeadline,
                    startDate, endDate, LID, status, numberOfParticipant, note, incharge, host, contact);
            mm.insert(meeting);

            request.setAttribute("action", "viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //Update a meeting's details
        else if (action.equals("updatemeeting")) {
            String FID = request.getParameter("MeID");
            String name = request.getParameter("name");
            String description = request.getParameter("description");

            String registrationDeadline = tool.convertDateFormat(request.getParameter("registrationDeadline"));
            String startDate = tool.convertDateFormat(request.getParameter("startDate"));
            String endDate = tool.convertDateFormat(request.getParameter("endDate"));

            String LID = request.getParameter("LID");
            String status = request.getParameter("status").trim();
            int numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
            String note = request.getParameter("note");
            String incharge = request.getParameter("incharge");
            String host = request.getParameter("host");
            String contact = request.getParameter("contact");
            Meeting meeting = new Meeting(FID, name, description, registrationDeadline,
                    startDate, endDate, LID, status, numberOfParticipant, note, incharge, host, contact);
            mm.update(meeting);

            request.setAttribute("action", "viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //Terminate a meeting
        else if (action.equals("terminatemeeting")) {
            String MeID = request.getParameter("MeID");
            mm.terminate(MeID);

            request.setAttribute("action", "viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //Close registration form of a meeting
        else if (action.equals("closeformmeeting")) {
            String MeID = request.getParameter("MeID");
            mm.closeForm(MeID);

            request.setAttribute("action", "viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //View a meeting's details
        else if (action.equals("editmeeting")) {
            String MeID = request.getParameter("MeID");
            Meeting meeting = mm.load(MeID);
            meeting.setCategory("Meeting");

            request.setAttribute("meeting", meeting);
            RequestDispatcher rd = request.getRequestDispatcher("staff_meeting_details.jsp");
            rd.forward(request, response);
        } //View a field trip's media
        else if (action.equals("viewfieldtripmedia")) {
            String FID = request.getParameter("FID");
            Fieldtrip f = fm.load(FID);
            EventsMediaManager m = new EventsMediaManager();
            List<Media> list = m.getList("FieldTripMedia", FID);

            request.setAttribute("fieldtrip", f);
            request.setAttribute("tableName", "FieldTripMedia");
            request.setAttribute("list", list);
            RequestDispatcher rd = request.getRequestDispatcher("staff_events_media.jsp");
            rd.forward(request, response);
        } //View a meeting's media
        else if (action.equals("viewmeetingmedia")) {
            String MeID = request.getParameter("MeID");
            Meeting me = mm.load(MeID);
            EventsMediaManager m = new EventsMediaManager();
            List<Media> list = m.getList("MeetingMedia", MeID);

            request.setAttribute("meeting", me);
            request.setAttribute("tableName", "MeetingMedia");
            request.setAttribute("list", list);
            RequestDispatcher rd = request.getRequestDispatcher("staff_events_media.jsp");
            rd.forward(request, response);
        } //View participants
        else if (action.equals("viewparticipants")) {
            String ID = request.getParameter("ID");
            List<Member> ml = new ArrayList();
            MemberManager mem = new MemberManager();

            if (ID.contains("FID")) {
                FieldTripParticipantsManager fpm = new FieldTripParticipantsManager();
                List<FieldTripParticipants> list = fpm.getParticipantList(ID);
                for (FieldTripParticipants f : list) {
                    Member m = mem.load(f.getUid());
                    ml.add(m);
                }
            } else {
                MeetingParticipantsManager mpm = new MeetingParticipantsManager();
                List<MeetingParticipants> list = mpm.getParticipantList(ID);
                for (MeetingParticipants mp : list) {
                    Member m = mem.load(mp.getUID());
                    ml.add(m);
                }
            }
            request.setAttribute("list", ml);
            RequestDispatcher rd = request.getRequestDispatcher("staff_event_participants.jsp");
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
