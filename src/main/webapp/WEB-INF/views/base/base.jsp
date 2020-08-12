<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<% String basePath="http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/views/base/"  ;%>
<% String cssPath="http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/css/"  ;%>
<% String jsPath="http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/js/"  ;%>
<% String imagePath="http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/css/image/"  ;%>
<jsp:include page="./base_lib.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="<%=cssPath%>main.css" />

<script src="<%=jsPath%>jquery-1.7.2.js" type="text/javascript"></script>
<script src="<%=jsPath%>jquery-1.7.2.min.js" type="text/javascript"></script>


