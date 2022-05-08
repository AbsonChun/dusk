<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<jsp:include page="../base/base.jsp"/>
<body>
<div class="body-content">
    <form action="${ctx}/loginController/toLogin.do">
        <div class="content">
            <div class="inp">
                <span>标题:</span><input type="text" name="title">
            </div>
            <div class="inp">
                <span>作者:</span><input type="text" name="author">
            </div>
            <div class="inp">
                <span>关键词:</span><input type="text" name="keyword">
            </div>
            <div>
                <textarea id="content" name="content" style="width:700px;height:300px;visibility:hidden;"></textarea>
            </div>
            <button class="submit" type="submit">保存</button>
        </div>
    </form>
</div>
</body>