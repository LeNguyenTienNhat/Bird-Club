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
            display:center;
            height: 500px;
            width: 50%;
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
                    longitude: 106.71054129574509
                },
                {
                    address: "11 Đ. Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh, Vietnam",
                    latitude: 10.772552112327606, 
                    longitude: 106.67005087643817
                },
                {
                    address: "170 Lê Văn Khương, Thới An, Quận 12, Thành phố Hồ Chí Minh, Vietnam",
                    latitude: 10.868584871487691, 
                    longitude: 106.65234149574671
                },
                {
                    address: "Lô E2a-7, Đường D1, Đ. D1, Long Thạnh Mỹ, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh 700000, Vietnam",
                    latitude: 10.841317261603312, 
                    longitude: 106.81002247062233 
                },
                {
                    address: "125 Đồng Văn Cống, Phường Thạnh Mỹ Lợi, Quận 2, Thành phố Hồ Chí Minh 700000, Vietnam",
                    latitude: 10.77426740551232, 
                    longitude: 106.76228689574539 
                },
                {
                    address: "86 P. Nguyễn Văn Tuyết, Trung Liệt, Đống Đa, Hà Nội 700000, Vietnam",
                    latitude: 21.011384683002458, 
                    longitude: 105.81883898061733 
                },
                 {
                    address: "Đ. Bưởi, Thủ Lệ, Ba Đình, Hà Nội 100000, Vietnam",
                    latitude: 21.030770449872584, 
                    longitude: 105.80553378247417 
                },
                {
                    address: "275 Đ. Âu Cơ, Quảng An, Tây Hồ, Hà Nội, Vietnam",
                    latitude: 21.071328475112576,
                    longitude: 105.82564411131197 
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