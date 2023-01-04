<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<title>用戶登入</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>

	
	<!--header-->
	<jsp:include page="header.jsp">
		<jsp:param name="flag" value="9"></jsp:param>
	</jsp:include>

	<!--login-->
	<div class="login">
		<div>
			<c:if test="${!empty msg}">
				<div class="alert alert-success">${msg}</div>
			</c:if>
			<c:if test="${!empty failMsg }">
				<div class="alert alert-danger">${failMsg}</div>
			</c:if>
			
            <form action="/user_login" method="post">
				<div>
					<h3 class="login-title"><i class="bi bi-box-arrow-in-right"></i> 帳號登入</h3>
						<div class="login-input">
							<span class="login-text">&ensp;帳號/電子郵件</span>
							<input type="text" name="ue" placeholder="請輸入帳號/電子郵件" required="required">
						</div>
						<div class="login-input">
							<span class="login-text">&ensp;密碼</span>
							<input type="password" name="password" placeholder="請輸入密碼" required="required">
						</div>
					</div>
					<div class="login-btn">
						<input type="submit" value="登入">
					</div>
				</form>
			</div>
	</div>


	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--//footer-->

	
</body>
</html>