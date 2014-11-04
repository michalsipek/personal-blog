<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layouts/taglibs.jsp"%>

<script type="text/javascript">
	document.body.style.zoom = "90%"
</script>

<div class="blog-post">
	<c:forEach items="${articles}" var="article">
		<h2 class="blog-post-title"><a href='<spring:url value="/articles/${article.id}.html"></spring:url>' >${article.title}</a></h2>
		<p class="blog-post-meta">
			<span class="glyphicon glyphicon-calendar" ></span> <fmt:formatDate value="${article.publishDate}" pattern="dd.MM.yyyy HH:mm"/>
			<span class="glyphicon glyphicon-user"></span> ${article.user.name}</p>   
		<p>${article.perex}</p>
		<hr>
	</c:forEach>
</div>

<ul class="pager ">
	<c:if test="${page > 0}">
		<li class="previous"><a
			href='<spring:url value="/articles?page=${page-1}"></spring:url>'>Předchozí</a></li>
	</c:if>
	<c:if test="${page < sizeArticles / limitResultsPerPage-1}">
		<li class="next"><a
			href='<spring:url value="/articles?page=${page+1}"></spring:url>'>Další</a></li>
	</c:if>
</ul>

