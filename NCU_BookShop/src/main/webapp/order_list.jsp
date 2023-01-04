<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<<<<<<< HEAD
<head>
	<title>我的訂單</title>
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
	<jsp:include page="header.jsp">
		<jsp:param name="flag" value="5"></jsp:param>
	</jsp:include>
	<!--//header-->

	
	<!--cart-items-->
	<div class="cart-items">
		<div class="container">
		
		
		
			<h2>我的訂單</h2>
			
				<table class="table table-bordered table-hover">

				<tr>
					<th width="10%">ID</th>
					<th width="10%">總價</th>
					<th width="20%">書本詳情</th>
					<th width="30%">收貨訊息</th>
					<th width="10%">訂單狀態</th>
					<th width="10%">付款方式</th>
					<th width="10%">下單時間</th>
				</tr>

					<c:forEach items="${orderList }" var="order">

=======
	<head>
		<title>我的訂單</title>
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
		<jsp:include page="header.jsp">
			<jsp:param name="flag" value="5"></jsp:param>
		</jsp:include>
		<!--//header-->


		<!--cart-items-->
		<div class="container-fluid">
			<br><br>
			<div>
				<h3 class="order-list">
					<i class="bi bi-list-check"></i>
					我的訂單
				</h3>
			</div>

			<br>
			<div class="frame-order">
				<table class="table table-striped table-bordered table-hover">
					<thead class="table-primary">
					<tr>
						<th style="width: 10px;padding-left: 13px;">ID</th>
						<th style="width: 70px;padding-left: 15px;">總金額</th>
						<th style="width: 250px;padding-left: 105px;">訂單詳情</th>
						<th style="width: 90px;padding-left: 25px;">收貨訊息</th>
						<th style="width: 80px;padding-left: 13px;">訂單狀態</th>
						<th style="width: 90px;padding-left: 13px;">付款方式</th>
						<th style="width: 80px;padding-left: 13px;">下單會員</th>
					</tr>
					</thead>
					<c:forEach items="${orderList }" var="order">
>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022
						<tr>
							<td><p>${order.id }</p></td>
							<td><p>${order.total }</p></td>
							<td>
								<c:forEach items="${order.itemList }" var="item">
<<<<<<< HEAD
									<p>${item.booksName }(${item.price }) x ${item.amount }</p>
								</c:forEach>

=======
									<p>${item.booksName }(${item.price }) x ${item.amount}</p>
								</c:forEach>
>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022
							</td>
							<td>
								<p>${order.name }</p>
								<p>${order.phone }</p>
								<p>${order.address }</p>
							</td>
							<td>
								<p>
									<c:if test="${order.status==1 }"><span style="color:red;">未付款</span></c:if>
									<c:if test="${order.status==2 }"><span style="color:red;">已付款</span></c:if>
									<c:if test="${order.status==3 }"><span style="color:green;">已發貨</span></c:if>
									<c:if test="${order.status==4 }"><span style="color:black;">已完成</span></c:if>
<<<<<<< HEAD


=======
>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022
								</p>
							</td>
							<td>
								<p>

<<<<<<< HEAD
									<c:if test="${order.paytype==1 }">信用卡付款</c:if>
=======
									<c:if test="${order.paytype==1 }">信用卡支付</c:if>
>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022
									<c:if test="${order.paytype==2 }">銀行轉帳</c:if>
									<c:if test="${order.paytype==3 }">貨到付款</c:if>

								</p>
							</td>
							<td><p>${order.datetime }</p></td>
						</tr>
<<<<<<< HEAD

					</c:forEach>



				</table>
			
			
			
			
		</div>
	</div>
	<!--//cart-items-->	
	
	




	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--//footer-->


</body>
=======
					</c:forEach>
				</table>
			</div>
		</div>

		<!--footer-->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--//footer-->
	</body>
>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022
</html>