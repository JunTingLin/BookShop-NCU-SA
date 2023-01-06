<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<title>確認收貨訊息</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
		<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/cart.js"></script>
	</head>
	<body>
		<!--header-->
		<jsp:include page="header.jsp"></jsp:include>
		<!--//header-->

		<div class="cart-items">
			<div class="container">
				<h2 class="submit-title">
					<i class="bi bi-check-circle-fill"></i>
					確認收貨訊息
				</h2>

				<div class="frame">
					<form class="form-control" action="/order_confirm" method="post" id="payform">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="username" name="name" value="${user.name }" placeholder="輸入收貨人" required="required">
							<label for="username">收貨人</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="phone" name="phone" value="${user.phone }" placeholder="輸入收貨人電話" required="required">
							<label for="phone">收貨人電話</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="address" name="address" value="${user.address }" placeholder="輸入收貨地址" required="required">
							<label for="address">輸入收貨地址</label>
						</div>

						<br><hr>

						<div>
							<h3 style="font-family: 'Zen Antique', serif;">選擇付款方式</h3>
							<h4 style="font-family: 'Zen Antique', serif;">支付金額: NT$ ${order.total }</h4><br>
						</div>
						<div class="pay">
							<label class="pay_option">
									<div class="thumbnail">
										<input type="radio" name="paytype" value="1" checked="checked" />
										<img src="images/linepay.png" alt="Line Pay" width="100" height="100">
									</div>
							</label>
							<label class="pay_option">
									<div class="thumbnail">
										<input type="radio" name="paytype" value="2"  />
										<img src="images/applepay.jpg" alt="Apple Pay" width="100" height="100">
									</div>
							</label>
							<label class="pay_option">
									<div class="thumbnail">
										<input type="radio" name="paytype" value="3"  />
										<img src="images/delivery.jpg" alt="超商付款" width="80" height="80">
									</div>
							</label>
							<div class="mb-3">
								<button type="submit" class="btn btn-success" style="margin-left: 780px;" value="確認訂單">確認訂單</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!--footer-->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--//footer-->

		<script type="text/javascript">
			function dopay(paytype){
				$("#paytype").val(paytype);
				$("#payform").submit();
			}
		</script>
	</body>
</html>