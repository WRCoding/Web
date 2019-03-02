<%--
  Created by IntelliJ IDEA.
  User: 林北
  Date: 2019/2/7
  Time: 10:47
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
  <link href="css/signin.css" rel="stylesheet">

</head>

<body>

<div class="container">

  <form class="form-signin" method="post" action="s">
    <input type="hidden" name="per" value="login">
    <h2 class="form-signin-heading">学生宿舍管理系统登录</h2>
    <label for="inputEmail" class="sr-only">User</label>
    <input type="text" name="name" id="inputEmail" class="form-control" placeholder="用户名" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" name="password" id="inputPassword" class="form-control" placeholder="密码" required>
    <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
  </form>

</div> <!-- /container -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
