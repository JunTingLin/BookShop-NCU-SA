<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
	<head>
		<title>編輯商品</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
	</head>
	<body>
		<jsp:include page="/admin/header.jsp"></jsp:include>

		<div class="container-fluid">
			<br><br>
			<form class="form-horizontal" action="/admin/goods_edit" method="post" enctype="multipart/form-data">
				<input type="hidden" name="id" value="${g.id }"/>
				<input type="hidden" name="cover" value="${g.cover }"/>
				<input type="hidden" name="pageNo" value="${param.pageNo }"/>
				<input type="hidden" name="type" value="${param.type }"/>
				<div class="form-group">
					<label for="input_name" class="col-sm-1 control-label">書名</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="input_name" name="name" value="${g.name }" required="required">
					</div>
				</div>
				<div class="form-group">
					<label for="input_name" class="col-sm-1 control-label">價格</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="input_name" name="price" value="${g.price }">
					</div>
				</div>
				<div class="form-group">
					<label for="input_name" class="col-sm-1 control-label">介紹</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="input_name" name="intro" value="${g.intro }">
					</div>
				</div>
				<div class="form-group">
					<label for="input_name" class="col-sm-1 control-label">庫存</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="input_name" name="stock" value="${g.stock }">
					</div>
				</div>
				<div class="form-group">
					<label for="input_file" class="col-sm-1 control-label">封面照片</label>
					<div class="col-sm-6"><img src="${pageContext.request.contextPath }${g.cover }" width="100" height="100"/>
						<input type="file" name="cover"  id="input_file">推薦尺寸: 500 * 500
					</div>
				</div>
				<div class="form-group">
					<label for="select_topic" class="col-sm-1 control-label">科系類別</label>
					<div class="col-sm-6">
						<select class="form-control" id="select_topic" name="typeid">

							<c:forEach items="${typeList }" var="t">
								<option <c:if test="${t.id==g.type.id }">selected="selected"</c:if> value="${t.id }">${t.name }</option>
							</c:forEach>

						</select>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<button type="submit" class="btn btn-success">儲存修改結果</button>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>