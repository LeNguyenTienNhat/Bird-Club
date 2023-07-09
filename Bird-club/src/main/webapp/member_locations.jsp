<%-- 
    Document   : member_locations
    Created on : Jun 25, 2023, 8:36:28 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>All Club Location on Map</title>
        <style>
            #map {
                display: center;
                height: 500px;
                width: 100%;
            }
        </style>
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY"></script>
        <script>
            function initMap() {
                var locations = [
                    {
                        address: "07 Công Trường Lam Sơn, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Vietnam",
                        latitude: 10.77685102126475,
                        longitude: 106.70391609388912,
                        name: "Location 1",
                        coordination: "Coordinates 1"
                    },
                            // Add other location objects here
                ];

                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 12,
                    center: {lat: locations[0].latitude, lng: locations[0].longitude}
                });

                for (var i = 0; i < locations.length; i++) {
                    var location = locations[i];
                    var marker = new google.maps.Marker({
                        map: map,
                        position: {lat: location.latitude, lng: location.longitude},
                        title: location.address
                    });

                    var contentString = '<div id="info-window">' +
                            '<h3>' + location.address + '</h3>' +
                            '</div>';

                    var infoWindow = new google.maps.InfoWindow({
                        content: contentString
                    });

                    marker.addListener('click', function () {
                        infoWindow.open(map, marker);
                    });
                }
            }
        </script>
    </head>
    <body>
        <h1>All Club Location on Map</h1>
        <div id="map"></div>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Coordination</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${location}" var="location">
                    <tr>
                        <td>${location.getName()}</td>
                        <td>${location.coordination}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <script>
            initMap();
        </script>
    </body>
</html>