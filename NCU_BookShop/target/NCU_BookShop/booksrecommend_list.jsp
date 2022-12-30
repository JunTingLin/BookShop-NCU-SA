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
        <h2><c:choose><c:when test="${t==2}">新品商品</c:when></c:choose></h2>

        <div class="row">
            <c:forEach items="${p.list}" var="g">
                <div class="col-6 col-sm-4 product-model-sec">
                    <div class="product-grid">
                        <a href="/books_detail?id=${g.id}">
                            <div class="product-img">
                                <img src="${g.cover}" class="img-responsive" alt="${g.name}" width="240" height="240">
                            </div>
                        </a>
                        <div class="product-info simpleCart_shelfItem">
                            <div class="product-info-cust prt_name">
                                <h4>${g.name}</h4>
                                <div class="view-info">
                                    <span class="item_price">NT$ ${g.price}</span>
                                    <div class="items-info">
                                        <i class="bi-eye" aria-hidden="true"></i>
                                        <button href="/books_detail?id=${g.id}">查看詳情</button>
                                    </div>
                                </div>
                                <div class="buy">
                                    <a href="javascript:;" class="item_add" onclick="buy(${g.id})">加入購物車</a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <jsp:include page="page.jsp">
            <jsp:param name="url" value="/booksrecommend_list"></jsp:param>
            <jsp:param name="param" value="&type=${t}"></jsp:param>
        </jsp:include>
    </div>
</div>
</div>
<!--//products-->






<!--footer-->
<jsp:include page="footer.jsp"></jsp:include>
<!--//footer-->


</body>
</html>
