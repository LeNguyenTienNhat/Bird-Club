/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.model;

/**
 *
 * @author DELL-7391
 */
public class MemberProfile {
    private String UID;
    private String userName;
    private String fullName;
    private String gender;
    private String phone;
    private String email;


    public MemberProfile() {
    }

    public MemberProfile(String UID, String userName, String fullName, String gender, String phone, String email) {
        this.UID = UID;
        this.userName = userName;
        this.fullName = fullName;
        this.gender = gender;
        this.phone = phone;
        this.email = email;

    }

    /**
     * @return the UID
     */
    public String getUID() {
        return UID;
    }

    /**
     * @param UID the UID to set
     */
    public void setUID(String UID) {
        this.UID = UID;
    }

    /**
     * @return the userName
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * @return the fullName
     */
    public String getFullName() {
        return fullName;
    }

    /**
     * @param fullName the fullName to set
     */
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the avatar
     */
   

    
    
    
    
}
