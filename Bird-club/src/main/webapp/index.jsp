<!--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
--><!DOCTYPE html>
<html lang="en">
    <head>
        <style>
            .container {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                width: 648px;
                height: 442.8px;
                text-align: center;
                border: 1px solid #ccc;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                border-radius: 5px;
                background-color: white;
                margin: 0 auto;
                margin-top: 36px;
            }

            .separator {
                border-top: 1px solid #ccc;
                width: 100%;
                margin-top: 20px;
            }

            .header, .separator, .footer {
                width: 100%;
            }

            .body-form {
                flex-grow: 1;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                margin-top: 20px;
            }

            .separator-header,
            .separator-footer {
                border-top: 1px solid #ccc;
                width: 100%;
                margin-top: 20px;
            }
            .text-muted {
                margin-bottom: 10px;

            }

            .form-group {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-bottom: 10px;
            }

            .form-group button {
                margin: 0 5px;
                padding: 8px 16px;
                font-size: 14px;
                border-radius: 5px;
                background-color: #007bff;
                border: none;
                color: #fff;
                cursor: pointer;
            }

            .form-group button:hover {
                background-color: #0069d9;
            }
            .contact-info {
                display: flex;
            }

            .column {
                flex: 1;
                display: flex;
                align-items: center;
            }
        </style>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Cổng thanh toán VNPAY DEMO</title>
        <link href="/vnpay_jsp/assets/bootstrap.min.css" rel="stylesheet"/>
        <link href="/vnpay_jsp/assets/jumbotron-narrow.css" rel="stylesheet">      
        <script src="/vnpay_jsp/assets/jquery-1.11.3.min.js"></script>
    </head>
    <body>        
        <div class="container">
            <div class="header">
                <img src="https://i0.wp.com/discvietnam.com/wp-content/uploads/2020/07/C%E1%BB%95ng-thanh-to%C3%A1n-VNPAY-Logo-Th%E1%BA%BB-ATM-T%C3%A0i-kho%E1%BA%A3n-ng%C3%A2n-h%C3%A0ng-Online-Banking-M%C3%A3-QR-QR-Pay-Qu%C3%A9t-QR-Transparent.png?fit=360%2C140&ssl=1" alt="VNPAY Logo" width="115.95" height="32" />
            </div>
            <div class="separator-header"></div>
            <div class="body-form">
                <h3 class="text-muted">${sessionScope.TransactionType}</h3>
                <div class="form-group">
                    <button onclick="querydr()" class="cancel-button" style="background-color: red;">${docT}</button>
                    <button onclick="pay()">Thanh toán</button>
                </div>
            </div>
            <div class="separator-footer"></div>

            <footer class="footer" style="width: 100%;">
                <p class="contact-info" style="justify-content: flex-end;">
                    <span class="column">
                        <img src="https://th.bing.com/th/id/R.c4edfc51ab1813b98fb8915e8dbebb5b?rik=JIflTecz8tePgA&pid=ImgRaw&r=0" alt="" class="ic-default" style="width:15px; height:15px; ">
                        <a href="tel:1900.5555.77" style="margin-left: 10px;" class="ubtn-text h3 color-info pl-2">1900.5555.77</a>
                    </span>
                    <span class="column">
                        <img src="https://th.bing.com/th/id/OIP.fEe0L7RbU_P2y0uiAZdDZwHaEo?pid=ImgDet&rs=1" alt="" class="ic-default" style="width:30px; height:25px;">
                        <a href="hotro@vnpay.vn" style="margin-left: 5px;" class="ubtn-text h3 color-info pl-2">hotro@vnpay.vn</a> 
                    </span>
                    <span class="column">
                        <img src="https://www.hummings.com/assets/img/credit-card/ssl.png" alt="" class="ic-default" style=" margin-left:50px;width:84px; height:32px;">
                        <img src="images/pci.png" alt="" class="ic-default" style="width:47px; height:32px;">
                    </span>
                </p>
            </footer>



        </div>
        <script>
            function pay() {
                window.location.href = "${pageContext.request.contextPath}/vnpay_pay.jsp";
            }
            function querydr() {
                var docT = "${docT}";
                var TransactionType = "${sessionScope.TransactionType}";
                var old = "${sessionScope.old}";
                var username = "${sessionScope.username}";

                // Encode the values for URL inclusion
                var encodedDocT = encodeURIComponent(docT || "");

                // Construct the base URL
                var baseUrl = "${pageContext.request.contextPath}/BirdController?action=delete&docT=" + encodedDocT;

                // Append additional parameters if they are present
                if (old) {
                    var encodedOld = encodeURIComponent(old);
                    baseUrl += "&old=" + encodedOld;
                }

                if (TransactionType) {
                    var encodedTransactionType = encodeURIComponent(TransactionType);
                    baseUrl += "&TransactionType=" + encodedTransactionType;
                }

                if (username) {
                    var encodedUsername = encodeURIComponent(username);
                    baseUrl += "&username=" + encodedUsername;
                }

                // Navigate to the final URL
                window.location.href = baseUrl;
            }
        </script>
    </body>
</html>

