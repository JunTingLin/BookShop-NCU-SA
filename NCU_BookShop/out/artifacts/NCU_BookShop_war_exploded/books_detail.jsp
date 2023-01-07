<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
	<head>
		<title>${b.name}詳情</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
		<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
		<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/cart.js"></script>
	</head>
	<body>
	<!--header-->
	<jsp:include page="/header.jsp"></jsp:include>
	<!--//header-->

	<!--//single-page-->
	<div class="single">
		<div class="container">
			<div class="row">
				<div class="col-4 single-grid" >
					<img src="${b.cover}" data-imagezoom="true" class="img-responsive">
				</div>
				<div class="col-4 single-grid">
					<h3>${b.name}</h3>
					<div class="tag">
						<p>分類 : <a href="books_list?departmentid=${b.department.id}">${b.department.name}</a></p>
					</div>
					<p>${b.intro}</p>
					<div class="view-info">
						<div class="prices">
							<h5 class="item_price">NT$ ${b.price}</h5>
						</div>
						<div>
							<a href="javascript:;" class="item_add" onclick="buy(${b.id})">加入購物車</a>
						</div>
					</div>
				</div>
				<div class="col-4 single-grid1">
					<ul>
						<li><a  href="/books_list">全部科系類別</a></li>

						<c:forEach items="${departmentList}" var="dep">
							<li><a href="/books_list?departmentid=${dep.id}">${dep.name}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!--footer-->
	<jsp:include page="/footer.jsp"></jsp:include>
	<!--//footer-->


	</body>
</html>