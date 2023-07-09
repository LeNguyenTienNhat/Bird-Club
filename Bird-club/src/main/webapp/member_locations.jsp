<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>All Club Locations on Map</title>
    
      <meta charset="utf-8">
  <link rel='stylesheet' id='contact-form-7-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.7.2' type='text/css' media='all' />
        <link rel='stylesheet' id='bp-site-css-css' href='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/styles/style.css?ver=1678365708' type='text/css' media='all' />
        <link rel='stylesheet' id='bp-bce-site-css-css' href='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/styles/style.css?ver=1684846858' type='text/css' media='all' />
        <link rel='stylesheet' id='zotpress.shortcode.min.css-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/zotpress/css/zotpress.shortcode.min.css?ver=6.1.1' type='text/css' media='all' />
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/jquery/jquery.min.js?ver=3.6.1' id='jquery-core-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.3.2' id='jquery-migrate-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/vendor/php-date-formatter/js/php-date-formatter.min.js?ver=6.0.6.2' id='tribe-events-php-date-formatter-js'></script>
        <link rel="https://api.w.org/" href="https://www.birds.cornell.edu/home/wp-json/" /><link rel="alternate" type="application/json" href="https://www.birds.cornell.edu/home/wp-json/wp/v2/pages/1248" /><link rel='shortlink' href='https://www.birds.cornell.edu/home/?p=1248' />
        <link rel="alternate" type="application/json+oembed" href="https://www.birds.cornell.edu/home/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents%2F" />
        <link rel="alternate" type="text/xml+oembed" href="https://www.birds.cornell.edu/home/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents%2F&#038;format=xml" />
        <meta name="google-site-verification" content="IGsvze-ViQg5tZuvTMIK4uTycXsQsaApdSmVuW0DhVg" />

    <style>
        #map {
            display: center;
            height: 500px;
            width: 96%;
        }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB522yNJkfdTTRnsqsB0GXmfF2iRFfvdDw"></script>
    <script>
        function initMap() {
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

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 12,
                center: { lat: locations[0].latitude, lng: locations[0].longitude }
            });

            for (var i = 0; i < locations.length; i++) {
                var location = locations[i];

                var marker = new google.maps.Marker({
                    map: map,
                    position: { lat: location.latitude, lng: location.longitude },
                    title: location.address
                });

                var contentString = '<div id="info-window">' +
                    '<h3>' + location.address + '</h3>' +
                    '</div>';

                var infoWindow = new google.maps.InfoWindow();

                marker.addListener('click', function(marker, contentString) {
                    return function() {
                        infoWindow.setContent(contentString);
                        infoWindow.open(map, marker);
                    };
                }(marker, contentString));
            }
        }
    </script>
</head>
<body class="page-template-default page page-id-1229 page-parent wp-embed-responsive theme-green nav-column tribe-no-js">
<%@ include file="member_header.jsp" %> 
    <h2 style="text-align: center;" class="has-text-align-center has-large-font-size">Location club List</h2>
     
    <div id="map" style="margin: 30px;">
        
    </div>


    <script>
        initMap();
    </script>
</body>
<%@ include file="member_footer.jsp" %> 
</html>
