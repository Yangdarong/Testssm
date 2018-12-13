<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>首页</title>
    <style type="text/css">
        a {
            text-decoration: none;
            color: #000;
            font-size: 18px;
        }

        h3 {
            width: 180px;
            height: 180px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 4px;
        }
    </style>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"/>

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    基于SSM框架的管理系统: 简单实现CRUD
                </h1>
            </div>
        </div>
    </div>
</div>
<br/>
<h3>
    <a href="${path }/login.jsp">点击进入管理页面</a>
</h3>
</body>
</html>
