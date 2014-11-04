<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../layouts/taglibs.jsp"%>
	
	<div class="sidebar-module sidebar-module-inset">
		
	</div>
	<div class="sidebar-module">
		<h4>Kategorie</h4>
		<ol class="list-unstyled">
		<c:forEach items="${categories}" var="category">
		<li><a href='<spring:url value="/articles/cat${category.id}?page=0"></spring:url>'>${category.name}</a></li>
		</c:forEach>
		</ol>
	</div>
	<div class="sidebar-module">
		<h4>Archiv</h4>
		<ol class="list-unstyled">
		<li><a href="">Leden 2014</a></li>
		<li><a href="">Únor 2014</a></li>
		<li><a href="">Březen 2014</a></li>
		<li><a href="">Duben 2014</a></li>
		<li><a href="">Květen 2014</a></li>
		<li><a href="">Červen 2014</a></li>
		<li><a href="">Červenec 2014</a></li>
		<li><a href="">Srpen 2014</a></li>
		<li><a href="">Září 2014</a></li>
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
<!-- /.blog-sidebar -->