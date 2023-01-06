<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="header">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <div class="logo">
                <a href="/index"><img class="logo-pic" src="images/logo.jpg" alt="NCU_logo" /></a>
                <a class="logo-name" href="/index">
                    <h1 class="logo-name-top">NCU</h1>
                    <h1 class="logo-name-bottom">教科書商城</h1>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link <c:if test="${param.flag==1}">active</c:if>" href="/admin/order_list" >訂單管理</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <c:if test="${param.flag==2}">active</c:if>" href="/admin/books_list" >書本管理</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <c:if test="${param.flag==3}">active</c:if>" href="/admin/department_list" >科系管理</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <c:if test="${param.flag==4}">active</c:if>" href="/admin/user_list" >會員管理</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/user_logout">登出</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<!--//header-->