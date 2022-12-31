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
	</head>
	<body>

		<jsp:include page="/admin/header.jsp">
			<jsp:param name="flag" value="3"></jsp:param>
		</jsp:include>
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

		</div>
	</body>
</html>