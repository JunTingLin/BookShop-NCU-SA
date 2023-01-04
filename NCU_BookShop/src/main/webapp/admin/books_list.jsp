<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>書本列表</title>
		<meta charset="utf-8"/>
		<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
		<link rel="stylesheet" href="css/bootstrap.css"/>
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
			<div class="list-title">
				<h3 class="book-list">
					<i class="bi bi-bookmark-plus-fill"></i>
					所有書本
				</h3>

				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item" role="presentation">
						<button class="nav-link <c:if test="${type==0}"> active</c:if>" id="all_t" data-bs-toggle="tab" data-bs-target="#all_t" type="button" role="tab" aria-controls="all_t" aria-selected="true">
							<a href="/admin/books_list">全部書本</a>
						</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link <c:if test="${type==1}"> active</c:if>" id="t1" data-bs-toggle="tab" data-bs-target="#t1" type="button" role="tab" aria-controls="t1" aria-selected="false">
							<a href="/admin/books_list?type=1">推薦橫幅</a>
						</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link <c:if test="${type==2}"> active</c:if>" id="t2" data-bs-toggle="tab" data-bs-target="#t2" type="button" role="tab" aria-controls="t2" aria-selected="false">
							<a href="/admin/books_list?type=2">新書上架</a>
						</button>
					</li>
					&ensp;&ensp;<div class="text-right"><a class="btn btn-warning" href="/admin/books_add.jsp">新增書本</a></div>
				</ul>

				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade <c:if test="${status==0}"> show active</c:if>"  role="tabpanel" aria-labelledby="all_t">...</div>
					<div class="tab-pane fade <c:if test="${status==1}"> show active</c:if>"  role="tabpanel" aria-labelledby="t1">...</div>
					<div class="tab-pane fade <c:if test="${status==2}"> show active</c:if>"  role="tabpanel" aria-labelledby="t2">...</div>
				</div>
			</div>

			<br>

			<div class="frame-list table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<thead class="table-primary">
						<tr>
							<th style="width: 10px;padding-left: 13px;">ID</th>
							<th style="width: 150px;padding-left: 60px;">圖片</th>
							<th style="width: 30px;padding-left: 40px;">書名</th>
							<th style="width: 30px;padding-left: 35px;">作者</th>
							<th style="width: 300px;padding-left: 125px;">介紹</th>
							<th style="width: 30px;">價格</th>
							<th style="width: 90px;padding-left: 10px;">科系類別</th>
							<th style="width: 250px; padding-left: 100px;">操作</th>
						</tr>
					</thead>
					<c:forEach items="${ list }" var="b">
						<tr>
							<td><p>${b.id}</p></td>
							<td><p><img src="${b.cover}" width="135px" height="180px"></p></td>
							<td><p>${b.name}</p></td>
							<td><p>${b.author}</p></td>
							<td><p>${b.intro}</p></td>
							<td><p>${b.price}</p></td>
							<td><p>${b.department.name}</p></td>
							<td>
								<p>
									<c:choose>
										<c:when test="${b.isScroll}">
											<a class="btn btn-info" href="/admin/books_recommend?id=${b.id}&method=remove&typeTarget=1&type=${type}">移出橫幅</a>
										</c:when>
										<c:otherwise>
											<a class="btn btn-primary" href="/admin/books_recommend?id=${b.id}&method=add&typeTarget=1&type=${type}">加入橫幅</a>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${b.isNew}">
											<a class="btn btn-info" href="/admin/books_recommend?id=${b.id}&method=remove&typeTarget=2&type=${type}">移出新書</a>
										</c:when>
										<c:otherwise>
											<a class="btn btn-primary" href="/admin/books_recommend?id=${b.id}&method=add&typeTarget=2&type=${type}">加入新書</a>
										</c:otherwise>
									</c:choose>

								</p>
								<a class="btn btn-warning" href="/admin/books_editshow?id=${b.id}&type=${type}">修改</a>
								<a class="btn btn-danger" href="/admin/books_delete?id=${b.id}&type=${type}">刪除</a>
								<a class="btn btn-success" href="/books_detail?id=${b.id}" target="_blank">查看詳情</a>
							</td>
						</tr>
					</c:forEach>


				</table>
			</div>
			<br>
		</div>
	</body>
</html>