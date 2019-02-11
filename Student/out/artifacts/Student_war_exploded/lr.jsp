<%--
  Created by IntelliJ IDEA.
  User: 林北
  Date: 2019/2/8
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <span class="navbar-right navbar-brand">${user.uname}</span>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar hidden-xs">
            <ul class="nav nav-sidebar">
                <li><a href="info.jsp">宿舍信息</a></li>
                <li><a href="s?per=express">快件信息</a></li>
                <li><a href="s?per=service">维修信息</a></li>
                <li class="active"><a href="s?per=lr">学生离校与返校</a></li>
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
            <h2 class="sub-header">学生离校与返校</h2>
            <div class="table-responsive">
                <table class="table table-striped" >
                    <thead>
                    <tr>
                        <th>学号</th>
                        <th>宿舍号</th>
                        <th>离校时间</th>
                        <th>返校时间</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${lr}" var="lrl">
                        <tr>
                            <td>${lrl.sno}</td>
                            <td>${lrl.dno}</td>
                            <td>${lrl.ltime}</td>
                            <td>${lrl.lreturn}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <form class="form-horizontal" role="form" action="in" method="post">
                <input type="hidden" name="per" value="lr">
                <div class="form-group">
                    <label class="col-sm-2 control-label">宿舍号</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control" placeholder="宿舍号" name="dno">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">离校时间</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control" placeholder="yyyy-mm-dd" name="Ltime">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">返校时间</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control" placeholder="yyyy-mm-dd" name="Lreturn">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">提交</button>
                    </div>
                </div>
            </form>
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

