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
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>

    <script language="JavaScript" src="js/showLR.js"></script>
    <script language="JavaScript">
        $(function () {
            //1.初始化Table
            var oTable = new TableInit();
            oTable.Init();
        });
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
                <li><a href="adminRoom.jsp">宿舍信息 </a></li>
                <li><a href="adminExp.jsp">快件信息</a></li>
                <li><a href="adminSer.jsp">维修信息</a></li>
                <li class="active"><a href="adminLR.jsp">学生离校与返校</a></li>
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
            <h2 class="sub-header">学生离校与返校</h2>
            <div class="table-responsive">
                <table class="table table-striped" id="Table">
                </table>
            </div>
            <form class="form-horizontal" role="form" action="in" method="post">
                <input type="hidden" name="per" value="exp">
                <div class="form-group">
                    <label class="col-sm-2 control-label">姓名</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control" placeholder="xxx" name="sname">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">宿舍号</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control" placeholder="xxx" name="dno">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">到达时间</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control" placeholder="yyyy-mm-dd" name="marrive">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">数量</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control" placeholder="xx" name="mnumber">
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
</body>
</html>

