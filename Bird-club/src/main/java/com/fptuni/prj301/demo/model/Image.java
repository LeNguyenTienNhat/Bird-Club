
package com.fptuni.prj301.demo.model;

public class Image {
    String url;
    String description;

    public Image(String url, String description) {
        this.url = url;
        this.description = description;
    }

    public Image() {
    }

    
    
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
    
}
