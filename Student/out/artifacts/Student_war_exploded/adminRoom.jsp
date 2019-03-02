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

    <title>学生宿舍管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
    <script src="https://lib.sinaapp.com/js/jquery/2.0.2/jquery-2.0.2.min.js">
    </script>
    <script type="text/javascript">
        function inquire() {
            $.ajax({
                url: 'inq', //请求的url
                type: 'post', //请求的方式
                data: $('#values').serialize(), //form表单里要提交的内容，里面的input等写上name就会提交，这是序列化
                error:function (data) {
                    alert('请求失败');
                },
                success:function (data) {
                    var info = JSON.parse(data);
                    var str1 = "";
                    //清空table中的html
                    $("#stu").html("");
                    for(var i = 0;i<info.length;i++){
                        str1 = "<tr>" +
                            "<td>"+info[i].son + "</td>" +
                            "<td>"+info[i].sname + "</td>" +
                            "<td>"+info[i].sex + "</td>" +
                            "<td>"+info[i].sdept + "</td>"+
                            "<td>"+info[i].dno + "</td>"+
                            "<td>"+info[i].scheckin + "</td>"+
                            "</tr>";
                        $("#stu").append(str1);
                    }
                }
            });
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
            <span class="navbar-right navbar-brand">${user.uname}${user.utype==2?"(宿管)":"(学生)"}</span>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar hidden-xs">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="adminRoom.jsp">宿舍信息</a></li>
                <li><a href="adminExp.jsp">快件信息</a></li>
                <li><a href="adminSer.jsp">维修信息</a></li>
                <li><a href="adminLR.jsp">学生离校与返校</a></li>
                <li><a href="adminRec.jsp">晚归记录</a></li>
            </ul>
        </div>
        <div class="visible-xs">
            <a href="adminRoom.jsp">宿舍信息</a></li>
            <a href="adminExp.jsp">快件信息</a></li>
            <a href="adminSer.jsp">维修信息</a></li>
            <a href="adminLR.jsp">学生离校与返校</a></li>
            <a href="adminRec.jsp">晚归记录</a></li>
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
                    <tbody id="stu">

                    </tbody>
                </table>
            </div>
            <label>宿舍号</label>
            <div class="input-group col-lg-4">
                <form id="values">
                    <input type="hidden" name="per" value="inq">
                    <div class="col-lg-10">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="宿舍号"  name="dno">
                            <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="inquire()">查询</button>
                    </span>
                        </div><!-- /input-group -->
                    </div><!-- /.col-lg-6 -->
                </form>
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

