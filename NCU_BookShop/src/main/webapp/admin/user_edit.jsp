<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>用戶修改</title>
		<meta charset="utf-8"/>
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
			<br><br>
			<div class="edit-title">
				<h3 class="edit-user">
					<i class="bi bi-pencil-square"></i>
					會員資料修改
				</h3>
			</div>
			<div class="frame-user">
				<form class="form-horizontal" action="/admin/user_edit" method="post">
					<input type="hidden" name="id" value="${u.id }">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="user_name" name="name" readonly="readonly" value="${u.username }" pattern="[^0-9!@#$%^&*()_]*">
						<label for="user_name">會員姓名</label>
					</div>
					<div class="form-floating mb-3">
						<input type="email" class="form-control" id="user_email" name="email" readonly="readonly" value="${u.email }">
						<label for="user_email">電子信箱</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="receiver" name="receiver"  value="${u.name }" pattern="[^0-9!@#$%^&*()_]*">
						<label for="receiver">收件人姓名</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="user_phone" name="phone"  value="${u.phone }" pattern="09[0-9]{8}">
						<label for="user_phone">收件人電話</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="user_address" name="address"  value="${u.address }" pattern="[^!@#$%^&*()_]*">
						<label for="user_phone">收件人地址</label>
					</div>
					<div class="mb-3" style="margin-left: 575px;">
						<button type="submit" class="btn btn-success">儲存修改資料</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>