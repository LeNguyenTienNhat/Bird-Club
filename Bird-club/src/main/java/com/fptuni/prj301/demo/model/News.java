package com.fptuni.prj301.demo.model;

public class News {

    private String NID;
    private String UID;
    private String title;
    private String category;
    private String newsContent;
    private String uploadDate;
    private String status;
    private String image;

    public News(String NID, String UID, String title, String category, String newsContent, String uploadDate, String status, String image) {
        this.NID = NID;
        this.UID = UID;
        this.title = title;
        this.category = category;
        this.newsContent = newsContent;
        this.uploadDate = uploadDate;
        this.status = status;
        this.image = image;
    }

    public News() {
    }

    public News(String NID, String title, String status, String category, String newsContent) {
        this.NID = NID;
        this.title = title;
        this.category = category;
        this.newsContent = newsContent;
        this.status = status;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getNID() {
        return NID;
    }

    public void setNID(String NID) {
        this.NID = NID;
    }

    public String getUID() {
        return UID;
    }

    public void setUID(String UID) {
        this.UID = UID;
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getUploadDate() {
        return uploadDate;
    }

    public void setUploadDate(String uploadDate) {
        this.uploadDate = uploadDate;
    }

}
