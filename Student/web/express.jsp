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
    <script type="text/javascript">
        function changed() {
            var data = document.getElementById("time").value;
            var ajax;
            if (window.XMLHttpRequest){
                ajax = new XMLHttpRequest();
            } else if (window.ActiveXObject){
                ajax = new ActiveXObject("Msxml2.XMLHTTP");
            }
            ajax.onreadystatechange = function () {
                if (ajax.readyState == 4){
                    if (ajax.status == 200){
                        var result = ajax.responseText;
                        var receive = document.getElementById("a");
                        var number = document.getElementById("b");
                        receive.innerHTML = result;
                        number.innerHTML = 0;
                    }
                }
            }
            ajax.open("get","up?value="+data);
            ajax.send(null);
        }
    </script>

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
                <li><a href="info.jsp">宿舍信息 </a></li>
                <li class="active"><a href="s?per=express">快件信息</a></li>
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
            <h2 class="sub-header">快件信息</h2>
            <div class="table-responsive">
                <table class="table table-striped" >
                    <thead>
                    <tr>
                        <th>姓名</th>
                        <th>宿舍号</th>
                        <th>到达时间</th>
                        <th>收件时间</th>
                        <th>快件数量</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${express.sname}</td>
                        <td>${express.dno}</td>
                        <td>${express.marrive}</td>
                        <td id="a">${express.mreceive}</td>
                        <td id="b">${express.mnumber}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <label>取件日期</label>
            <div class="input-group col-lg-4">
                <input type="text" class="form-control" placeholder="yyyy-mm-dd" id="time">
                <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="changed()">取件</button>
                </span>
            </div><!-- /input-group -->
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

