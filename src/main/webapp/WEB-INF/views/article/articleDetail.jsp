<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<jsp:include page="../base/base.jsp"/>
<body>
    <div class="body-content">
            <div class="content">
                <div class="content-header">
                    <div class="content-header-title">
                        <h1>${article.title}</h1>
                    </div>
                    <div class="content-header-tips">
                        <ul>
                            <li><span>${article.author}</span></li>
                            <li><span>${article.keyword}</span></li>
                            <li><span><fmt:formatDate value="${article.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/></span></li>
                        </ul>
                    </div>
                </div>
                <div class="content-body">
                    <p>${article.content}</p>
                </div>
            </div>

    </div>
</body>