<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
	<title>註冊</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>
<body>

	<!--header-->
	<jsp:include page="/header.jsp">
		<jsp:param name="flag" value="10"></jsp:param>
	</jsp:include>

	<!--register-->
	<div class="register">
        <div>
            <c:if test="${!empty msg}">
                <div class="alert alert-info">${msg}</div>
            </c:if>
            <form action="/user_rigister" method="post">
                <div>
                    <h3 class="register-title">註冊</h3>
                    <div class="register-input">
                        <span class="register-text">■&ensp;帳號(user name) <label style="color:red;">*</label></span>
                        <input type="text" name="username" placeholder="請輸入帳號名稱" required="required">
                    </div>
                    <div class="register-input">
                        <span class="register-text">■&ensp;電子郵件(email) <label style="color:red;">*</label></span>
                        <input type="text" name="email" placeholder="請輸入電子郵件" required="required">
                    </div>
                    <div class="register-input">
                        <span class="register-text">■&ensp;密碼(password) <label style="color:red;">*</label></span>
                        <input type="password" name="password" placeholder="請輸入密碼" required="required">
                    </div>
                    <div class="register-input">
                        <span class="register-text">■&ensp;收貨人姓名(full name)</span>
                        <input type="text" name="name" placeholder="請輸入收貨人姓名">
                    </div>
                    <div class="register-input">
                        <span class="register-text">■&ensp;收貨人電話(phone)</span>
                        <input type="text" name="phone" placeholder="請輸入收貨人電話">
                    </div>
                    <div class="register-input">
                        <span class="register-text">■&ensp;收貨地址(address)</span>
                        <input type="text" name="address" placeholder="請輸入收貨地址">
                    </div>
                </div>
                <div class="register-btn">
                    <input type="submit" value="提交">
                </div>
            </form>
				<c:choose>
   					<c:when test="${!empty msg}">
						<div class="register-ad">
							<h3 class="register-ad-text">加入會員，隨時獲取新書資訊！</h3>
							<img src="images/ad-pic.jpg" alt="advertisement" width="55%">
						</div>
					</c:when>
				<c:otherwise>
					<div class="register-ad-empty">
						<h3 class="register-ad-empty-text">加入會員，隨時獲取新書資訊！</h3>
						<img src="images/ad-pic.jpg" alt="advertisement" width="55%">
					</div>
				</c:otherwise>
				</c:choose>
            </div>
        </div>
    </div>

	




	<!--footer-->
	<jsp:include page="/footer.jsp"></jsp:include>

	
</body>
</html>