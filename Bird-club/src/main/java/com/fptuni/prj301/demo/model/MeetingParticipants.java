/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.model;

/**
 *
 * @author Legion
 */
public class MeetingParticipants {
    private String MeID;
    private String UID;
    private String docNo;

    public MeetingParticipants(String MeID, String UID, String docNo) {
        this.MeID = MeID;
        this.UID = UID;
        this.docNo = docNo;
    }
    
    public MeetingParticipants() {
    }

    public String getMeID() {
        return MeID;
    }

    public void setMeID(String MeID) {
        this.MeID = MeID;
    }

    public String getUID() {
        return UID;
    }

    public void setUID(String UID) {
        this.UID = UID;
    }

    public String getDocNo() {
        return docNo;
    }

    public void setDocNo(String docNo) {
        this.docNo = docNo;
    }

}
