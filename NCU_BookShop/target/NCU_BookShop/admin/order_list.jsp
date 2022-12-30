<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
	<head>
		<title>訂單列表</title>
		<link rel="stylesheet" href="css/bootstrap.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
	</head>
	<body>
		<jsp:include page="header.jsp">
			<jsp:param name="flag" value="1"></jsp:param>
		</jsp:include>

		<div style="margin-left: 50px; margin-right: 50px;">
		<div class="container-fluid">
			<br>
			<ul class="nav nav-tabs" role="tablist">
				<li class="nav-item" role="presentation">
					<button class="nav-link <c:if test="${status==0}"> active</c:if>" id="all_o" data-bs-toggle="tab" data-bs-target="#all_o" type="button" role="tab" aria-controls="all_o" aria-selected="true">
						<a href="/admin/order_list">全部訂單</a>
					</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link <c:if test="${status==1}"> active</c:if>" id="sta_1" data-bs-toggle="tab" data-bs-target="#sta_1" type="button" role="tab" aria-controls="sta_1" aria-selected="false">
						<a href="/admin/order_list?status=1">未付款</a>
					</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link <c:if test="${status==2}"> active</c:if>" id="sta_2" data-bs-toggle="tab" data-bs-target="#sta_2" type="button" role="tab" aria-controls="sta_2" aria-selected="false">
						<a href="/admin/order_list?status=2">已付款</a>
					</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link <c:if test="${status==3}"> active</c:if>" id="sta_3" data-bs-toggle="tab" data-bs-target="#sta_3" type="button" role="tab" aria-controls="sta_3" aria-selected="false">
						<a href="/admin/order_list?status=3">已出貨</a>
					</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link <c:if test="${status==4}"> active</c:if>" id="sta_4" data-bs-toggle="tab" data-bs-target="#sta_4" type="button" role="tab" aria-controls="sta_4" aria-selected="false">
						<a href="/admin/order_list?status=4">已完成</a>
					</button>
				</li>
			</ul>

			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade <c:if test="${status==0}"> show active</c:if>" id="all_o" role="tabpanel" aria-labelledby="all_o">...</div>
				<div class="tab-pane fade <c:if test="${status==1}"> show active</c:if>" id="sta_1" role="tabpanel" aria-labelledby="sta_1">...</div>
				<div class="tab-pane fade <c:if test="${status==2}"> show active</c:if>" id="sta_2" role="tabpanel" aria-labelledby="sta_2">...</div>
				<div class="tab-pane fade <c:if test="${status==3}"> show active</c:if>" id="sta_3" role="tabpanel" aria-labelledby="sta_3">...</div>
				<div class="tab-pane fade <c:if test="${status==4}"> show active</c:if>" id="sta_4" role="tabpanel" aria-labelledby="sta_4">...</div>
			</div>

			<br>

			<table class="table-primary">

			<tr>
				<th width="5%">ID</th>
				<th width="5%">總金額</th>
				<th width="15%">商品詳情</th>
				<th width="20%">收貨訊息</th>
				<th width="10%">訂單狀態</th>
				<th width="10%">付款方式</th>
				<th width="10%">下單用戶</th>
				<th width="10%">下單時間</th>
				<th width="10%">操作</th>
			</tr>

				<c:forEach items="${ list }" var="order">
					<tr>
						<td><p>${order.id }</p></td>
						<td><p>${order.total }</p></td>
						<td>
							<c:forEach items="${order.itemList }" var="item">
								<p>${item.booksName }(${item.price }) x ${item.amount}</p>
							</c:forEach>
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

							</p>
						</td>
						<td>
							<p>

								<c:if test="${order.paytype==1 }">信用卡支付</c:if>
								<c:if test="${order.paytype==2 }">銀行轉帳</c:if>
								<c:if test="${order.paytype==3 }">貨到付款</c:if>

							</p>
						</td>
						<td><p>${order.user.username }</p></td>
						<td><p>${order.datetime }</p></td>
						<td>
							<c:if test="${order.status==2 }">
								<a class="btn btn-success" href="/admin/order_status?id=${order.id }&status=3">發貨</a>
							</c:if>
							<c:if test="${order.status==3 }">
								<a class="btn btn-warning" href="/admin/order_status?id=${order.id }&status=4">完成</a>
							</c:if>
						</td>
					</tr>
				</c:forEach>


		</table>
			
		<br>
		</div>
		</div>
	</body>
</html>