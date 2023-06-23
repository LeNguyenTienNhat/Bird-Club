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
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            width: 646px;
            border: 1px solid black;
            margin-top:36px;
        }

        header {
            height: 72px;
            border-bottom: 1px solid black;
        }

        div {
            height: 291px;
            border-bottom: 1px solid black;
        }

        footer {
            height: 76px;
        }
        .img{
            vertical-align: middle;
            box-sizing: border-box;
        }
        .container{
            height: 291px;
            display: block;
            margin: 20px auto;

        }
    </style>
    <body>
        <form>
            <header>
                <img src="https://i0.wp.com/discvietnam.com/wp-content/uploads/2020/07/C%E1%BB%95ng-thanh-to%C3%A1n-VNPAY-Logo-Th%E1%BA%BB-ATM-T%C3%A0i-kho%E1%BA%A3n-ng%C3%A2n-h%C3%A0ng-Online-Banking-M%C3%A3-QR-QR-Pay-Qu%C3%A9t-QR.png?fit=360%2C140&ssl=1" alt="VNPAY" style="display: block; margin: 20px auto; width: 115px; height: 40px;"> 
            </header>
            <div class="container ">
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
            </div>

            <script>
                // Get the "Lưu" button element
                const luuBtn = document.getElementById('luuBtn');

                // Add a click event listener to the "Lưu" button
                luuBtn.addEventListener('click', function (event) {
                    event.preventDefault(); // Prevent form submission

                    // Hide the "Lưu" button
                    luuBtn.style.display = 'none';

                    // Hide the label for "Số tiền" input field
                    const amountLabel = document.getElementById('amountLabel');
                    amountLabel.style.display = 'none';

                    // Show the "Thanh toán" button
                    const thanhtoanBtn = document.getElementById('thanhtoanBtn');
                    thanhtoanBtn.style.display = 'inline-block';
                });
            </script>
            <script>
                // Copy the value from the first input field to the hidden input field
                document.getElementById("amountCopy").value = document.getElementById("amount").value;
            </script>

        </div>

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
        <footer style="display: flex; align-items: center; margin-left:10px; font-size: 16px;">
            <img src="https://img.freepik.com/free-icon/auricular-phone_318-1028.jpg" alt="Phone" style="width: 20px; height: 20px;">
            <span style="margin-right: 10px;">1900.5555.77</span>

            <img src="https://cdn-icons-png.flaticon.com/512/4946/4946005.png" alt="Mail" style="width: 20px; height: 20px;"
                 <a href="mailto:hotro@vnpay.vn" style="margin-left: 5px;">hotro@vnpay.vn</a>
        </footer>
    </form>
</body>
</html>