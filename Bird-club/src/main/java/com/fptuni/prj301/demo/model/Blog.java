/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.model;

import java.math.BigDecimal;
import java.util.Date;

/**
 *
 * @author Administrator
 */
public class Blog {

    private String BID;
    private String UID;
    private String title;
    private String category;
    private String blogsContent;   
    private Date uploadDate;
    private String status;
    private String image;
    private BigDecimal vote;

    public Blog() {
    }

    public Blog(String BID, String UID, String title, String category, String blogsContent, Date uploadDate, String status, String image, BigDecimal vote) {
        this.BID = BID;
        this.UID = UID;
        this.title = title;
        this.category = category;
        this.blogsContent = blogsContent;
        this.uploadDate = uploadDate;
        this.status = status;
        this.image = image;
        this.vote = vote;
    }

    public String getBID() {
        return BID;
    }

    public void setBID(String BID) {
        this.BID = BID;
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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getBlogsContent() {
        return blogsContent;
    }

    public void setBlogsContent(String blogsContent) {
        this.blogsContent = blogsContent;
    }

    public Date getUploadDate() {
        return uploadDate;
    }

    public void setUploadDate(Date uploadDate) {
        this.uploadDate = uploadDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public BigDecimal getVote() {
        return vote;
    }

    public void setVote(BigDecimal vote) {
        this.vote = vote;
    }

  

}