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
public class Comment {
    private String CID;         // nchar(10)
    private String BLID;        // nchar(10)
    private BigDecimal vote;    // decimal(18, 0)
    private String description; // nvarchar(MAX)
    private Date date;          // datetime
    private String UID;         // nchar(10)

    public Comment(String CID, String BLID, BigDecimal vote, String description, Date date, String UID) {
        this.CID = CID;
        this.BLID = BLID;
        this.vote = vote;
        this.description = description;
        this.date = date;
        this.UID = UID;
    }

    public Comment() {
    }

    // Other properties, constructor, and getter/setter methods

    // Example getter/setter methods for the properties
    public String getCID() {
        return CID;
    }

    public void setCID(String CID) {
        this.CID = CID;
    }

    public String getBLID() {
        return BLID;
    }

    public void setBLID(String BLID) {
        this.BLID = BLID;
    }

    public BigDecimal getVote() {
        return vote;
    }

    public void setVote(BigDecimal vote) {
        this.vote = vote;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getUID() {
        return UID;
    }

    public void setUID(String UID) {
        this.UID = UID;
    }
}
