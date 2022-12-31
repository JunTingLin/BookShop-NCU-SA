<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>科系類別編輯</title>
		<link rel="icon" href="/images/favicon.ico" type="image/x-icon" />
		<meta charset="utf-8"/>
		<link rel="stylesheet" href="css/bootstrap.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
	</head>
	<body>
		<jsp:include page="/admin/header.jsp"></jsp:include>
			<div class="container-fluid">
			<br><br>

			<form class="form-horizontal" action="/admin/department_edit" method="post">
				<input type="hidden" name="id" value="${param.id }">
				<div class="form-group">
					<label for="input_name" class="col-sm-1 control-label">科系名稱</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="input_name" name="name" value="${param.name }" required="required">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<button type="submit" class="btn btn-success">提交修改</button>
					</div>
				</div>
			</form>

			<span style="color:red;"></span>

		</div>
	</body>
</html>