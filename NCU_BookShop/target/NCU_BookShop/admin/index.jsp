<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
	<head>
		<title>後台管理</title>
		<meta http-equiv="refresh" content="1;url=./order_list">
		<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
		<link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
	</head>
	<body>

			<jsp:include page="header.jsp"></jsp:include>

				<br><br>
			<div style="margin-left: 300px; width: 600px;">
				<div class="alert alert-success" role="alert">管理員 ${user.username}，歡迎回來!</div>

			</div>
	</body>
</html>