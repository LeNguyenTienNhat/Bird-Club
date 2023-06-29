
package com.fptuni.prj301.demo.model;

public class Image {   
    private String description;
    private byte[] image;

    public Image(String description, byte[] image) {
        this.description = description;
        this.image = image;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }


    public Image() {
    }
    
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
    
}
