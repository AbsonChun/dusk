<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<% String cssPath = "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/css/";%>
<link rel="stylesheet" type="text/css" href="<%=cssPath%>login.css"/>
<body>
<div class="body-content">
    <h1>欢迎来到祖安论坛</h1>
    <div class="login-bg">
        <div class="login-form">
            <form action="${ctx}/loginController/toLogin.do">
                <div class="inp">
                    <span>账号:</span><input type="text" name="loginName">
                </div>
                <div class="inp">
                    <span>密码:</span><input type="password" name="password">
                </div>
                <div class="inp">
                    <span>验证码:</span><input type="text" name="check_key" class="check_key">
                    <div></div>
                </div>
                <div class="inp">
                    <input class="checkbox" type="checkbox" name="rememberMe" value="true"><span>记住密码</span>
                </div>
                <button class="submit" type="submit">登录</button>
            </form>
        </div>
    </div>
</div>
</body>