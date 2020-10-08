<%--
Created by IntelliJ IDEA.
User: Aslopez
Date: 2020/7/29
Time: 14:34
To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>添加宿舍信息</title>
    <link rel="stylesheet" href="../../static/bootstrap-4.5.0-dist/css/bootstrap.min.css">
</head>
<body>
<%@include file="head.jsp"%>
<%--<form action="/insertDorm" method="post">--%>
<%--    <select name="building">--%>
<%--        <option value="01">1栋</option>--%>
<%--        <option value="02">2栋</option>--%>
<%--    </select>--%>
<%--    宿舍号：<input type="text" name="room"/>--%>
<%--    <br/>--%>
<%--    <br/>--%>

<%--    水费：<input name="water" type="text"/><br/>--%>
<%--    电费：<input name="electricity" type="text"/><br/>--%>
<%--    舍友1学号：<input name="mem1id" type="text"/><br/>--%>
<%--    舍友2学号：<input name="mem2id" type="text"/><br/>--%>
<%--    舍友3学号：<input name="mem3id" type="text"/><br/>--%>
<%--    舍友4学号：<input name="mem4id" type="text"/><br/>--%>
<%--    <button type="submit">添加</button>--%>

<%--    <a href="/toAdminMain">返回</a>--%>
<%--</form>--%>
<br>
<div class="container">
    <form action="/insertDorm" method="post">
        <div class="input-group">
            <label class="my-2 mr-sm-2" >选择楼栋</label>
            <select class="custom-select my-1 mr-sm-2" name="building">
                <option selected value="01">1栋</option>
                <option value="02">2栋</option>
            </select>
            <input type="text" class="form-control my-1 mr-2" name="room" placeholder="输入宿舍号">
            <label class="my-2 mr-sm-2" >水费</label>
            <input type="text" class="form-control my-1 mr-2" name="water" placeholder="0" value="0">
            <label class="my-2 mr-sm-2" >电费</label>
            <input type="text" class="form-control my-1 mr-2" name="electricity" placeholder="0" value="0">
<%--            <a class="btn btn-primary my-1 mr-2" href="/toAdminMain" role="button">返回查询界面</a>--%>
        </div>
        <hr class="my-4">

        <div class="form-group">
            <div class="col-sm-3">
                <label class="my-2 mr-sm-2" >成员1学号</label>
                <input type="text" class="form-control" name="mem1id" value="0" onfocus="if (value =='0'){value =''}" onblur="if (value ==''){value='0'}"/>
                <label  class="my-2 mr-sm-2">成员2学号</label>
                <input type="text" class="form-control"  name="mem2id" value="0" onfocus="if (value =='0'){value =''}" onblur="if (value ==''){value='0'}"/>
                <label  class="my-2 mr-sm-2">成员3学号</label>
                <input type="text" class="form-control"  name="mem3id" value="0" onfocus="if (value =='0'){value =''}" onblur="if (value ==''){value='0'}"/>
                <label  class="my-2 mr-sm-2">成员4学号</label>
                <input type="text" class="form-control"  name="mem4id" value="0" onfocus="if (value =='0'){value =''}" onblur="if (value ==''){value='0'}"/>
                <button type="submit" class="btn btn-primary my-2 mr-2">添加</button>
                <p>${tips}</p>
            </div>
        </div>

    </form>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
