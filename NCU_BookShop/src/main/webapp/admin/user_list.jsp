<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>用戶列表</title>
        <meta charset="utf-8"/>
        <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Rampart+One&family=Zen+Antique&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    </head>
    <body>
        <jsp:include page="header.jsp">
            <jsp:param name="flag" value="4"></jsp:param>
        </jsp:include>

        <div class="container-fluid">
            <br><br>

            <div class="user-title">
                <h3 class="user-list">
                    <i class="bi bi-person-circle"></i>
                    會員管理
                </h3>
                <div style="margin-left: 100px;"><a class="btn btn-warning" href="user_add.jsp">新增會員</a></div>
                <c:if test="${!empty msg }">
                    <div class="alert alert-success">${msg }</div>
                </c:if>
                <c:if test="${!empty failMsg }">
                    <div class="alert alert-danger">${failMsg }</div>
                </c:if>
            </div>
            <br>
            <div class="frame-list table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <thead class="table-primary">
                        <tr>
                            <th style="width: 10px;padding-left: 13px;">ID</th>
                            <th style="width: 30px;padding-left: 13px;">帳號</th>
                            <th style="width: 30px;padding-left: 13px;">電子信箱</th>
                            <th style="width: 30px;padding-left: 13px;">姓名</th>
                            <th style="width: 30px;padding-left: 13px;">電話</th>
                            <th style="width: 30px;">地址</th>
                            <th style="width: 90px;padding-left: 10px;">操作</th>
                        </tr>
                    </thead>
                    <c:forEach items="${ list }" var="u">
                        <tr>
                            <td><p>${u.id }</p></td>
                            <td><p>${u.username }</p></td>
                            <td><p>${u.email }</p></td>
                            <td><p>${u.name }</p></td>
                            <td><p>${u.phone }</p></td>
                            <td><p>${u.address }</p></td>
                            <td>
                                <a class="btn btn-info"
                                   href="/admin/user_reset.jsp?id=${u.id }&username=${u.username }&email=${u.email }">重設密碼</a>
                                <a class="btn btn-primary" href="/admin/user_editshow?id=${u.id }">修改</a>
                                <a class="btn btn-danger" href="${pageContext.request.contextPath }/admin/user_delete?id=${u.id }">刪除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <br>
        </div>
    </body>
</html>