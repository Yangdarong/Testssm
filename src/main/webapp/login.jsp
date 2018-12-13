<%--
  Created by IntelliJ IDEA.
  User: 杨鑫荣
  Date: 2018/12/10
  Time: 23:23
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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>登录界面</title>


    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".name input").focus(function () {
                $(this).prev("i").css({ "background-image": "url(img/user2.png)" });
            });
            $(".name input").blur(function () {
                $(this).prev("i").css({ "background-image": "url(img/user1.png)" });
            });
            $(".password input").focus(function () {
                $(this).prev("i").css({ "background-image": "url(img/password2.png)" });
            });
            $(".password input").blur(function () {
                $(this).prev("i").css({ "background-image": "url(img/password1.png)" });
            });
        });
    </script>

</head>

<body>
<div class="container">
    <div class="wrap">
        <header>
            <em>Logo</em>
            <span>这里填公司名称</span>
        </header>
        <article>
            <section>
                <aside>
                    <em>
                        <img src="img/user.png">
                    </em>
                    <form id="loginForm" action="" name="loginForm">
                        <p class="name">
                            <i></i>
                            <input type="text" name="userLoginName" class="userName" placeholder="请输入用户名">
                        </p>
                        <p class="password">
                            <i></i>
                            <input type="password" name="userPassword" class="pwd" placeholder="请输入密码">
                        </p>
                        <button onclick="login()">登录</button>
                        <p class="remember">
                            <input type="checkbox" name="remember" title="">记住密码</p>
                        <p class="regist">
                            <span>没账号?</span>
                            <a href="javascript:void(0);">立即注册</a>
                        </p>
                        <div class="clear"></div>
                    </form>
                </aside>

            </section>
        </article>
        <footer>
            <ul>
                <li>
                    <a href="#">联系我们</a>
                </li>
                <li>
                    <a href="#">关于我们</a>
                </li>
                <li>
                    <a href="#">人才招聘</a>
                </li>
                <li>
                    <a href="#">友情链接</a>
                </li>
                <li>
                    <a href="#">公司地址</a>
                </li>
                <li>
                    <a href="#">关注我们</a>
                </li>
            </ul>
            <p>本网站版权归xxx技术有限公司所有，未经许可，不得转载。</p>
        </footer>
    </div>
</div>
<script>
    function login() {
        var form = document.forms[0];
        form.action = "<%=basePath %>user/login";
        form.method = "post";
        form.submit();
    }

    $(function () {


        $(".regist a")[0].onclick = function () {
            // window.open("register.html", "", "width=450, height=250, innerHeight=900, innerWidth=500");

            var url = "register.jsp";                            //转向网页的地址;
            var name = "";                           //网页名称，可为空;
            var iWidth = 450;                         //弹出窗口的宽度;
            var iHeight = 250;                        //弹出窗口的高度;
            //window.screen.height获得屏幕的高，window.screen.width获得屏幕的宽
            var iTop = (window.screen.height - 30 - iHeight) / 2;       //获得窗口的垂直位置;
            var iLeft = (window.screen.width - 10 - iWidth) / 2;        //获得窗口的水平位置;
            //window.open(url, name, 'height=' + iHeight + ',innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth=' + iWidth + ',top=' + iTop + ',left=' + iLeft + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no')
            window.location.href=url;
        }
    });
</script>
</body>
</html>
