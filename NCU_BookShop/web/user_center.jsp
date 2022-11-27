<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>個人中心</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>
<body>

	<jsp:include page="/header.jsp">
		<jsp:param value="4" name="flag"/>
	</jsp:include>
	<c:if test="${empty user}"><%response.sendRedirect("/index");%></c:if>
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>
				<c:if test="${!empty failMsg }">
					<div class="alert alert-danger">${failMsg }</div>
				</c:if>
				
					<div class="register-top-grid">
						<h3>個人中心</h3>
						<form action="/user_changeaddress" method="post">
						<!-- 收货信息 start -->
						<h4>收貨訊息</h4>
						<div class="input">
							<span>收貨人<label></label></span>
							<input type="text" name="name" value="${user.name }" placeholder="情輸入收貨人">
						</div>
						<div class="input">
							<span>聯絡電話</span>
							<input type="text" name="phone" value="${user.phone }" placeholder="請输入聯絡電話">
						</div>
						<div class="input">
							<span>收貨地址</span>
							<input type="text" name="address" value="${user.address }" placeholder="請输入收貨地址">
						</div>
						<div class="register-but text-center">
						   <input type="submit" value="提交">
						</div>	
						<!-- 收货信息 end -->
						</form>
						<hr>
						<form action="/user_changepwd" method="post">
						<h4>安全中心</h4>
						<div class="input">
							<span>原密碼</span>
							<input type="text" name="password" placeholder="請输入原密碼">
						</div>
						<div class="input">
							<span>新密碼</span>
							<input type="text" name="newPassword" placeholder="請输入新密碼">
						</div>
						<div class="clearfix"> </div>
						<div class="register-but text-center">
						   <input type="submit" value="提交">
						</div>	
						</form>
					</div>
				
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	


	<jsp:include page="/footer.jsp"></jsp:include>

	
</body>
</html>