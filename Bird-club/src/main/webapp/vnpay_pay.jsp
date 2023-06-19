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

    <body>

        <div class="container">
            <div class="header clearfix">

                <h3 class="text-muted">VNPAY DEMO</h3>
            </div>
            <h3>Tạo mới đơn hàng</h3>
            <div class="table-responsive">
                <form action="/chimowners/vnpayajax" id="frmCreateOrder" method="post">
                    <div class="form-group">
                        <label for="amount" id="amountLabel">Số tiền</label>
                        <input class="form-control" data-val="true" data-val-number="The field Amount must be a number." data-val-required="The Amount field is required." id="amount" max="100000000" min="1" name="amount" type="number" value="10000" />
                    </div>
                    <div class="form-group">
                        <h5>Chọn ngôn ngữ giao diện thanh toán:</h5>
                        <input type="radio" id="language" checked="true" name="language" value="vn">
                        <label for="language">Tiếng việt</label><br>
                        <input type="radio" id="language" name="language" value="en">
                        <label for="language">Tiếng anh</label><br>
                    </div>
                    <button type="submit" id="thanhtoanBtn" class="btn btn-default">Thanh toán</button>
                </form>

                <form action="${pageContext.request.contextPath}/TransactionController?action=add" method="post">
                    <input type="hidden" id="amountCopy" name="amount" />
                    <input type="hidden" name="UID" value="${users.userId}">
                    <input type="hidden" name="TT" value="${sessionScope.TransactionType}" />
                    <input type="hidden" name="docT" value="${docT}">
                    <button type="submit" id="luuBtn" class="btn btn-default">Lưu</button>
                </form>
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
            <p>
                &nbsp;
            </p>
            <footer class="footer">
                <p>&copy; VNPAY 2020</p>
            </footer>
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
    </body>
</html>