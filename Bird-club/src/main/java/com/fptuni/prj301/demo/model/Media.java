
package com.fptuni.prj301.demo.model;


public class Media {
    private String ID;
    private String URL;
    private String description;

    public Media(String ID, String URL, String description) {
        this.ID = ID;
        this.URL = URL;
        this.description = description;
    }

    public Media() {
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
