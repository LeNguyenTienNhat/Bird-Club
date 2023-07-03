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

    private String BLID;
    private String description;
    private String category;  
    private Date uploadDate;
    private String UID;
    private BigDecimal vote;
    private byte[] picture;
    private String status;

    public Blog() {
    }

    public Blog(String BLID, String description, String category, Date uploadDate, String UID, BigDecimal vote, byte[] picture, String status) {
        this.BLID = BLID;
        this.description = description;
        this.category = category;
        this.uploadDate = uploadDate;
        this.UID = UID;
        this.vote = vote;
        this.picture = picture;
        this.status = status;
    }

    public String getBLID() {
        return BLID;
    }

    public void setBLID(String BLID) {
        this.BLID = BLID;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Date getUploadDate() {
        return uploadDate;
    }

    public void setUploadDate(Date uploadDate) {
        this.uploadDate = uploadDate;
    }

    public String getUID() {
        return UID;
    }

    public void setUID(String UID) {
        this.UID = UID;
    }

    public BigDecimal getVote() {
        return vote;
    }

    public void setVote(BigDecimal vote) {
        this.vote = vote;
    }

    public byte[] getPicture() {
        return picture;
    }

    public void setPicture(byte[] picture) {
        this.picture = picture;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
    
}
