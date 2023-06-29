
package com.fptuni.prj301.demo.model;


public class Media {
    private String ID;
    private String description;
    private byte[] image;

    public Media(String ID, String description, byte[] image) {
        this.ID = ID;
        this.description = description;
        this.image = image;
    }
    
    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }
    public Media() {
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
