<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>首頁</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>
</head>
<body>


<jsp:include page="/header.jsp">
	<jsp:param value="8" name="flag"/>
</jsp:include>


<!--products-->
<div class="products">
	<div class="container">
		<h2> 查詢 ‘${param.keyword }’相關結果 </h2>

		<div class="col-md-12 product-model-sec">

			<c:forEach items="${ list }" var="b">
				<div class="product-grid">
					<a href="${pageContext.request.contextPath }/books_detail?id=${b.id}">
						<div class="more-product"><span> </span></div>
						<div class="product-img">
							<img src="${pageContext.request.contextPath }${b.cover}" class="img-responsive" alt="${b.name }" width="240" height="240">
						</div>
					</a>
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>${b.name}</h4>
							<div class="view-info">
								<span class="item_price">NT$ ${b.price}</span>
								<div class="items-info">
									<i class="bi-eye" aria-hidden="true"></i>
									<a href="/books_detail?id=${b.id}">查看詳情</a>
								</div>
							</div>
							<input type="button" class="item_add items" value="加入購物車" onclick="buy(${b.id})">
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</c:forEach>

			<div class="clearfix"> </div>
		</div>

	</div>
</div>
<!--//products-->

<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>