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
<<<<<<< HEAD
=======
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022
	</head>
	<body>

		<jsp:include page="/admin/header.jsp">
			<jsp:param name="flag" value="3"></jsp:param>
		</jsp:include>
<<<<<<< HEAD
		<div class="container-fluid">
			<br>

			<div>
				<form class="form-inline" method="post" action="/admin/department_add">
					<input type="text" class="form-control" id="input_name" name="name" placeholder="輸入科系名稱" required="required" style="width: 500px">
					<input type="submit" class="btn btn-warning" value="新增科系類別"/>
				</form>
			</div>
			<br/>
			<c:if test="${!empty msg }">
				<div class="alert alert-success">${msg }</div>
			</c:if>
			<c:if test="${!empty failMsg }">
				<div class="alert alert-danger">${failMsg }</div>
			</c:if>
			<br>

			<table class="table table-bordered table-hover">

				<tr>
					<th width="5%">ID</th>
					<th width="10%">名稱</th>
					<th width="10%">操作</th>
				</tr>

				<c:forEach items="${list }" var="dep">
					<tr>
						<td><p>${dep.id }</p></td>
						<td><p>${dep.name }</p></td>
						<td>
							<a class="btn btn-primary" href="/admin/department_edit.jsp?id=${dep.id }&name=${dep.encodeName }">修改</a>
							<a class="btn btn-danger" href="/admin/department_delete?id=${dep.id }">刪除</a>
						</td>
					</tr>
				</c:forEach>


			</table>

=======

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
>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022
		</div>
	</body>
</html>