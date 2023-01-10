<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>重設密碼</title>
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
					<i class="bi bi-shield-lock-fill"></i>
					重設密碼
				</h3>
			</div>
			<div class="frame-user">
				<form class="form-horizontal" action="/admin/user_reset" method="post">
					<input type="hidden" name="id" value="${param.id }">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="user_name" name="name" readonly="readonly" value="${param.username }">
						<label for="user_name">會員姓名</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="user_email" name="email" readonly="readonly" value="${param.email }">
						<label for="user_email">電子信箱</label>
					</div>
					<div class="form-floating mb-3">
						<input type="password" class="form-control" id="input_pwd" name="password" required="required" value="" pattern="[a-zA-Z0-9!@#$%^&*()_]{8,}">
						<label for="input_pwd">欲重設的密碼</label>
					</div>
					<div class="mb-3" style="margin-left: 600px;">
						<button type="submit" class="btn btn-success">重設密碼</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>