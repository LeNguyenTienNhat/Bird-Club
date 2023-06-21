<%-- 
    Document   : member_fieldtrip_details
    Created on : Jun 4, 2023, 2:51:03 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    
<head>
      <style>
        table {
            border-collapse: collapse;
            width: 300px;
        }
        
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
    
    <title>Score Ranking</title>
</head>
<body>
    
    <h1>Score Ranking</h1>
    
    <table>
        <tr>
            <th>Rank</th>
            <th>Player</th>
        </tr>
        <tr>
            <td>1</td>
            <td>Player 1</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Player 2</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Player 3</td>
        </tr>
    </table>
</body>
</html>
