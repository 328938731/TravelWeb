<%--
  Created by IntelliJ IDEA.
  User: AS
  Date: 2017/7/7
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <form method="post" action="Servlet?method=create" class="am-form" data-am-validator>
        <input type="hidden" name="method" value="create">
        <div class="am-form-group">
            <input type="text" name="newID" minlength="3" placeholder="输入账号（至少 3 个字符）" required/>
        </div>

        <div class="am-form-group">
            <input type="text" name="newName" minlength="3" placeholder="输入用户名（至少 3 个字符）" required/>
        </div>

        <div class="am-form-group">
            <input type="password" name="newPassword" placeholder="输入密码" required/>
        </div>

        <div class="am-form-group">
            <input type="password" name="newPassword_check" placeholder="确认密码" required/>
        </div>

        <button class="am-btn am-btn-secondary"  type="submit">注册</button>

    </form>
</div>
</body>
</html>

