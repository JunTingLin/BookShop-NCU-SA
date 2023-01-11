<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="header">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <div class="logo">
                <a href="/index"><img class="logo-pic" src="images/logo.jpg" alt="NCU_logo" /></a>
                <!-- image source: https://www.facebook.com/ncu.tw/photos/a.645090168908504/2865575473526618> -->
                <a class="logo-name" href="/index">
                    <h1 class="logo-name-top">NCU</h1>
                    <h1 class="logo-name-bottom">教科書商城</h1>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link <c:if test="${param.flag==1}">active</c:if>" href="/index" >首頁</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            科系類別
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/books_list">不分科系</a></li>
                            <c:forEach items="${departmentList}" var="dep">
                                <li><a class="dropdown-item" href="/books_list?departmentid=${dep.id}">${dep.name}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <c:if test="${param.flag==3 && t==2}">active</c:if>" href="/booksrecommend_list?type=2" >新書上架</a>
                    </li>
                    <c:choose><c:when test="${empty user }">
                        <li class="nav-item"><a href="/user_register.jsp" class="nav-link <c:if test="${param.flag==10 }">active</c:if>">註冊</a></li>
                        <li class="nav-item"><a href="/user_login.jsp" class="nav-link <c:if test="${param.flag==9 }">active</c:if>">登入</a></li>
                    </c:when><c:otherwise>
                        <li class="nav-item"><a href="/order_list" class="nav-link <c:if test="${param.flag==5 }">active</c:if>">我的訂單</a></li>
                        <li class="nav-item"><a href="/user_center.jsp" class="nav-link <c:if test="${param.flag==4 }">active</c:if>">個人中心</a></li>
                        <li class="nav-item"><a href="/user_logout" class="nav-link" >退出</a></li>
                    </c:otherwise>
                    </c:choose>

                    <c:if test="${!empty user && user.isadmin }">
                        <li class="nav-item"><a href="/admin/index.jsp" class="nav-link" target="_blank">後台管理</a></li>
                    </c:if>
                </ul>
                <form class="d-flex" action="/books_search">
                    <input class="form-control me-2" type="text" placeholder="Search" aria-label="Search" name="keyword">
                    <button class="btn btn-outline-success" type="submit"><i class="bi bi-search"></i></button>
                </form>
                <div>
                    <c:choose>
                        <c:when test="${empty order.getItemMap()}">
                            <i class="d-flex bi bi-cart2" id="cart"></i>
                            <span class="books_num">
                                0
                            </span>
                        </c:when>
                        <c:otherwise>
                            <a href="books_cart.jsp">
                                <i class="d-flex bi bi-cart2" id="cart"></i>
                            </a>
                            <a href="books_cart.jsp">
                                <span class="books_num">
                                        ${order.amount}
                                </span>
                            </a>
                        </c:otherwise>
                    </c:choose>

                </div>
            </div>
        </div>
    </nav>
</div>
<!--//header-->