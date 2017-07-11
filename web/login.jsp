<%--
  Created by IntelliJ IDEA.
  User: AS
  Date: 2017/7/7
  Time: 9:50
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" import="connectToSQL.connectSQL" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>登录/注册</title>
    <link rel="stylesheet" href="css/amazeui.css" />
    <link rel="stylesheet" href="css/other.min.css" />
</head>

<body class="login-container">

<div class="login-box">
    <div class="logo-img">
        <img src="img/logo2_03.png" alt="" />
    </div>
    <form method="post" action="Servlet?method=login" class="am-form" data-am-validator>
        <input type="hidden" name="method" value="login">
        <div class="am-form-group">
            <input type="text" name="ID" minlength="3" placeholder="输入账号">
        </div>

        <div class="am-form-group">
            <input type="password" name="password" placeholder="输入密码">
        </div>

        <button class="am-btn am-btn-secondary"  type="submit" name="action">登录</button>
    </form>
    <p></p>
    <a href="create.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;点击此处,注册新账号</a>
</div>

</body>
</html>