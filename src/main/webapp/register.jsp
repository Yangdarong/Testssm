<%--
  Created by IntelliJ IDEA.
  User: 杨鑫荣
  Date: 2018/12/10
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>用户注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
    <div class="container">
        <h2 style="text-align: center;">注册新账号</h2>
        <form role="form" name="">
            <div class="form-group">
                <input name="userLoginName" type="text" class="form-control" id="exampleInputUser" placeholder="请输入用户名" />
            </div>
            <div class="form-group">
                <input name="userPassword" type="password" class="form-control" id="exampleInputPwd" placeholder="请输入密码" />
            </div>
            <button type="submit" class="btn btn-default" onclick="register()">注册</button>
        </form>
    </div>
</body>
<script type="text/javascript">
    function register() {
        var form = document.forms[0];
        form.action = "<%=basePath %>user/register";
        form.method = "post";
        form.submit();
    }
</script>
</html>
