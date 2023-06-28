/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.model;

import java.math.BigDecimal;

/**
 *
 * @author Administrator
 */
public class Tparticipation {

    private String TID;
    private String BID;
    private String docNo;
    private String achievement;
    private BigDecimal score;

    public Tparticipation() {
    }

    public String getTID() {
        return TID;
    }

    public void setTID(String TID) {
        this.TID = TID;
    }

    public String getBID() {
        return BID;
    }

    public void setBID(String BID) {
        this.BID = BID;
    }

    public String getDocNo() {
        return docNo;
    }

    public void setDocNo(String docNo) {
        this.docNo = docNo;
    }

    public String getAchievement() {
        return achievement;
    }

    public void setAchievement(String achievement) {
        this.achievement = achievement;
    }

    public BigDecimal getScore() {
        return score;
    }

    public void setScore(BigDecimal score) {
        this.score = score;
    }

    public Tparticipation(String TID, String BID, String docNo, String achievement, BigDecimal score) {
        this.TID = TID;
        this.BID = BID;
        this.docNo = docNo;
        this.achievement = achievement;
        this.score = score;
    }


}
