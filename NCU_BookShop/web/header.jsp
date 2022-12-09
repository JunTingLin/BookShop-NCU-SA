<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 19767
  Date: 2018/11/23
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<!-- navbar資料參考: https://ithelp.ithome.com.tw/articles/10192870 -->
<!--header-->
<div class="header">
    <div class="container">
        <nav class="navbar">
            <!-- logo -->
            <div class="logo">
                <a href="/index"><img class="logo-pic" src="images/logo.jpg" alt="NCU_logo" /></a>
                <!-- image source: https://www.facebook.com/ncu.tw/photos/a.645090168908504/2865575473526618> -->
                <a class="logo-name" href="/index">
                    <h1 class="logo-name-top">NCU</h1>
                    <h1 class="logo-name-bottom">教科書商城</h1>
                </a>
            </div>
            <!-- navbar -->
            <div>
                <ul class="nav navbar-nav">
                    <li><a class="nav-link active" href="/index" <c:if test="${param.flag==1}">class="active"</c:if>>首頁</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">科系類別<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-2">
                            <ul class="multi-column-dropdown">

                                <li><a class="all" href="/goods_list">不分科系</a></li>
                                    <c:forEach items="${typeList}" var="t">
                                        <li><a class="list" href="/goods_list?typeid=${t.id}">${t.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </ul>
                    </li>                      
                    <li><a href="/goodsrecommend_list?type=2" <c:if test="${param.flag==3 && t==2}">class="active"</c:if>>熱門</a></li>
                    <li><a href="/goodsrecommend_list?type=3" <c:if test="${param.flag==3 && t==3}">class="active"</c:if>>新品</a></li>

                    <c:choose><c:when test="${empty user }">
                        <li><a href="/user_register.jsp" <c:if test="${param.flag==10 }">class="active"</c:if>>註冊</a></li>
                        <li><a href="/user_login.jsp" <c:if test="${param.flag==9 }">class="active"</c:if>>登入</a></li>
                    </c:when><c:otherwise>
                        <li><a href="/order_list" <c:if test="${param.flag==5 }">class="active"</c:if>>我的訂單</a></li>
                        <li><a href="/user_center.jsp" <c:if test="${param.flag==4 }">class="active"</c:if>>個人中心</a></li>
                        <li><a href="/user_logout" >退出</a></li>
                    </c:otherwise>
                    </c:choose>

                    <c:if test="${!empty user && user.isadmin }">
                        <li><a href="/admin/index.jsp" target="_blank">後台管理</a></li>
                    </c:if>
                </ul>
            </div>
            <!-- search -->
            <div class="search">
                <a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
                <div class="input-area">
                    <form class="navbar-form" action="/goods_search">
                        <input type="text" class="form-control" name="keyword">
                        <button type="submit" class="btn btn-default <c:if test="${param.flag==7 }">active</c:if>" aria-label="Left Align">搜尋</button>
                    </form>
                </div>
            </div>
            <!-- cart -->
            <div class="cart">
                <a href="goods_cart.jsp">
                    <span class="glyphicon glyphicon-shopping-cart<c:if test="${param.flag==8 }">active</c:if>" aria-hidden="true">
                        <span class="goods_num"><c:choose><c:when test="${empty order}">0</c:when><c:otherwise>${order.amount}</c:otherwise></c:choose></span>
                    </span>
                </a>
            </div>
        </nav>
    </div>
</div>
<!--//header-->