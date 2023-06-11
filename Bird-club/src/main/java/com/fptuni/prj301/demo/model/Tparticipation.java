/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.model;

/**
 *
 * @author Administrator
 */
public class Tparticipation {

    private String tid;
    private String bid;
    private String docNo;
    private String achievement;

    public Tparticipation() {
    }

    public Tparticipation(String tid, String bid, String docNo, String achievement) {
        this.tid = tid;
        this.bid = bid;
        this.docNo = docNo;
        this.achievement = achievement;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid;
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
    
}
