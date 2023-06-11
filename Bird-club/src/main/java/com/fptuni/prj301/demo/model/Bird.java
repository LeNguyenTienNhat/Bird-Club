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
    private String imageURL;
    private String color;
    private Date addDate;

    public Bird() {
    }

    public Bird(String BID, String UID, String name, int age, String gender, String description, String imageURL, String color, Date addDate) {
        this.BID = BID;
        this.UID = UID;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.description = description;
        this.imageURL = imageURL;
        this.color = color;
        this.addDate = addDate;
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

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
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
    
}
