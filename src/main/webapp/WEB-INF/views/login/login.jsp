<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<body>
    <div class="body-content">
        <h1>欢迎来到祖安论坛</h1>
        <form action="${ctx}/loginController/toLogin.do">
            <input type="text" name="loginName">
            <input type="password" name="password">
            <input type="checkbox" name="rememberMe" value="true"><p>记住密码</p>
            <input type="submit" value="登录">
        </form>
    </div>
</body>