<%--
  Created by IntelliJ IDEA.
  User: Aslopez
  Date: 2020/7/29
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>管理员页面</title>
    <link rel="stylesheet" href="../../static/bootstrap-4.5.0-dist/css/bootstrap.min.css">
</head>
<body>
<%@include file="head.jsp"%>
<br>
<%--<div class="jumbotron jumbotron-fluid">--%>
    <div class="container">
        <h4>你好，<%=session.getAttribute("loginuser")%></h4>
        <%--    <p class="lead">你好，<%=session.getAttribute("loginuser")%></p>--%>
        <%--    <h1>你好，<%=session.getAttribute("loginuser")%></h1>--%>
        <hr class="my-4">
        <div class="row">
            <div class="col-auto mr-auto">
                <!--搜索框-->
                <form action="/selectDormByInputAdmin" method="post">
                    <div class="input-group">
                        <label class="my-2 mr-sm-2" >选择楼栋</label>
                        <select class="custom-select my-1 mr-sm-2" name="building">
                            <option selected value="01">1栋</option>
                            <option value="02">2栋</option>
                        </select>
                        <input type="text" class="form-control my-1 mr-2" name="room" placeholder="输入宿舍号">
                        <button type="submit" class="btn btn-primary my-1 mr-2">查询</button>
                    </div>
                </form>
                <a class="btn btn-primary" href="/topayFee" role="button">缴费</a>
                <a class="btn btn-primary" href="/toInsert" role="button">添加宿舍信息</a>
            </div>
        </div>
        <br>
        <%--宿舍列表展示--%>
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
                    <td><a href="/selectDormAdmin?building=${dorm.building}&room=${dorm.room}">查看</a> </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <%--分页信息--%>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <c:if test="${pageInfo.hasPreviousPage}">
                <li class="page-item">
                    <a class="page-link" href="/getAllDormByAdmin?pageNum=${pageInfo.pageNum-1}&pageSize=${pageInfo.pageSize}">上一页</a>
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
                    <a  class="page-link" href="/getAllDormByAdmin?pageNum=${pageInfo.pageNum+1}&pageSize=${pageInfo.pageSize}">下一页</a>
                </li>
            </c:if>
            <c:if test="${!pageInfo.hasNextPage}">
                <li class="page-item disabled">
                    <a class="page-link" href="#">下一页</a>
                </li>
            </c:if>

        </ul>
    </nav>
<%--</div>--%>
<%@include file="footer.jsp"%>
</body>
</html>
