
package com.fptuni.prj301.demo.model;

public class Tournament {
    private String TID;
    private String name;
    private String description;
    private String registrationDeadline;
    private String startDate;
    private String endDate;
    private String LID;
    private String status;
    private int fee;
    private int numberOfParticipant;
    private int totalPrize;
    private String category;
    private String note;
    private String incharge;
    private String host;
    private String contact;

    public Tournament(String TID, String name, String description, String registrationDeadline, String startDate, String endDate, String LID, String status, int fee, int numberOfParticipant, int totalPrize, String note, String incharge, String host, String contact) {
        this.TID = TID;
        this.name = name;
        this.description = description;
        this.registrationDeadline = registrationDeadline;
        this.startDate = startDate;
        this.endDate = endDate;
        this.LID = LID;
        this.status = status;
        this.fee = fee;
        this.numberOfParticipant = numberOfParticipant;
        this.totalPrize = totalPrize;
        this.category = category;
        this.note = note;
        this.incharge = incharge;
        this.host = host;
        this.contact = contact;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getIncharge() {
        return incharge;
    }

    public void setIncharge(String incharge) {
        this.incharge = incharge;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
    


    public int getTotalPrize() {
        return totalPrize;
    }

    public void setTotalPrize(int totalPrize) {
        this.totalPrize = totalPrize;
    }
    
    public int getFee() {
        return fee;
    }

    public void setFee(int fee) {
        this.fee = fee;
    }

    public Tournament() {
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    public String getTID() {
        return TID;
    }

    public void setTID(String TID) {
        this.TID = TID;
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
