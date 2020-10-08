<%--
  Created by IntelliJ IDEA.
  User: Aslopez
  Date: 2020/7/29
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>缴费页面</title>
    <link rel="stylesheet" href="../../static/bootstrap-4.5.0-dist/css/bootstrap.min.css">
</head>
<body>
<%@include file="head.jsp"%>
<%--<form action="/payFee" method="post">--%>
<%--    <select name="building">--%>
<%--        <option value="01">1栋</option>--%>
<%--        <option value="02">2栋</option>--%>
<%--    </select>--%>
<%--    宿舍号：<input type="text" name="room"/>--%>
<%--    <br/>--%>
<%--    <br/>--%>

<%--    水费：<input name="water" type="text" value="0"/><br/>--%>
<%--    电费：<input name="electricity" type="text" value="0"/><br/>--%>
<%--    <button type="submit">缴费</button>--%>
<%--    <a href="/toAdminMain">返回</a>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
<%--<div class="jumbotron jumbotron-fluid">--%>
<br>
<br>
    <div class="container">
        <form action="/payFee" method="post">
            <div class="input-group">
                <label class="my-2 mr-sm-2" >选择楼栋</label>
                <select class="custom-select my-1 mr-sm-2" name="building">
                    <option selected value="01">1栋</option>
                    <option value="02">2栋</option>
                </select>
                <input type="text" class="form-control my-1 mr-2" name="room" placeholder="输入宿舍号">
                <label class="my-2 mr-sm-2" >水费</label>
                <input type="text" class="form-control my-1 mr-2" name="water" placeholder="0">
                <label class="my-2 mr-sm-2" >电费</label>
                <input type="text" class="form-control my-1 mr-2" name="electricity" placeholder="0">
                <button type="submit" class="btn btn-primary my-1 mr-2">缴费</button>
                <a class="btn btn-primary my-1 mr-2" href="/toAdminMain" role="button">返回查询界面</a>

            </div>
        </form>
        <hr class="my-4">
        <table class="table table-hover">
            <thead class="thead-dark">
            <tr>
                <th scope="col">楼栋</th>
                <th scope="col">宿舍号</th>
                <th scope="col">水费</th>
                <th scope="col">电费</th>
                <th scope="col">详情</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${alldorm}" var="dorm">
                <tr>
                    <th scope="row">${dorm.building}</th>
                    <td>${dorm.room}</td>
                    <td>${dorm.water}</td>
                    <td>${dorm.electricity}</td>
                    <td><a href="/selectDorm?building=${dorm.building}&room=${dorm.room}">查看</a> </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="container">
    <nav aria-label="Page navigation example ">
        <ul class="pagination justify-content-center">
            <c:if test="${pageInfo.hasPreviousPage}">
                <li class="page-item">
                    <a class="page-link" href="/topayFee?pageNum=${pageInfo.pageNum-1}&pageSize=${pageInfo.pageSize}">上一页</a>
                </li>
            </c:if>
            <c:if test="${!pageInfo.hasPreviousPage}">
                <li class="page-item disabled">
                    <a class="page-link" href="#">上一页</a>
                </li>
            </c:if>
            <li class="page-item disabled"><a class="page-link"  aria-disabled="true" href="#">第${pageInfo.pageNum}页</a></li>
            <li class="page-item disabled">
                <a class="page-link" aria-disabled="true" href="#">共${pageInfo.pages}页</a>
            </li>
            <c:if test="${pageInfo.hasNextPage}">
                <li class="page-item">
                    <a  class="page-link" href="/topayFee?pageNum=${pageInfo.pageNum+1}&pageSize=${pageInfo.pageSize}">下一页</a>
                </li>
            </c:if>
            <c:if test="${!pageInfo.hasNextPage}">
                <li class="page-item disabled">
                    <a class="page-link" href="#">下一页</a>
                </li>
            </c:if>

        </ul>
    </nav>
    </div>
<%--</div>--%>
<%@include file="footer.jsp"%>
</body>
</html>
