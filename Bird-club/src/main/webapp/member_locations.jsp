<%-- 
    Document   : member_locations
    Created on : Jun 25, 2023, 8:36:28 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>All Club Location on Map</title>
  <style>
        #map {
            height: 200px;
            width: 100%;
        }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB522yNJkfdTTRnsqsB0GXmfF2iRFfvdDw"></script>
    <script>
        function initMap() {
            // Define an array of locations with their addresses and coordinates
            var locations = [
                {
                    address: "07 Công Trường Lam Sơn, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Vietnam",
                    latitude: 10.77685102126475,
                    longitude: 106.70391609388912
                },
                {
                    address: "64A Trương Định, Võ Thị Sáu, Quận 3, Thành phố Hồ Chí Minh, Vietnam",
                    latitude: 10.777428062452405,
                    longitude: 106.69047902458195
                },
                {
                    address: "300A Nguyễn Tất Thành, Phường 13, Quận 4, Thành phố Hồ Chí Minh 70000, Vietnam",
                    latitude: 10.761222612270188,
                    longitude: 106.71049838039863
                }
            ];

            // Create a map object and specify the DOM element for display
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 12, // Adjust the zoom level as needed
                center: { lat: locations[0].latitude, lng: locations[0].longitude }
            });

            // Loop through the locations and create markers for each location
            for (var i = 0; i < locations.length; i++) {
                var location = locations[i];

                // Create a marker and set its position
                var marker = new google.maps.Marker({
                    map: map,
                    position: { lat: location.latitude, lng: location.longitude },
                    title: location.address
                });

                // Set the content for the info window
                var contentString = '<div id="info-window">' +
                    '<h3>' + location.address + '</h3>' +
                    '</div>';

                // Create an info window and set the content
                var infoWindow = new google.maps.InfoWindow({
                    content: contentString
                });

                // Open the info window when the marker is clicked
                marker.addListener('click', function() {
                    infoWindow.open(map, marker);
                });
            }
        }
    </script>
    <div id="map"></div>

    <script>
        // Initialize the map
        initMap();
    </script>
</body>
</html>