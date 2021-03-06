<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layouts/taglibs.jsp"%>

<div class="blog-post">
	<c:forEach items="${category.articles}" var="article">
		<c:if test="${article.enable == 1}">
			<h2 class="blog-post-title">
				<a
					href='<spring:url value="/articles/${article.id}.html"></spring:url>'>${article.title}</a>
			</h2>
			<p class="blog-post-meta">
				<span class="glyphicon glyphicon-calendar"></span>
				<fmt:formatDate value="${article.publishDate}"
					pattern="dd.MM.yyyy HH:mm" />
				<span class="glyphicon glyphicon-user"></span> ${article.user.name}
			</p>
			<p>${article.perex}</p>
			<a
				href='<spring:url value="/articles/${article.id}.html"></spring:url>'
				style="font-size: 14px">Zobrazit celý článek</a>
			<hr>
		</c:if>
	</c:forEach>
</div>



