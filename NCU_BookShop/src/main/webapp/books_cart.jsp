<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<title>我的購物車</title>
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
		<c:if test="${empty order.getItemMap()}">
			<jsp:forward page="/index"></jsp:forward>
		</c:if>

		<!--header-->
		<jsp:include page="header.jsp">
			<jsp:param name="flag" value="7"></jsp:param>
		</jsp:include>
		<!--//header-->


		<!--cart-items-->
		<div class="cart-items">
			<div class="container">
				<h2 class="cart-title">
					<i class="bi bi-cart2"></i>
					我的購物車
				</h2>
				<br>

				<div class="frame">
					<c:forEach items="${order.itemMap }" var="item">
						<div class="cart-header col-md-6">
							<div class="cart-sec">
								<div class="cart-item">
									<a href="/books_detail?id=${item.key}">
										<img src="${pageContext.request.contextPath }${item.value.books.cover}" class="img-responsive">
									</a>
								</div>
								<div class="cart-item-info">
									<h3><a href="/books_detail?id=${item.key}">${item.value.books.name}</a></h3>
									<h3><span>單價: NT$ ${item.value.price}</span></h3>
									<h3><span>數量: ${item.value.amount}</span></h3>
									<a class="btn btn-info" href="javascript:buy(${item.key});">增加</a>
									<a class="btn btn-warning" href="javascript:lessen(${item.key});">減少</a>
									<a class="btn btn-danger" href="javascript:deletes(${item.key});">刪除</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</c:forEach>

					<div class="cart-header col-md-12">
						<hr>
						<h4 style="font-family: 'Zen Antique', serif">
							訂單總金額: NT$
							<c:choose>
								<c:when test="${empty order.total}">0</c:when>
								<c:otherwise>${order.total}</c:otherwise>
							</c:choose>
						</h4>
						<a class="btn btn-success btn-lg" style="margin-left:74%" href="/order_submit">提交訂單</a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!--//cart-items-->

		<!--footer-->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--//footer-->


	</body>
</html>