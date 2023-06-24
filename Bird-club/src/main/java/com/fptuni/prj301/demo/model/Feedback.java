
package com.fptuni.prj301.demo.model;

public class Feedback {
    private String FeID;
    private String UID;
    private String title;
    private String detail;
    private String date;
    private String category;
    private String status;

    public Feedback() {
    }

    public Feedback(String FeID, String UID, String title, String detail, String date, String category, String status) {
        this.FeID = FeID;
        this.UID = UID;
        this.title = title;
        this.detail = detail;
        this.date = date;
        this.category = category;
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    
    
    public String getFeID() {
        return FeID;
    }

    public void setFeID(String FeID) {
        this.FeID = FeID;
    }

    public String getUID() {
        return UID;
    }

    public void setUID(String UID) {
        this.UID = UID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    
}
