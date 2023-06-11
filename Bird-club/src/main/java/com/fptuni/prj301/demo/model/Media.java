
package com.fptuni.prj301.demo.model;

public class Media {
    private String URL;
    private String ID;

    public Media(String URL, String ID) {
        this.URL = URL;
        this.ID = ID;
    }
    
    public Media() {
    }
    
    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }
}
