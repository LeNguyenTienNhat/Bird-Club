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
    private String description;
    private String category;
    private Date uploadDate;
    private String UID;
    private BigDecimal vote;

    public Blog() {
    }

    public Blog(String BID, String description, String category, Date uploadDate, String UID, BigDecimal vote) {
        this.BID = BID;
        this.description = description;
        this.category = category;
        this.uploadDate = uploadDate;
        this.UID = UID;
        this.vote = vote;
    }

    public String getBID() {
        return BID;
    }

    public void setBID(String BID) {
        this.BID = BID;
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
    

}
