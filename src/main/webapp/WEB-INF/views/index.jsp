<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<% String ctx="http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/" ;%>
<jsp:include page="./base/base.jsp"/>
<jsp:include page="./base/header.jsp"></jsp:include>
<div id="main">
        <body>
                <div class="body-content">
                        <table class="contentTable">
                        <c:forEach items="${articleList}" var="cur" varStatus="st">
                                <tr>
                                        <th><a href="#" onclick="goToArticle('${cur.id}','${cur.type}')"  class="align_left">${cur.title}</a></th>
                                </tr>
                        </c:forEach>
                        </table>
                </div>
        </body>
</div>
<jsp:include page="./base/footer.jsp"></jsp:include>
<script type="text/javascript">
        function goToArticle(id,type) {
            var url = "<%=ctx%>articleController/getArticleById.do?id=" + id + "&type=" + type;
            $("#main").load(url);
        }
</script>