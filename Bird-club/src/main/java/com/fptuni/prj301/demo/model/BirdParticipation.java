
package com.fptuni.prj301.demo.model;

public class BirdParticipation {
    private String docNo;
    private String BID;
    private String birdName;
    private String UID;
    private String fullname;
    private String achievement;
    private int score;

    public BirdParticipation(String docNo, String BID, String birdName, String UID, String fullname, String achievement, int score) {
        this.docNo = docNo;
        this.BID = BID;
        this.birdName = birdName;
        this.UID = UID;
        this.fullname = fullname;
        this.achievement = achievement;
        this.score = score;
    }

    public BirdParticipation() {
    }

    public String getDocNo() {
        return docNo;
    }

    public void setDocNo(String docNo) {
        this.docNo = docNo;
    }

    public String getBID() {
        return BID;
    }

    public void setBID(String BID) {
        this.BID = BID;
    }

    public String getBirdName() {
        return birdName;
    }

    public void setBirdName(String birdName) {
        this.birdName = birdName;
    }

    public String getUID() {
        return UID;
    }

    public void setUID(String UID) {
        this.UID = UID;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAchievement() {
        return achievement;
    }

    public void setAchievement(String achievement) {
        this.achievement = achievement;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
    
    
}
