<%--
  Created by IntelliJ IDEA.
  User: Aslopez
  Date: 2020/7/30
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>宿舍详情</title>
    <link rel="stylesheet" href="../../static/bootstrap-4.5.0-dist/css/bootstrap.min.css">
</head>
<body>
<%@include file="head.jsp"%>
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
    <a class="btn btn-primary" href="/getAllDormByAdmin" role="button">返回查询页面</a>
    <a class="btn btn-primary" href="#" role="button" onclick="hideTab()">修改宿舍信息</a>
    <a class="btn btn-primary" href="/deleteDorm?building=${dorm.building}&room=${dorm.room}" role="button">删除宿舍信息</a>
    <hr/>
    <form action="/updateDorm" method="post">
        <table class="table" id="tab" style="display: none">
            <thead class="thead-dark">
            <tr>
                <th scope="col">水费</th>
                <th scope="col">电费</th>
                <th scope="col">舍员1学号</th>
                <th scope="col">舍员2学号</th>
                <th scope="col">舍员3学号</th>
                <th scope="col">舍员4学号</th>
            </tr>
            </thead>
            <tbody>
            <tr>
<%--                <input type="text" name="building" value="${dorm.building}" style="display: none"/>--%>
<%--                <input type="text" name="room" value="${dorm.room}" style="display: none"/>--%>
<%--                <td><input type="text" name="water" value="${dorm.water}"/></td>--%>
<%--                <td><input type="text" name="electricity" value="${dorm.electricity}"/></td>--%>
<%--                <td><input type="text" name="mem1id" value="${dorm.mem1id}"/></td>--%>
<%--                <td><input type="text" name="mem2id" value="${dorm.mem2id}"/>name="mem2id" value="${dorm.mem2id}"</td>--%>
<%--                <td><input type="text" name="mem3id" value="${dorm.mem3id}"/></td>--%>
<%--                <td><input type="text" name="mem4id" value="${dorm.mem4id}"/></td>--%>
                <td><input type="text" class=" form-control col-sm-20" name="water" value="${dorm.water}" ></td>
                <td><input type="text" class="form-control col-sm-20" name="electricity" value="${dorm.electricity}" ></td>
                <td><input type="text" class="form-control col-sm-20" name="mem1id" value="${dorm.mem1id}" ></td>
                <td><input type="text" class="form-control col-sm-20" name="mem2id" value="${dorm.mem2id}" ></td>
                <td><input type="text" class="form-control col-sm-20" name="mem3id" value="${dorm.mem3id}"></td>
                <td><input type="text" class="form-control col-sm-20" name="mem4id" value="${dorm.mem4id}" ></td>
                <input type="text" class=" form-control col-sm-20" name="building" value="${dorm.building}" style="display: none" >
                <input type="text" class="form-control col-sm-20" name="room" value="${dorm.room}" style="display: none" >
            </tr>
            </tbody>

        </table>
        <div class=" col-sm-3">
            <button type="submit" class="btn btn-primary " id="but" style="display: none" >提交</button>
        </div>
<%--        <button type="submit" id="but" style="display: none" >提交</button>--%>
    </form>
</div>
<%@include file="footer.jsp"%>
<script>
    var isHide=true;
    function hideTab(){
        var tab=document.getElementById('tab')
        var but=document.getElementById('but')
        if(isHide){tab.style.display='';
            but.style.display='';}
        else{tab.style.display='none';
            but.style.display='none';}

        isHide=!isHide
    }
</script>
</body>
</html>
