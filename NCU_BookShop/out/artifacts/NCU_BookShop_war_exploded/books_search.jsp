<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>搜尋'${param.keyword }'的結果</title>
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
		<jsp:include page="/header.jsp">
			<jsp:param value="8" name="flag"/>
		</jsp:include>


		<!--products-->
		<div class="products">
			<div class="container">
				<div class="row">
					<h2 class="recommend-title">
						<i class="bi bi-search"></i>
						<c:choose>
							<c:when test="${empty param.keyword}">所有商品結果</c:when>
							<c:otherwise>查詢「${param.keyword }」的相關結果</c:otherwise>
						</c:choose>

					</h2>

					<div class="col-md-12 product-model-sec">

						<c:forEach items="${ list }" var="b">
							<div class="product-grid">
								<a href="${pageContext.request.contextPath }/books_detail?id=${b.id}">
									<div class="more-product"><span> </span></div>
									<div class="product-img">
										<img src="${pageContext.request.contextPath }${b.cover}" class="img-responsive" alt="${b.name }" width="225" height="300">
									</div>
								</a>
								<div class="product-info">
									<div class="product-info-cust prt_name">
										<h4><a href="/books_detail?id=${b.id}">${b.name}</a></h4>
										<div class="view-info">
											<span class="item_price">NT$ ${b.price}</span>
											<div class="items-info">
												<a href="/books_detail?id=${b.id}" class="search-detail">
													<i class="bi-eye" aria-hidden="true"></i>
													查看詳情
												</a>
											</div>
										</div>
										<div class="buy">
											<a class="add-search" href="javascript:;" onclick="buy(${b.id})">加入購物車</a>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<!--//products-->
		<jsp:include page="/footer.jsp"></jsp:include>

	</body>
</html>