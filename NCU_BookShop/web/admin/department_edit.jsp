<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>科系類別編輯</title>
		<meta charset="utf-8"/>
		<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
		<link rel="stylesheet" href="css/bootstrap.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	</head>
	<body>
		<jsp:include page="/admin/header.jsp">
			<jsp:param name="flag" value="3"></jsp:param>
		</jsp:include>
		<div class="container-fluid">
			<br><br>
			<div class="edit-title">
				<h3 class="edit-dep">
					<i class="bi bi-pencil-square"></i>
					編輯科系
				</h3>
			</div>
			<div class="frame-dep">
				<form class="form-horizontal" action="/admin/department_edit" method="post">
					<input type="hidden" name="id" value="${param.id }">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_name" name="name" required="required" value="${param.name }">
						<label for="input_name">科系名稱</label>
					</div>
					<div class="mb-3" style="margin-left: 600px;">
						<button type="submit" class="btn btn-success">提交修改</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>