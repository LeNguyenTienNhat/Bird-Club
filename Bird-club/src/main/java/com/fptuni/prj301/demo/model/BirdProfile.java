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
public class BirdProfile {

    private String BID;
    private String UID;
    private String name;
    private String age;
    private String gender;
    private String description;
    private String imageURL;
    private String color;


    public BirdProfile() {
    }

    public BirdProfile(String BID, String UID, String name, String age, String gender, String description, String imageURL, String color) {
        this.BID = BID;
        this.UID = UID;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.description = description;
        this.imageURL = imageURL;
        this.color = color;
        
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

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
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

    
    
}
