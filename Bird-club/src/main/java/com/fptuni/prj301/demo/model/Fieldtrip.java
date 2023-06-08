
package com.fptuni.prj301.demo.model;

public class Fieldtrip {
    private String FID;
    private String name;
    private String description;
    private String registrationDeadline;
    private String startDate;
    private String endDate;
    private String LID;
    private String status;
    private int fee;
    private int numberOfParticipant;

    public Fieldtrip(String FID, String name, String description, String registrationDeadline, String startDate, String endDate, String LID, String status, int fee, int numberOfParticipant) {
        this.FID = FID;
        this.name = name;
        this.description = description;
        this.registrationDeadline = registrationDeadline;
        this.startDate = startDate;
        this.endDate = endDate;
        this.LID = LID;
        this.status = status;
        this.fee = fee;
        this.numberOfParticipant = numberOfParticipant;
    }

    public Fieldtrip() {
    }

    
    
    public String getFID() {
        return FID;
    }

    public void setFID(String FID) {
        this.FID = FID;
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

    public int getFee() {
        return fee;
    }

    public void setFee(int fee) {
        this.fee = fee;
    }

    public int getNumberOfParticipant() {
        return numberOfParticipant;
    }

    public void setNumberOfParticipant(int numberOfParticipant) {
        this.numberOfParticipant = numberOfParticipant;
    }
    
    
}
