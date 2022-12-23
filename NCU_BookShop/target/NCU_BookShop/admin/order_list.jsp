<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<title>訂單列表</title>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	




	<jsp:include page="header.jsp"></jsp:include>

	<br>

	<ul role="tablist" class="nav nav-tabs">
		<li <c:if test="${status==0 }">class="active"</c:if> role="presentation"><a href="/admin/order_list">全部訂單</a></li>
		<li <c:if test="${status==1 }">class="active"</c:if> role="presentation"><a href="/admin/order_list?status=1">未付款</a></li>
		<li <c:if test="${status==2 }">class="active"</c:if> role="presentation"><a href="/admin/order_list?status=2">已付款</a></li>
		<li <c:if test="${status==3 }">class="active"</c:if> role="presentation"><a href="/admin/order_list?status=3">運送中</a></li>
		<li <c:if test="${status==4 }">class="active"</c:if> role="presentation"><a href="/admin/order_list?status=4">已完成</a></li>
	</ul>

	<br>
	
	<table class="table table-bordered table-hover">

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

		<c:forEach items="${p.list }" var="order">
			<tr>
				<td><p>${order.id }</p></td>
				<td><p>${order.total }</p></td>
				<td>
					<c:forEach items="${order.itemList }" var="item">
						<p>${item.goodsName }(${item.price }) x ${item.amount}</p>
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
	<jsp:include page="/page.jsp">
		<jsp:param value="/admin/order_list" name="url"/>
		<jsp:param value="&status=${status}" name="param"/>
	</jsp:include>
<br>
</div>
</body>
</html>