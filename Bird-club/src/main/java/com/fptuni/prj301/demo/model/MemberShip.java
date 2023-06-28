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
public class MemberShip {

    private String MID;
    private String name;
    private BigDecimal value;
    private String duration;
    private String description;
    private String status;

    public MemberShip(String MID, String name, BigDecimal value, String duration, String description, String status) {
        this.MID = MID;
        this.name = name;
        this.value = value;
        this.duration = duration;
        this.description = description;
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMID() {
        return MID;
    }

    public void setMID(String MID) {
        this.MID = MID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getValue() {
        return value;
    }

    public void setValue(BigDecimal value) {
        this.value = value;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public MemberShip() {
    }
}
