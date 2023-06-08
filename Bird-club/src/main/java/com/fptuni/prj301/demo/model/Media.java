
package com.fptuni.prj301.demo.model;

public class Media {
    private String URL;
    private String FID;

    public Media(String URL, String FID) {
        this.URL = URL;
        this.FID = FID;
    }
    
    public Media() {
    }
    
    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public String getFID() {
        return FID;
    }

    public void setFID(String FID) {
        this.FID = FID;
    }
}
