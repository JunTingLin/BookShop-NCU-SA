<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>新增商品</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
	</head>
	<body>
		<jsp:include page="/admin/header.jsp"></jsp:include>
		<div class="container-fluid">
			<br><br>
			<form class="form-horizontal" action="/admin/goods_add" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="input_name" class="col-sm-1 control-label">書名</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="input_name" name="name"  required="required">
					</div>
				</div>
				<div class="form-group">
					<label for="input_name" class="col-sm-1 control-label">價格</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="input_name" name="price" >
					</div>
				</div>
				<div class="form-group">
					<label for="input_name" class="col-sm-1 control-label">作者</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="input_name" name="author" >
					</div>
				</div>
				<div class="form-group">
					<label for="input_name" class="col-sm-1 control-label">介紹</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="input_name" name="intro" >
					</div>
				</div>
				<div class="form-group">
					<label for="input_name" class="col-sm-1 control-label">庫存</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="input_name" name="stock" >
					</div>
				</div>
				<div class="form-group">
					<label for="input_file" class="col-sm-1 control-label">封面照片</label>
					<div class="col-sm-6">
						<input type="file" name="cover"  id="input_file" required="required">推薦尺寸: 500 * 500
					</div>
				</div>
				<div class="form-group">
					<label for="select_topic" class="col-sm-1 control-label">科系類別</label>
					<div class="col-sm-6">
						<select class="form-control" id="select_topic" name="typeid">

							<c:forEach items="${typeList }" var="t">
								<option value="${t.id }">${t.name }</option>
							</c:forEach>


						</select>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<button type="submit" class="btn btn-success">儲存</button>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>