<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
	<head>
		<title>編輯書本</title>
		<meta charset="utf-8" />
		<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	</head>
	<body>
		<jsp:include page="/admin/header.jsp">
			<jsp:param name="flag" value="2"></jsp:param>
		</jsp:include>

		<div class="container-fluid">
			<br><br>
			<div class="edit-title">
				<h3 class="edit-book">
					<i class="bi bi-pencil-square"></i>
					編輯書本
				</h3>
			</div>
			<div class="frame">
				<form class="form-control" action="/admin/books_edit" method="post" enctype="multipart/form-data">
					<input type="hidden" name="id" value="${b.id }"/>
					<input type="hidden" name="cover" value="${b.cover }"/>
					<input type="hidden" name="type" value="${param.type }"/>
					<%--<C:out> 測試 param 內容 ${param}</C:out>--%>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_name" name="name" required="required" value="${b.name}">
						<label for="input_name">書名</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_price" name="price" required="required" pattern="[1-9]+[0-9]*" value="${b.price}">
						<label for="input_price">價格</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_author" name="author" required="required" value="${b.author}">
						<label for="input_author">作者</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_intro" name="intro" required="required" value="${b.intro}">
						<label for="input_intro">介紹</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_stock" name="stock" required="required" pattern="[1-9]+[0-9]*" value="${b.stock}">
						<label for="input_stock">庫存</label>
					</div>
					<div class="form-floating mb-3" style="display: inline-block">
						<input type="file" class="form-control" id="input_file" name="cover" accept=".png, .jpg, .jpeg" value="${b.cover }">
						<label for="input_file">右圖為原封面圖(推薦尺寸:225*300)無更動則無需選擇</label>
					</div>
					<img class="edit_img" src="${pageContext.request.contextPath }${b.cover }" width="135" height="180"/>
					<div class="form-floating mb-3">
						<select class="form-control" id="select_department" name="departmentid">
							<c:forEach items="${departmentList }" var="dep">
								<option <c:if test="${dep.id==b.department.id }">selected="selected"</c:if> value="${dep.id }">${dep.name }</option>
							</c:forEach>
						</select>
						<label for="select_department">科系類別</label>
					</div>
					<div class="mb-3" style="margin-left: 830px;">
						<button type="submit" class="btn btn-success">儲存修改結果</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>