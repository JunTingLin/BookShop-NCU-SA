<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>新增用戶</title>
		<meta charset="utf-8" />
		<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
		<link rel="stylesheet" href="css/bootstrap.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	</head>

	<body>
		<jsp:include page="/admin/header.jsp">
			<jsp:param name="flag" value="4"></jsp:param>
		</jsp:include>
		<div class="container-fluid">
			<c:if test="${!empty failMsg }">
				<div class="alert alert-danger">${failMsg }</div>
			</c:if>
			<br><br>
			<div class="user-title">
				<h3 class="edit-user">
					<i class="bi bi-person-plus-fill"></i>
					新增會員
				</h3>
			</div>
			<div class="frame-user">
				<form class="form-horizontal" action="/admin/user_add" method="post">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_username" name="username" required="required" value="${u.username }">
						<label for="input_username">帳號</label>
					</div>
					<div class="form-floating mb-3">
						<input type="email" class="form-control" id="email" name="email" required="required" value="${u.email }">
						<label for="email">電子信箱</label>
					</div>
					<div class="form-floating mb-3">
						<input type="password" class="form-control" id="pwd" name="password" required="required" value="${u.password }" pattern="[a-zA-Z0-9!@#$%^&*()_]{8,}">
						<label for="email">密碼</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_name" name="name"  value="${u.name }" pattern="[^0-9!@#$%^&*()_]*">
						<label for="input_name">收件人姓名</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="phone" name="phone"  value="${u.phone }" pattern="09[0-9]{8}">
						<label for="phone">電話</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="address" name="address"  value="${u.address }" pattern="[^!@#$%^&*()_]*">
						<label for="address">地址</label>
					</div>
					<div class="mb-3" style="margin-left: 610px;">
						<button type="submit" class="btn btn-success">新增會員</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>