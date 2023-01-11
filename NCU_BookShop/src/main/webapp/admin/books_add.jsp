<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>新增書本</title>
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
			<div class="add-title">
				<h3 class="add-book">
					<i class="bi bi-book-half"></i>
					新增書本
				</h3>
			</div>
			<div class="frame">
				<form class="form-control" action="/admin/books_add" method="post" enctype="multipart/form-data">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_name" name="name" required="required">
						<label for="input_name">書名</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_price" name="price" required="required" pattern="[1-9]+[0-9]*">
						<label for="input_price">價格</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_author" name="author" required="required">
						<label for="input_author">作者</label>
					</div>
					<div class="form-floating mb-3">
						<textarea class="form-control" style="height: 300px;" id="input_intro" name="intro" required="required" maxlength="300"></textarea>
						<label for="input_intro">介紹</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="input_stock" name="stock" required="required" pattern="0|[1-9]+[0-9]*">
						<label for="input_stock">庫存</label>
					</div>
					<div class="form-floating mb-3">
						<input type="file" class="form-control" id="input_file" name="cover" required="required" accept=".png, .jpg, .jpeg">
						<label for="input_file">封面照片(推薦尺寸: 225 * 300)</label>
					</div>
					<div class="form-floating mb-3">
						<select class="form-control" id="select_department" name="departmentid">
							<c:forEach items="${departmentList }" var="dep">
								<option value="${dep.id }">${dep.name }</option>
							</c:forEach>
						</select>
						<label for="select_department">科系類別</label>
					</div>
					<div class="mb-3">
						<button type="submit" class="btn btn-success">儲存</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>