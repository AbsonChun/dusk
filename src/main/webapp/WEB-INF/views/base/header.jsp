<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% String ctx = "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
<% String cssPath = "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/css/";%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<jsp:include page="./base.jsp"/>
<link rel="stylesheet" type="text/css" href="<%=cssPath%>base/header.css"/>
<head>
    <title>${name}</title>
</head>
<header>
    <div class="content">
        <div class="float_left logo">
            <img src="<%=cssPath%>image/logo.jpg">
        </div>
        <ul class="first-mune">
            <li><a href="<%=ctx%>indexController/index.do">首页</a></li>
            <c:forEach items="${menuList}" var="cur" varStatus="st">
                <li><a href="#" onclick="loadMenu('${cur.url}')">${cur.name}</a></li>
            </c:forEach>
        </ul>
    </div>
</header>
<script type="text/javascript">
    function loadMenu(url) {
        var hurl = "<%=ctx%>" + url;
        window.open(hurl);
    };
</script>