package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.FieldtripManager;
import com.fptuni.prj301.demo.dbmanager.EventsMediaManager;
import com.fptuni.prj301.demo.dbmanager.FieldTripParticipantsManager;
import com.fptuni.prj301.demo.dbmanager.LocationManager;
import com.fptuni.prj301.demo.dbmanager.MeetingManager;
import com.fptuni.prj301.demo.dbmanager.MeetingParticipantsManager;
import com.fptuni.prj301.demo.dbmanager.MemberManager;
import com.fptuni.prj301.demo.model.FieldTripParticipants;
import com.fptuni.prj301.demo.model.Fieldtrip;
import com.fptuni.prj301.demo.model.Location;
import com.fptuni.prj301.demo.model.Media;
import com.fptuni.prj301.demo.model.Meeting;
import com.fptuni.prj301.demo.model.MeetingParticipants;
import com.fptuni.prj301.demo.model.Member;
import com.fptuni.prj301.demo.model.UserSession;
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
import javax.servlet.http.HttpSession;

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
            int page, skip;
            String status = request.getParameter("status");
            if (status == null) {
                status = "pending";
            }
            try {
                page = Integer.parseInt(request.getParameter("page"));
                skip = (page - 1) * 10;
            } catch (NumberFormatException e) {
                skip = 0;
                page = 1;
            }
            String category = request.getParameter("category");

            List<Fieldtrip> fList = new ArrayList();
            List<Meeting> mList = new ArrayList();
            int a;
            if (category == null || category.equalsIgnoreCase("Field trip")) {
                //display fieldtrips
                fList = fm.getRecords(skip, 5, status, "startDate");
                for (Fieldtrip fp : fList) {
                    if (fp.getDescription().length() > 201) {
                        fp.setDescription(fp.getDescription().substring(0, 200) + "...");
                    }
                }
                a = fm.getTotalNumber();
                category = "Field trip";
            } else {
                //display meetings
                mList = mm.getRecords(skip, 5, status, "startDate");
                for (Meeting mg : mList) {
                    if (mg.getDescription().length() > 201) {
                        mg.setDescription(mg.getDescription().substring(0, 200) + "...");
                    }
                }
                a = mm.getTotalNumber();
            }
            LocationManager lm = new LocationManager();
            List<Location> locationsList = lm.getList();
            request.setAttribute("locationsList", locationsList);

            int b = fm.getNumberAsStatus("ongoing");
            int c = mm.getNumberAsStatus("ongoing");
            int d = fm.getNumberAsStatus("pending") + mm.getNumberAsStatus("pending");
            int e = fm.getNumberAsStatus("formClosed") + mm.getNumberAsStatus("formClosed");
            int g = fm.getNumberAsStatus("finished") + mm.getNumberAsStatus("finished");

            request.setAttribute("a", a);
            request.setAttribute("fList", fList);
            request.setAttribute("mList", mList);
            request.setAttribute("total", fm.getTotalNumber() + mm.getTotalNumber());
            request.setAttribute("ongoingFieldTrips", b);
            request.setAttribute("ongoingMeetings", c);
            request.setAttribute("pending", d);
            request.setAttribute("approaching", e);
            request.setAttribute("ended", g);
            request.setAttribute("page", page);
            request.setAttribute("category", category);
            request.setAttribute("status", status);

            RequestDispatcher rd = request.getRequestDispatcher("staff_events.jsp");
            rd.forward(request, response);
        } //Add a field trip            
        else if (action.equals("addfieldtrip")) {
            String FID = tool.generateID("FieldTrip", "FID");
            String name, description, LID, status = "pending", note, incharge, host, contact, registrationDeadline, startDate, endDate;
            int fee, numberOfParticipant;

            name = request.getParameter("name");
            description = request.getParameter("description");
            LID = request.getParameter("LID");
            if (name.isEmpty()) {
                name = "Unassigned name";
            }
            if (description.isEmpty()) {
                description = "Currently there is no description";
            }
            if (LID.isEmpty()) {
                LID = "LID1";
            }
            incharge = "Currently no one is assigned";
            note = "Not available";
            host = "Currently no one is assigned";
            contact = "Contact address currently is not available";
            try {
                registrationDeadline = tool.convertDateFormat(request.getParameter("registrationDeadline"));
            } catch (Exception e) {
                registrationDeadline = tool.getCurrentDate();
            }
            try {
                startDate = tool.convertDateFormat(request.getParameter("startDate"));
            } catch (Exception e) {
                startDate = tool.getCurrentDate();
            }
            try {
                endDate = tool.convertDateFormat(request.getParameter("endDate"));
            } catch (Exception e) {
                endDate = tool.getCurrentDate();
            }
            try {
                fee = Integer.parseInt(request.getParameter("fee"));
            } catch (NumberFormatException e) {
                fee = 0;
            }
            try {
                numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
            } catch (NumberFormatException e) {
                numberOfParticipant = 0;
            }

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
            fm.updateStatus(FID, "finished");

            request.setAttribute("action", "viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //Close registration form of a field trip
        else if (action.equals("closeformfieldtrip")) {
            String FID = request.getParameter("FID");
            fm.updateStatus(FID, "formClosed");

            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //Start a field trip
        else if (action.equals("startfieldtrip")) {
            String FID = request.getParameter("FID");
            fm.updateStatus(FID, "ongoing");

            request.setAttribute("action", "viewtournaments");
            RequestDispatcher rd = request.getRequestDispatcher("StaffTournaments");
            rd.forward(request, response);
        } //View a field trip's details
        else if (action.equals("editfieldtrip")) {
            String FID = request.getParameter("FID");
            Fieldtrip fieldtrip = fm.load(FID);
            fieldtrip.setCategory("Field trip");

            LocationManager lm = new LocationManager();
            Location l = lm.load(fieldtrip.getLID());
            List<Location> locationsList = lm.getList();

            request.setAttribute("location", l);
            request.setAttribute("locationsList", locationsList);
            request.setAttribute("fieldtrip", fieldtrip);
            RequestDispatcher rd = request.getRequestDispatcher("staff_fieldtrip_details.jsp");
            rd.forward(request, response);
        } //Add a meeting            
        else if (action.equals("addmeeting")) {
            String MeID = tool.generateID("Meeting", "MeID");
            String name, description, LID, status = "pending", note, incharge, host, contact, registrationDeadline, startDate, endDate;
            int numberOfParticipant;

            name = request.getParameter("name");
            description = request.getParameter("description");
            LID = request.getParameter("LID");
            if (name.isEmpty()) {
                name = "Unassigned name";
            }
            if (description.isEmpty()) {
                description = "Currently there is no description";
            }
            if (LID.isEmpty()) {
                LID = "LID1";
            }
            incharge = "Currently no one is assigned";
            note = "Not available";
            host = "Currently no one is assigned";
            contact = "Contact address currently is not available";
            try {
                registrationDeadline = tool.convertDateFormat(request.getParameter("registrationDeadline"));
            } catch (Exception e) {
                registrationDeadline = tool.getCurrentDate();
            }
            try {
                startDate = tool.convertDateFormat(request.getParameter("startDate"));
            } catch (Exception e) {
                startDate = tool.getCurrentDate();
            }
            try {
                endDate = tool.convertDateFormat(request.getParameter("endDate"));
            } catch (Exception e) {
                endDate = tool.getCurrentDate();
            }
            try {
                numberOfParticipant = Integer.parseInt(request.getParameter("numberOfParticipant"));
            } catch (NumberFormatException e) {
                numberOfParticipant = 0;
            }

            Meeting meeting = new Meeting(MeID, name, description, registrationDeadline,
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
            mm.updateStatus(MeID, "finished");

            request.setAttribute("action", "viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //Close registration form of a meeting
        else if (action.equals("closeformmeeting")) {
            String MeID = request.getParameter("MeID");
            mm.updateStatus(MeID, "formClosed");

            request.setAttribute("action", "viewevents");
            RequestDispatcher rd = request.getRequestDispatcher("StaffEvents");
            rd.forward(request, response);
        } //View a meeting's details
        else if (action.equals("editmeeting")) {
            String MeID = request.getParameter("MeID");
            Meeting meeting = mm.load(MeID);

            meeting.setCategory("Meeting");
            LocationManager lm = new LocationManager();
            Location l = lm.load(meeting.getLID());
            List<Location> locationsList = lm.getList();

            request.setAttribute("location", l);
            request.setAttribute("locationsList", locationsList);
            request.setAttribute("meeting", meeting);
            RequestDispatcher rd = request.getRequestDispatcher("staff_meeting_details.jsp");
            rd.forward(request, response);
        } //Start a field trip
        else if (action.equals("startmeeing")) {
            String MeID = request.getParameter("MeID");
            mm.updateStatus(MeID, "ongoing");

            request.setAttribute("action", "viewtournaments");
            RequestDispatcher rd = request.getRequestDispatcher("StaffTournaments");
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
