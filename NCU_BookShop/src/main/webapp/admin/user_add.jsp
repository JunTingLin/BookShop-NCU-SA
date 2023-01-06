<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>新增用戶</title>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container-fluid">



	<jsp:include page="/admin/header.jsp">
		<jsp:param name="flag" value="4"></jsp:param>
	</jsp:include>
	<c:if test="${!empty failMsg }">
		<div class="alert alert-danger">${failMsg }</div>
	</c:if>
	<br><br>
	<form class="form-horizontal" action="/admin/user_add" method="post">
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">用戶名字</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_username" name="username" required="required" value="${u.username }" />
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">電子信箱</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_email" name="email" required="required" value="${u.email }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">密碼</label>
			<div class="col-sm-6">
				<input type="password" class="form-control" id="input_password" name="password" required="required" value="${u.password }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">收件人</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="name" value="${u.name }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">電話</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_phone" name="phone" value="${u.phone }" />
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">地址</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_address" name="address" value="${u.address }"/>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-1 col-sm-10">
				<button type="submit" class="btn btn-success">儲存</button>
			</div>
		</div>
	</form>

	<span style="color:red;"></span>
</div>
</body>
</html>