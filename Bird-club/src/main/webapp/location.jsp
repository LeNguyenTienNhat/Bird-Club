<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Bird Club Location</title>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB522yNJkfdTTRnsqsB0GXmfF2iRFfvdDw"></script>
    <style>
      /* Specify the size of the map container */
      #map {
        height: 500px;
        width: 500;
      }
    </style>
  </head>
  
  <body>
    <!-- Your map container element -->
    <div id="map"></div>
    
    <script>
      function initMap() {
        // Create a map object and specify the initial center and zoom level
        var map = new google.maps.Map(document.getElementById('map'), {
          center: { lat: 10.841275112215545, lng: 106.8098615380731 },
          zoom: 12
        });
        var map = new google.maps.Map(document.getElementById('map'), {
          center: { lat:  10.87630608117475, lng: 106.80130668225671 },
          zoom: 12
        });
         var map = new google.maps.Map(document.getElementById('map'), {
          center: { lat:  10.841903755298413, lng: 106.83797715886088 },
          
          zoom: 12
        });
        var map = new google.maps.Map(document.getElementById('map'), {
          center: { lat:  10.80473583934974, lng: 106.79146648782456 },
          
          zoom: 12
        });
        
        // Create a marker with a custom icon
        var marker = new google.maps.Marker({
          position: { lat: 10.841275112215545, lng: 106.8098615380731 },
          map: map,
          icon: {
            url: 'https://www.bird.club/assets/logo/logo@2x-956290beed33ed2841b61b3f880995d6c6951252a264e6615c7338a75336109e.png',
            scaledSize: new google.maps.Size(64, 64) // Adjust the size of the marker icon
          },
          title: 'My Logo'
        });
         var marker = new google.maps.Marker({
          position: { lat: 10.87630608117475, lng: 106.80130668225671 },
          map: map,
          icon: {
            url: 'https://www.bird.club/assets/logo/logo@2x-956290beed33ed2841b61b3f880995d6c6951252a264e6615c7338a75336109e.png',
            scaledSize: new google.maps.Size(64, 64) // Adjust the size of the marker icon
          },
          title: 'My Logo'
        });
         var marker = new google.maps.Marker({
          position: { lat:  10.841903755298413, lng: 106.83797715886088 },
          map: map,
          icon: {
            url: 'https://www.bird.club/assets/logo/logo@2x-956290beed33ed2841b61b3f880995d6c6951252a264e6615c7338a75336109e.png',
            scaledSize: new google.maps.Size(64, 64) // Adjust the size of the marker icon
          },
          title: 'My Logo'
        });
        
        var marker = new google.maps.Marker({
          position: { lat:  10.80473583934974, lng: 106.79146648782456 },
          map: map,
          icon: {
            url: 'https://www.bird.club/assets/logo/logo@2x-956290beed33ed2841b61b3f880995d6c6951252a264e6615c7338a75336109e.png',
            scaledSize: new google.maps.Size(64, 64) // Adjust the size of the marker icon
          },
          title: 'My Logo'
        });
      }
      
      // Call the initMap function when the page loads
      window.onload = initMap;
    </script>
  </body>
</html>
