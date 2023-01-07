<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>個人中心</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>

	<jsp:include page="/header.jsp">
		<jsp:param value="4" name="flag"/>
	</jsp:include>
	<c:if test="${empty user}"><%response.sendRedirect("/index");%></c:if>
	<!--account-->
	<div class="center">
		<div>
			<c:if test="${!empty msg }">
				<div class="alert alert-success">${msg }</div>
			</c:if>
			<c:if test="${!empty failMsg }">
				<div class="alert alert-danger">${failMsg }</div>
			</c:if>
				
			<div>
				<h3 class="center-title"><i class="bi bi-person-fill"></i> 個人中心</h3>
					<form action="/user_changeaddress" method="post">
						<h4 class="center-title-1">收貨訊息</h4>
						<div class="center-input">
							<span class="center-text">收貨人<label></label></span>
							<input type="text" name="name" value="${user.name }" placeholder="請輸入收貨人" pattern="[^0-9!@#$%^&*()_]*">
						</div>
						<div class="center-input">
							<span class="center-text">聯絡電話</span>
							<input type="text" name="phone" value="${user.phone }" placeholder="請輸入連絡電話" pattern="09[0-9]{8}">
						</div>
						<div class="center-input">
							<span class="center-text">收貨地址</span>
							<input type="text" name="address" value="${user.address }" placeholder="請輸入地址" pattern="[^!@#$%^&*()_]*">
						</div>
						<div class="center-btn text-center">
						   <input type="submit" value="更新資料">
						</div>	
						
					</form>
					<hr>
					<form action="/user_changepwd" method="post">
						<h4 class="center-title-2">更換密碼</h4>
						<div class="center-input">
							<span class="center-text">原密碼</span>
							<input type="password" name="password" placeholder="請輸入原密碼">
						</div>
						<div class="center-input">
							<span class="center-text">新密碼</span>
							<input type="password" name="newPassword" placeholder="請輸入新密碼" pattern="[a-zA-Z0-9!@#$%^&*()_]{8,}" >
						</div>
						<div class="pwd-btn">
						   <input type="submit" value="修改">
						</div>	
					</form>
			</div>
				
		</div>
	</div>

	<jsp:include page="/footer.jsp"></jsp:include>

	
</body>
</html>