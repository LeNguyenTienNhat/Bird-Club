
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submit</title>
    </head>
    <body>
        
        <%! String t;%>
        
        <%
            String root = "D:\\gt\\Bird-Club\\Bird-club\\src\\main\\webapp\\media";
            MultipartRequest mr = new MultipartRequest(request,root);            
            t = mr.getParameter("TID");
            out.print("TID:"+ t + "<br>");
            Enumeration files = mr.getFileNames();
            String name = (String) files.nextElement();
            String filename = mr.getFilesystemName(name);
            out.print("Uploaded file name: "+filename);
        %>
    </body>
</html>
