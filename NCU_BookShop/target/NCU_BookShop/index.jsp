<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
<%--    <script type="text/javascript" src="js/carousel.js"></script>--%>
    <script type="text/javascript" src="js/cart.js"></script>
</head>
<body>
<!--header-->
<jsp:include page="/header.jsp">
    <jsp:param name="flag" value="1"></jsp:param>
</jsp:include>

<%
    List<Map<String, Object>> r = (List) request.getAttribute("scrollList");
    System.out.println(r);
    System.out.println("橫幅已成功取得...");
//一開始執行時會執行三次是這正常的
%>


<!--banner-->
<div class="banner">
    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <h2 class="hdng"><a href="/books_detail?id=${scrollList.get(0).id}">${scrollList.get(0).name}</a><span></span></h2>
                    <p>今日精選推薦</p>
                    <a class="buying_now" href="javascript:;" onclick="buy(${scrollList.get(0).id})">立刻購買</a>
                    <div class="banner-text">
                        <a href="/books_detail?id=${scrollList.get(0).id}">
                            <img src="${scrollList.get(0).cover}" alt="${scrollList.get(0).name}" width="350" height="350">
                        </a>
                    </div>
                </div>
            </div>
            <c:forEach items="${scrollList}" var="b" begin="1">
                <div class="carousel-item ">
                    <div class="container">
                        <h2 class="hdng"><a href="/books_detail?id=${b.id}">${b.name}</a><span></span></h2>
                        <p>今日精選推薦</p>
                        <a class="buying_now" href="javascript:;" onclick="buy(${b.id})">立刻購買</a>
                        <div class="banner-text">
                            <a href="/books_detail?id=${b.id}">
                                <img src="${b.cover}" alt="${b.name}" width="350" height="350">
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

</div>

<!--//banner-->

<!--recommend-->
<div class="recommend">
    <div class="container">
        <div class="new_product">新品推薦</div>
        <div class="row align-items-start items">
            <c:forEach items="${newList}" var="b">
                <div class="col recommend-new">
                    <a href="/books_detail?id=${b.id}">
                        <img src="${b.cover}" class="img-responsive" alt="${b.name}" width="350" height="350"/>
                    </a>
                    <div class="items-info">
                        <p>
                            <span><i class="bi-eye" aria-hidden="true"></i></span>
                            <a href="/books_detail?id=${b.id}">查看詳情</a>
                        </p>
                        <a class="buying_now" href="javascript:;" onclick="buy(${b.id})">立刻購買</a>
                        <div class="clearfix"></div>
                    </div>
                    <div class="view-info">
                        <p>${b.typeName} > ${b.name}</p>
                        <div class="prices">
                            <h6 class="item_price">$ ${b.price}</h6>
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
