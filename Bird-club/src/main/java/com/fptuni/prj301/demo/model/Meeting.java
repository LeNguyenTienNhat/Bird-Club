
package com.fptuni.prj301.demo.model;

public class Meeting {
    private String MeID;
    private String name;
    private String description;
    private String registrationDeadline;
    private String startDate;
    private String endDate;
    private String LID;
    private String status;
    private int numberOfParticipant;
    private String category;

    public Meeting(String FID, String name, String description, String registrationDeadline, String startDate, String endDate, String LID, String status, int numberOfParticipant) {
        this.MeID = FID;
        this.name = name;
        this.description = description;
        this.registrationDeadline = registrationDeadline;
        this.startDate = startDate;
        this.endDate = endDate;
        this.LID = LID;
        this.status = status;
        this.numberOfParticipant = numberOfParticipant;
    }

    public Meeting() {
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    public String getMeID() {
        return MeID;
    }

    public void setMeID(String FID) {
        this.MeID = FID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRegistrationDeadline() {
        return registrationDeadline;
    }

    public void setRegistrationDeadline(String registrationDeadline) {
        this.registrationDeadline = registrationDeadline;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getLID() {
        return LID;
    }

    public void setLID(String LID) {
        this.LID = LID;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getNumberOfParticipant() {
        return numberOfParticipant;
    }

    public void setNumberOfParticipant(int numberOfParticipant) {
        this.numberOfParticipant = numberOfParticipant;
    }
    
    
}
