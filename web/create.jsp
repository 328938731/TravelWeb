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
    <form action="" class="am-form" data-am-validator>

        <div class="am-form-group">
            <label for="newID"><i class="am-icon-key"></i></label>
            <input type="text" id="newID" minlength="3" placeholder="输入账号（至少 3 个字符）" required/>
        </div>

        <div class="am-form-group">
            <label for="newName"><i class="am-icon-key"></i></label>
            <input type="text" id="newName" minlength="3" placeholder="输入用户名（至少 3 个字符）" required/>
        </div>

        <div class="am-form-group">
            <label for="newPassword"><i class="am-icon-key"></i></label>
            <input type="password" id="newPassword" placeholder="输入密码" required/>
        </div>

        <div class="am-form-group">
            <label for="newPassword_check"><i class="am-icon-key"></i></label>
            <input type="password" id="newPassword_check" placeholder="确认密码" required/>
        </div>

        <button class="am-btn am-btn-secondary"  type="submit">注册</button>

    </form>
</div>
</body>
</html>

