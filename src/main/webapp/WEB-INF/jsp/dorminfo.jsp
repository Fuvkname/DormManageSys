<%--
  Created by IntelliJ IDEA.
  User: Aslopez
  Date: 2020/7/28
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>宿舍详情</title>
    <link rel="stylesheet" href="../../static/bootstrap-4.5.0-dist/css/bootstrap.min.css">
</head>
<body>
<%@include file="head2.jsp"%>
<%--详细宿舍信息--%>
<div class="container-lg ">
    <br>
    <p class="lead">宿舍详情</p>
    <hr class="my-20">
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">楼栋</th>
            <th scope="col">宿舍号</th>
            <th scope="col">水费</th>
            <th scope="col">电费</th>
            <th scope="col">舍员1</th>
            <th scope="col">舍员2</th>
            <th scope="col">舍员3</th>
            <th scope="col">舍员4</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">${dorm.building}</th>
            <td>${dorm.room}</td>
            <td>${dorm.water}</td>
            <td>${dorm.electricity}</td>
            <td>${mem1name}</td>
            <td>${mem2name}</td>
            <td>${mem3name}</td>
            <td>${mem4name}</td>
        </tr>
        </tbody>
    </table>
    <a class="btn btn-primary" href="/getAllDorm" role="button">返回查询页面</a>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
