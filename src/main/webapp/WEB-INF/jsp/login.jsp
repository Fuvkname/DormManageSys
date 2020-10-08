<%--
  Created by IntelliJ IDEA.
  User: Lvian
  Date: 2020/7/28
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>学生登录界面</title>
    <!-- 引入bootstrap的css文件 -->
    <link rel="stylesheet" href="../../static/bootstrap-4.5.0-dist/css/bootstrap.min.css">
</head>
<style>
    body{
        background-image: url(image/27.jpg);

        background-position: center -200px;

        background-repeat: no-repeat;

        background-attachment: fixed;

        background-size: cover;

        -webkit-background-size: cover;

        -o-background-size: cover;

        -moz-background-size: cover;

        -ms-background-size: cover;
    }
</style>
<body>
<%@include file="head1.jsp"%>
<br>
<center>
    <form  action="check" class="form-horizontal" role="form" method="post" style="margin: 150px;color: white">
        <div class="form-group">
            <label  class="col-sm-2 control-label" style="margin-right: 120px;text-align: left">学生账号</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="id" placeholder="请输入账号">
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-2 control-label" style="margin-right: 120px;text-align: left">密码</label>
            <div class="col-sm-3">
                <input type="password" class="form-control"  name="password" placeholder="请输入密码">
            </div>
        </div>
        <div class="form-group">
            <div class=" col-sm-3">
                <button type="submit" class="btn btn-primary btn-block">登录</button>
            </div>
            <div class="col-sm-3">
                <p>${tips}</p>
            </div>
        </div>
    </form>
</center>
<%@include file="footer.jsp"%>

</body>
</html>
