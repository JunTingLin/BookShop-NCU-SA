<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<title>付款成功</title>
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

		<!--cart-items-->
		<div class="cart-items">
			<div class="container">

				<c:if test="${!empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>

				<p><a class="btn btn-success" href="/order_list">查看我的訂單</a></p>
			</div>
		</div>
		<!--//cart-items-->

		<!--footer-->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--//footer-->
	</body>
</html>