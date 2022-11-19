<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>首頁</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
        <link type="text/css" rel="stylesheet" href="css/style1.css">
        <link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="layer/layer.js"></script>
        <script type="text/javascript" src="js/cart.js"></script>
    </head>
    <body>
    <!--header-->
        <div class="header">
            <div class="container">
                <nav class="navbar">
                    <div class="logo">
                        <a href="#"><img class="logo-pic" src="images/logo.jpg" alt="NCU_logo" /></a>
                        <!-- image source: https://www.facebook.com/ncu.tw/photos/a.645090168908504/2865575473526618> -->
                        <a class="logo-name" href="#">
                            <h1 class="logo-name-top">NCU</h1>
                            <h1 class="logo-name-bottom">教科書商城</h1>
                        </a>
                    </div>
                    <div>
                        <ul class="nav navbar-nav">
                            <li><a class="nav-link active" href="#">首頁</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">科系類別<b class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-2">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <li><a class="all" href="/goods_list">不分科系</a></li>
                                                <h5 class="major-type">管理學院</h5>
                                                <h5 class="major-type">工學院</h5>
                                                <h5 class="major-type">資電學院</h5>
                                                <h5 class="major-type">文學院</h5>
                                            </div>
                                        </div>
                                </ul>
                            </li>
                            <li><a class="nav-link" href="/goodsrecommend_list?type=2">熱銷書籍</a></li>
                            <li><a class="nav-link" href="/goodsrecommend_list?type=3">最新上架</a></li>
                            <li><a class="nav-link" href="/user_register.jsp">註冊</a></li>
                            <li><a class="nav-link" href="/user_login.jsp">登入</a></li> 
                        </ul>
                    </div>                          
                </nav>
            </div>
        </div>
    <!--header-->
    <!--banner-->
    <div class="banner">
        <div class="container">
            <p class="ad-text">本周銷量冠軍</p>
            <!-- 要寫死還用GoodsDao裡的sql語法select -->
            <h2><a class="sales-champ" href="/goods_detail?id=${scroll.id}">~ ${scroll.name} ~</a></h2>
            <a class="add-cart" href="javascript:;" onclick="buy(${scroll.id})">加入購物車</a>
            <div class="ad-pic">
                <a href="/goods_detail?id=9">
                    <img src="${scroll.cover}" alt="${scroll.name}" width="350" height="auto">
                </a>
            </div>
        </div>
    </div>
    <!--//banner-->
    </body>
</html>