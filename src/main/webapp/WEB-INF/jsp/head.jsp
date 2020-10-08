<%--
  Created by IntelliJ IDEA.
  User: LIN
  Date: 2020/7/29
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <!-- 导航栏商标 -->
        <a class="navbar-brand justify-content-start" href="#">学生宿舍管理系统</a>
        <!-- 导航入口 -->
        <div>
            <ul class="navbar-nav">
                <!-- 条目 -->
<%--                <li class="nav-item">--%>
<%--                  <a class="btn  btn-primary my-1 mr-2" href="/toAdminMain" role="button">主界面</a>--%>
<%--                </li>--%>
<%--               <li class="nav-item">--%>
<%--                   <a class="btn  btn-primary my-1 mr-2" href="/toLogin" role="button">注销</a>--%>
<%--               </li>--%>
                <li class="nav-item">
                    <a class="nav-link"  href="/getAllDormByAdmin">主界面</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"  href="/logout">注销</a>
                </li>
            </ul>
        </div>

    </div>
</nav>
