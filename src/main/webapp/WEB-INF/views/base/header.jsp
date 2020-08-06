<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<% String cssPath="http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/css/" ;%>
<% String imagePath="http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/image/" ;%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<jsp:include page="./base.jsp"/>
<link rel="stylesheet" type="text/css" href="<%=cssPath%>base/header.css" />
<header>
        <div class="content">
                <div class="float_left logo">
                    <img src="<%=imagePath%>logo.jpg">
                </div>
                <ul class="first-mune">
                        <li>1号菜单</li>
                        <li>2号菜单</li>
                        <li>3号菜单</li>
                        <li>4号菜单</li>
                </ul>
        </div>
</header>