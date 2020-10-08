<%@ page import="org.apache.ibatis.jdbc.Null" %><%--
  Created by IntelliJ IDEA.
  User: Aslopez
  Date: 2020/7/29
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>管理员登录界面</title>
    <script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
    body {

        background-image: url(image/138.jpg);

        background-position: center 0;

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
    <form  action="/checkadmin" class="form-horizontal" role="form" method="post" style="margin: 150px" id="forms">
        <div class="form-group">
            <label for="username" class="col-sm-2 control-label"style="margin-right: 120px;text-align: left">管理员账号</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="id" placeholder="请输入账号" id="username">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-2 control-label" style="margin-right: 120px;text-align: left">密码</label>
            <div class="col-sm-3">
                <input id="password" type="password" class="form-control"  name="password" placeholder="请输入密码" id="password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-3">
                <button type="submit" class="btn btn-primary btn-block" id="success">登录</button>
            </div>
        </div>
    </form>
</center>
<%@include file="footer.jsp"%>
<script>
    $(function () {
        $("#success").click(function () {
            if ($('#username').value()!=null&&$('#password').value()!=null){
                if (${tips  eq '用户名或密码错误'})
                    alert("账号或密码有错");
            }

        })
    })
</script>

</body>
</html>
