<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>商品列表</title>
		<meta charset="utf-8"/>
		<link rel="stylesheet" href="css/bootstrap.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
	</head>
	<body>

		<jsp:include page="/admin/header.jsp">
			<jsp:param name="flag" value="2"></jsp:param>
		</jsp:include>

		<div class="container-fluid">
			<br>
			<ul class="nav nav-tabs" role="tablist">
				<li class="nav-item" role="presentation">
					<button class="nav-link <c:if test="${type==0}"> active</c:if>" id="all_t" data-bs-toggle="tab" data-bs-target="#all_t" type="button" role="tab" aria-controls="all_t" aria-selected="true">
						<a href="/admin/books_list">全部商品</a>
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
			</ul>

			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade <c:if test="${status==0}"> show active</c:if>" id="all_t" role="tabpanel" aria-labelledby="all_t">...</div>
				<div class="tab-pane fade <c:if test="${status==1}"> show active</c:if>" id="t1" role="tabpanel" aria-labelledby="t1">...</div>
				<div class="tab-pane fade <c:if test="${status==2}"> show active</c:if>" id="t2" role="tabpanel" aria-labelledby="t2">...</div>
			</div>
			<div class="text-right"><a class="btn btn-warning" href="/admin/books_add.jsp">新增商品</a></div>

			<br>
			<br>

			<table class="table table-bordered table-hover">

				<tr>
					<th width="5%">ID</th>
					<th width="10%">圖片</th>
					<th width="10%">書名</th>
					<th width="20%">介紹</th>
					<th width="10%">價格</th>

					<th width="10%">科系類別</th>
					<th width="25%">操作</th>
				</tr>

				<c:forEach items="${p.list }" var="b">
					<tr>
						<td><p>${b.id }</p></td>
						<td><p><a href="/books_detail?id=${b.id}" target="_blank"><img src="${b.cover}" width="100px" height="100px"></a></p></td>
						<td><p><a href="/books_detail?id=${b.id}" target="_blank">${b.name}</a></p></td>
						<td><p>${b.intro}</p></td>
						<td><p>${b.price}</p></td>
						<td><p>${b.type.name}</p></td>
						<td>
							<p>
								<c:choose>
									<c:when test="${b.isScroll }">
										<a class="btn btn-info" href="/admin/books_recommend?id=${b.id }&method=remove&typeTarget=1&pageNumber=${p.pageNumber}&type=${type}">移出橫幅</a>
									</c:when>
									<c:otherwise>
										<a class="btn btn-primary" href="/admin/books_recommend?id=${b.id }&method=add&typeTarget=1&pageNumber=${p.pageNumber}&type=${type}">加入橫幅</a>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${b.isHot }">
										<a class="btn btn-info" href="/admin/books_recommend?id=${b.id }&method=remove&typeTarget=2&pageNumber=${p.pageNumber}&type=${type}">移出新書</a>
									</c:when>
									<c:otherwise>
										<a class="btn btn-primary" href="/admin/books_recommend?id=${b.id }&method=add&typeTarget=2&pageNumber=${p.pageNumber}&type=${type}">加入新書</a>
									</c:otherwise>
								</c:choose>

							</p>
							<a class="btn btn-success" href="/admin/books_editshow?id=${b.id }& pageNumber=${p.pageNumber}&type=${type}">修改</a>
							<a class="btn btn-danger" href="/admin/books_delete?id=${b.id }&pageNumber=${p.pageNumber}&type=${type}">刪除</a>
						</td>
					</tr>
				</c:forEach>


			</table>

			<br>
			<jsp:include page="/page.jsp">
				<jsp:param value="/admin/books_list" name="url"/>
				<jsp:param value="&type=${type }" name="param"/>
			</jsp:include>
			<br>
		</div>
	</body>
</html>