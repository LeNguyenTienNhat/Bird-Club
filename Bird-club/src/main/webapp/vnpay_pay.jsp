<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Tạo mới đơn hàng</title>
        <!-- Bootstrap core CSS -->
        <link href="/vnpay_jsp/assets/bootstrap.min.css" rel="stylesheet"/>
        <!-- Custom styles for this template -->
        <link href="/vnpay_jsp/assets/jumbotron-narrow.css" rel="stylesheet">      
        <script src="/vnpay_jsp/assets/jquery-1.11.3.min.js"></script>
    </head>
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
        .button-group {
            display: flex; /* Add display flex */
            justify-content: center; /* Center the buttons horizontally */
            margin-top: 10px;
            padding-right: 5px; /* Add spacing between the form-group and buttons */
        }

        .button-group button {
            margin: 0 27px;
            padding: 8px 16px;
            font-size: 14px;
            border-radius: 5px;
            background-color: #007bff;
            border: none;
            color: #fff;
            cursor: pointer;
            /* Add horizontal spacing between the buttons */
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
</style>
<body>
    <div class="container">
        <div class="header">
            <img src="https://i0.wp.com/discvietnam.com/wp-content/uploads/2020/07/C%E1%BB%95ng-thanh-to%C3%A1n-VNPAY-Logo-Th%E1%BA%BB-ATM-T%C3%A0i-kho%E1%BA%A3n-ng%C3%A2n-h%C3%A0ng-Online-Banking-M%C3%A3-QR-QR-Pay-Qu%C3%A9t-QR-Transparent.png?fit=360%2C140&ssl=1" alt="VNPAY Logo" width="115.95" height="32" />
        </div>
        <div class="separator-header"></div>
        <div class="body-form">
            <form action="/chimowners/vnpayajax" id="frmCreateOrder" method="post">
                <div class="form-group">
                    <label for="amount">Nhập số tiền</label>
                    <input class="form-control" data-val="true" data-val-number="The field Amount must be a number." data-val-required="The Amount field is required." id="amount" max="100000000" min="1" name="amount" type="number" value="10000" />
                </div>
                <div class="button-group">


                    <button  type="submit" class="btn btn-default" href>Thanh toán</button>
                </div>
            </form>  
            <form action="${pageContext.request.contextPath}/TransactionController?action=add" method="post">
                <input type="hidden" id="amountCopy" name="amount" />
                <input type="hidden" name="UID" value="${users.getUID()}">
                <input type="hidden" name="TT" value="${sessionScope.TransactionType}" />
                <input type="hidden" name="docT" value="${docT}">
                <button style="margin-right:5px;" type="submit" class="btn btn-default">Lưu</button> 

            </form>


            <h3 class="text-muted">${sessionScope.TransactionType}</h3>
            <script>
                // Copy the value from the first input field to the hidden input field
                document.getElementById("amountCopy").value = document.getElementById("amount").value;
            </script>
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

    <!--        <div class="container">
                <div class="header clearfix">
                    <h3 class="text-muted">VNPAY DEMO</h3>
                </div>
                <h3>Tạo mới đơn hàng</h3>
                <div class="table-responsive">
                    <form action="/chimowners/vnpayajax" id="frmCreateOrder" method="post">        
                        <div class="form-group">
                            <label for="amount">Số tiền</label>
                            <input class="form-control" data-val="true" data-val-number="The field Amount must be a number." data-val-required="The Amount field is required." id="amount" max="100000000" min="1" name="amount" type="number" value="10000" />
                        </div>
                        <button type="submit" class="btn btn-default" href>Thanh toán</button>
                    </form>
    
                    <form action="${pageContext.request.contextPath}/TransactionController?action=add" method="post">  
                        <input type="hidden" id="amountCopy" name="amount" />
                        <input type="hidden" name="UID" value="${users.getUID()}">
                        <input type="hidden" name="TT" value="${sessionScope.TransactionType}" />
                        <input type="hidden" name="docT" value="${docT}">
                        <button type="submit" class="btn btn-default">Lưu</button>
                    </form>
    </div>
                    <script>
    // Copy the value from the first input field to the hidden input field
                        document.getElementById("amountCopy").value = document.getElementById("amount").value;
                    </script>
                    <p>
                        &nbsp;
                    </p>
                    <footer class="footer">
                        <p>&copy; VNPAY 2020</p>
                    </footer>
                </div>-->

    <link href="https://pay.vnpay.vn/lib/vnpay/vnpay.css" rel="stylesheet" />
    <script src="https://pay.vnpay.vn/lib/vnpay/vnpay.min.js"></script>
    <script type="text/javascript">
                $("#frmCreateOrder").submit(function () {
                    var postData = $("#frmCreateOrder").serialize();
                    var submitUrl = $("#frmCreateOrder").attr("action");
                    $.ajax({
                        type: "POST",
                        url: submitUrl,
                        data: postData,
                        dataType: 'JSON',
                        success: function (x) {
                            if (x.code === '00') {
                                if (window.vnpay) {
                                    vnpay.open({width: 768, height: 600, url: x.data});
                                } else {
                                    location.href = x.data;
                                }
                                return false;
                            } else {
                                alert(x.Message);
                            }
                        }
                    });
                    return false;
                });
    </script>       
</body>
</html>