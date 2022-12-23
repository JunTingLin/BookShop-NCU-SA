<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
	<title>商品詳情</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layer/layer.js"></script>
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
			<div class="col-4 single-grid simpleCart_shelfItem" >
				<img src="${g.cover}" data-imagezoom="true" class="img-responsive">
			</div>
			<div class="col-4 single-grid simpleCart_shelfItem">
				<h3>${g.name}</h3>
				<div class="tag">
					<p>分類 : <a href="goods_list?typeid=${g.type.id}">${g.type.name}</a></p>
				</div>
				<p>${g.intro}</p>
				<div class="view-info">
					<div class="prices">
						<h5 class="item_price">NT$ ${g.price}</h5>
					</div>
					<div>
						<a href="javascript:;" class="item_add" onclick="buy(${g.id})">加入購物車</a>
					</div>
				</div>
			</div>
			<div class="col-4 single-grid1">
				<ul>
					<li><a  href="/goods_list">全部科系類別</a></li>

					<c:forEach items="${typeList}" var="t">
						<li><a href="/goods_list?typeid=${t.id}">${t.name}</a></li>
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