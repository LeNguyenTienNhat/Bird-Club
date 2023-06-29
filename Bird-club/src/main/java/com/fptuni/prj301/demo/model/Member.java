package com.fptuni.prj301.demo.model;

public class Member {

    private String UID;
    private String userName;
    private String password;
    private String fullName;
    private String gender;
    private String phone;
    private String email;
    private String status;
    private String role;
    private String signupDate;
    private String expiredDate;
    private String MID;
    private byte[] profilePicture;

    public Member() {
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
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
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
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role) {
        this.role = role;
    }

    /**
     * @return the signupDate
     */
    public String getSignupDate() {
        return signupDate;
    }

    /**
     * @param signupDate the signupDate to set
     */
    public void setSignupDate(String signupDate) {
        this.signupDate = signupDate;
    }

    /**
     * @return the expiredDate
     */
    public String getExpiredDate() {
        return expiredDate;
    }

    /**
     * @param expiredDate the expiredDate to set
     */
    public void setExpiredDate(String expiredDate) {
        this.expiredDate = expiredDate;
    }

    /**
     * @return the MID
     */
    public String getMID() {
        return MID;
    }

    /**
     * @param MID the MID to set
     */
    public void setMID(String MID) {
        this.MID = MID;
    }

    public Member(String UID, String userName, String password, String fullName, String gender, String phone, String email, String status, String role, String signupDate, String expiredDate, String MID, byte[] profilePicture) {
        this.UID = UID;
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.status = status;
        this.role = role;
        this.signupDate = signupDate;
        this.expiredDate = expiredDate;
        this.MID = MID;
        this.profilePicture = profilePicture;
    }

    public byte[] getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(byte[] profilePicture) {
        this.profilePicture = profilePicture;
    }

}
