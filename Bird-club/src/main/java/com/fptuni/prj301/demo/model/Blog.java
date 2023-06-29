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
    private BigDecimal vote;
    private byte[] picture;

    public Blog() {
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

    public byte[] getPicture() {
        return picture;
    }

    public void setPicture(byte[] picture) {
        this.picture = picture;
    }

    public BigDecimal getVote() {
        return vote;
    }

    public void setVote(BigDecimal vote) {
        this.vote = vote;
    }

  

}
