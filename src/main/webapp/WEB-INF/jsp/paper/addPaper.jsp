<%--
  Created by IntelliJ IDEA.
  User: 杨鑫荣
  Date: 2018/12/7
  Time: 22:08
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
<html>
<head>
    <title>新增论文</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        基于SSM框架的管理系统: 简单实现增删改查
                    </h1>
                </div>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>新增论文</small>
                    </h1>
                </div>
            </div>
        </div>


        <form action="" name="userForm">
            论文名称: <input type="text" name="paperName" title="" /><br/><br/>
            论文数量: <input type="text" name="paperNum" title="" /><br/><br/>
            论文详情: <input type="text" name="paperDetail" title="" /><br/><br/>
            <input type="button" value="添加" onclick="addPaper()">
        </form>
    </div>

    <script type="text/javascript">
        function addPaper() {
            var form = document.forms[0];
            form.action = "<%=basePath %>paper/addPaper";
            form.method = "post";
            form.submit();
        }
    </script>
</body>
</html>
