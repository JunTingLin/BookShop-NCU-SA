<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>首頁</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/carousel.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
</head>
<body>
<!--header-->
<jsp:include page="/header.jsp">
    <jsp:param name="flag" value="1"></jsp:param>
</jsp:include>

<%
    List<Map<String,Object>>  r = (List)request.getAttribute("scrollList");
    System.out.println(r);
    System.out.println("橫幅已成功取得...");
//一開始執行時會執行三次是這正常的
%>


<!--banner-->
<div class="banner">
    <div id="banner_carousel" class="carousel-dark slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <c:forEach items="${scrollList}" var="g" varStatus="status">
                <div class="carousel-item <c:if test='${status.first}'>active</c:if>">
                    <div class="container">
                        <h2 class="hdng"><a href="/goods_detail?id=${g.id}">${g.name}</a><span></span></h2>
                        <p>今日精選推薦</p>
                        <a class="buying_now" href="javascript:;" onclick="buy(${g.id})">立刻購買</a>
                        <div class="banner-text">
                            <a href="/goods_detail?id=${g.id}">
                                <img src="${g.cover}" alt="${g.name}" width="350" height="350">
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

</div>

<!--//banner-->

<!--recommend-->
<div class="recommend">
    <div class="container">
        <div class="new_product">新品推薦</div>
        <div class="row align-items-start items">
            <c:forEach items="${newList}" var="g">
                <div class="col recommend-new">
                    <a href="/goods_detail?id=${g.id}">
                        <img src="${g.cover}" class="img-responsive" alt="${g.name}" width="350" height="350"/>
                    </a>
                    <div class="items-info">
                        <p>
                            <span><i class="bi-eye" aria-hidden="true"></i></span>
                            <a href="/goods_detail?id=${g.id}">查看詳情</a>
                        </p>
                        <a class="buying_now" href="javascript:;" onclick="buy(${g.id})">立刻購買</a>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="view-info">
                        <p>${g.typeName} > ${g.name}</p>
                        <div class="prices">
                            <h6 class="item_price">$ ${g.price}</h6>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

    </div>
</div>
<!--//recommend-->

<!--footer-->
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>