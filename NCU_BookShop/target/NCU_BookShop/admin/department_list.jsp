<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>科系列表</title>
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

			<div class="dep-title">
				<h3 class="dep-list">
					<i class="bi bi-bank"></i>
					所有科系
				</h3>

				<div class="frame-dep">
					<form class="form-inline" method="post" action="/admin/department_add">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="input_name" name="name" required="required">
							<label for="input_name">輸入科系名稱</label>
						</div>
						<input type="submit" class="btn btn-warning" value="新增科系類別"/>
					</form>
				</div>
			</div>
			<div class="frame-dep table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<thead class="table-primary">
						<tr>
							<th style="width: 10px;">ID</th>
							<th style="width: 150px;">科系名稱</th>
							<th style="width: 250px;">操作</th>
						</tr>
					</thead>

					<c:forEach items="${list }" var="dep">
						<tr>
							<td><p>${dep.id }</p></td>
							<td><p>${dep.name }</p></td>
							<td>
								<a class="btn btn-warning" href="/admin/department_edit.jsp?id=${dep.id }&name=${dep.encodeName }">修改</a>
								<a class="btn btn-danger" href="/admin/department_delete?id=${dep.id }">刪除</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</body>
</html>