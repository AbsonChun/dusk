<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<% String cssPath="http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/css/" ;%>
<jsp:include page="./base.jsp"/>
<link rel="stylesheet" type="text/css" href="<%=cssPath%>base/footer.css" />
<footer>
    <div class="content">
        我是脚！
    </div>
</footer>
