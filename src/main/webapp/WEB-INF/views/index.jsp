<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<% String ctx="http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/" ;%>
<jsp:include page="./base/base.jsp"/>
<jsp:include page="./base/header.jsp"></jsp:include>
<div id="main">
        <body>
                <div class="body-content">
                        <c:forEach items="${articleList}" var="cur" varStatus="st">
                                <h1> <a href="#" onclick="goToArticle('${cur.id}','${cur.type}')">${cur.title}</a></h1>
                        </c:forEach>
                        <h1>1</h1>
                        <h1>2</h1>
                        <h1>3</h1>
                        <h1>4</h1>
                        <h1>5</h1>
                        <h1>6</h1>
                        <h1>7</h1>
                        <h1>8</h1>
                        <h1>9</h1>
                        <h1>1</h1>
                        <h1>2</h1>
                        <h1>3</h1>
                        <h1>4</h1>
                        <h1>5</h1>
                        <h1>6</h1>
                        <h1>7</h1>
                        <h1>8</h1>
                        <h1>9</h1>
                </div>
        </body>
</div>
<jsp:include page="./base/footer.jsp"></jsp:include>
<script type="text/javascript">
        function goToArticle(id,type){
                var url = "<%=ctx%>articleController/getArticleById.do?id="+id+"&type="+type;
                $('#main').load(url);
        };
</script>