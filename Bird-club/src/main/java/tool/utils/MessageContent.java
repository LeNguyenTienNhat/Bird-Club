
package tool.utils;

public class MessageContent {
    public String EmailContentGenerator() {
        StringBuilder sb = new StringBuilder();
        sb.append("<h1>The new tournament is coming!</h1>");
        sb.append("<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                + "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
                + "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                + "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>");
        return sb.toString();
    }
    
    public String splitAndFormatContent(String headline, String p) {
        StringBuilder sb = new StringBuilder();
        sb.append("<h1>").append(headline).append("</h1>");
        
        String[] arrOfStr;
        arrOfStr = p.split("\n");
        for (String s : arrOfStr) {
            sb.append("<p>").append(s).append("</p>");
        }
        return sb.toString();
    }
}
