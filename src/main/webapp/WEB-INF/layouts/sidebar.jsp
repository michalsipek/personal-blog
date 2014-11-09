<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layouts/taglibs.jsp"%>

<div class="sidebar-module">
	<h4>Rubriky</h4>
	<ol class="list-unstyled">
		<c:forEach items="${categories}" var="category">
			<li><a
				href='<spring:url value="/articles/cat${category.id}?page=0"></spring:url>'>${category.name}</a></li>
		</c:forEach>
	</ol>
</div>

<div class="sidebar-module">
	<h4>Archiv</h4>
	<ol class="list-unstyled">
		<c:forEach items="${archives}" var="archive">
			<li><a
				href='<spring:url value="${archive.location}"></spring:url>'>${archive.title}</a></li>
		</c:forEach>
	</ol>
</div>
<div class="sidebar-module">
	<h4>Další zdroje</h4>
	<ol class="list-unstyled">
		<li><a href="#">GitHub</a></li>
		<li><a href="#">LinkedIn</a></li>
		<li><a href="#">Facebook</a></li>
	</ol>
</div>
</div>
<!-- /.blog-sidebar -->