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
public class Location {

    private String lid;
    private String name;
    private String coordination;

    public String getLid() {
        return lid;
    }

    public void setLid(String lid) {
        this.lid = lid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCoordination() {
        return coordination;
    }

    public void setCoordination(String coordination) {
        this.coordination = coordination;
    }

    public Location(String lid, String name, String coordination) {
        this.lid = lid;
        this.name = name;
        this.coordination = coordination;
    }

    public Location() {
    }
}
