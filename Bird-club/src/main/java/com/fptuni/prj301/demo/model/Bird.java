/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.model;

import java.util.Date;

/**
 *
 * @author Administrator
 */
public class Bird {

    private String BID;
    private String UID;
    private String name;
    private int age;
    private String gender;
    private String description;
    private String color;
    private Date addDate;
    private byte[] profilePic;

    public Bird() {
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Date getAddDate() {
        return addDate;
    }

    public void setAddDate(Date addDate) {
        this.addDate = addDate;
    }

    public byte[] getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(byte[] profilePic) {
        this.profilePic = profilePic;
    }

    public Bird(String BID, String UID, String name, int age, String gender, String description, String color, Date addDate, byte[] profilePic) {
        this.BID = BID;
        this.UID = UID;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.description = description;
        this.color = color;
        this.addDate = addDate;
        this.profilePic = profilePic;
    }
    
}
