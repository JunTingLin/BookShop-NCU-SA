<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>新書上架</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/cart.js"></script>
    </head>
    <body>

        <!--header-->
        <jsp:include page="header.jsp">
            <jsp:param name="flag" value="3"></jsp:param>
        </jsp:include>
        <!--//header-->


        <!--products-->
        <div class="products">
            <div class="container">
                <h2 class="new-title">
                    <i class="bi bi-bell"></i>
                    <c:choose>
                        <c:when test="${t==2}">新品書本</c:when>
                    </c:choose>
                </h2>

                <div class="row">
                    <c:forEach items="${list}" var="b">
                        <div class="col-6 col-sm-4 product-model-sec">
                            <div class="product-grid">
                                <a href="/books_detail?id=${b.id}">
                                    <div class="product-img">
                                        <img src="${b.cover}" class="img-responsive" alt="${b.name}" width="225" height="300">
                                    </div>
                                </a>
                                <div class="product-info">
                                    <div class="product-info-cust prt_name">
                                        <h4><a href="/books_detail?id=${b.id}">${b.name}</a></h4>
                                        <div class="view-info">
                                            <span class="item_price">NT$ ${b.price}</span>
                                            <div class="items-info">
                                                <a href="/books_detail?id=${b.id}" class="detail">
                                                    <i class="bi-eye" aria-hidden="true"></i>
                                                    查看詳情
                                                </a>
                                            </div>
                                        </div>
                                        <div class="buy">
                                            <a href="javascript:;" class="item_add" onclick="buy(${b.id})">加入購物車</a>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        </div>
        <!--footer-->
        <jsp:include page="footer.jsp"></jsp:include>
        <!--//footer-->
    </body>
</html>
