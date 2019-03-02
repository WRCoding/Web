<%--
  Created by IntelliJ IDEA.
  User: 林北
  Date: 2019/2/8
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>学生宿舍管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <span class="navbar-brand">学生宿舍管理系统</span>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <span class="navbar-right navbar-brand">${user.uname}${user.utype==2?"(宿管)":"(学生)"}</span>
            <%--<span class="navbar-right navbar-brand"></span>--%>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar hidden-xs">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="info.jsp">宿舍信息</a></li>
                <li><a href="s?per=express">快件信息</a></li>
                <li><a href="s?per=service">维修信息</a></li>
                <li><a href="s?per=lr">学生离校与返校</a></li>
                <li><a href="s?per=rec">晚归记录</a></li>
            </ul>
        </div>
        <div class="visible-xs">
            <a href="info.jsp">宿舍信息</a></li>
            <a href="s?per=express">快件信息</a></li>
            <a href="s?per=service">维修信息</a></li>
            <a href="s?per=lr">学生离校与返校</a></li>
            <a href="s?per=rec">晚归记录</a></li>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header">宿舍信息</h2>
            <div class="table-responsive">
                <table class="table table-striped" >
                    <thead>
                    <tr>
                        <th>学号</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>专业</th>
                        <th>宿舍号</th>
                        <th>入住时间</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${room.son}</td>
                        <td>${room.sname}</td>
                        <td>${room.sex}</td>
                        <td>${room.sdept}</td>
                        <td>${room.dno}</td>
                        <td>${room.scheckin}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>

