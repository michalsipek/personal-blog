<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layouts/taglibs.jsp"%>

<c:forEach items="${articles}" var="article">
	<c:if test="${article.enable == 1}">
		<div class="post-preview">
			<h2 class="post-title">
				<a
					href='<spring:url value="/articles/${article.id}.html"></spring:url>'>${article.title}</a>
			</h2>
			<p class="post-meta">
				Zveřejnil <a href="#">${article.user.name}</a> dne
				<fmt:formatDate value="${article.publishDate}"
					pattern="dd.MM.yyyy HH:mm" />
			</p>
			<h3 class="post-subtitle">${article.perex}</h3>
			<p class="post-meta">
				<a
					href='<spring:url value="/articles/${article.id}.html"></spring:url>'>Zobrazit
					celý článek</a>
			</p>
			<hr>
		</div>
	</c:if>
</c:forEach>

<ul class="pager">
	<c:if test="${page > 0}">
		<li class="previous"><a
			href='<spring:url value="/blog?page=${page-1}"></spring:url>'>Předchozí</a></li>
	</c:if>
	<c:if test="${page < sizeArticles / limitResultsPerPage-1}">
		<li class="next"><a
			href='<spring:url value="/blog?page=${page+1}"></spring:url>'>Další</a></li>
	</c:if>
</ul>

<div id="fb-root"></div>
<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/cs_CZ/sdk.js#xfbml=1&version=v2.0";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>

