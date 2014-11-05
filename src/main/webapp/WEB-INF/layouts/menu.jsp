<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../layouts/taglibs.jsp"%>
	
<a class="blog-nav-item active" href='<spring:url value="/articles?page=0"></spring:url>'>Články</a>
<a class="blog-nav-item" href='<spring:url value="/about.html"></spring:url>'>O mě</a>
<a class="blog-nav-item" href='<spring:url value="/projects.html"></spring:url>'>Projekty</a>
<a class="blog-nav-item" href='<spring:url value="/contacts.html"></spring:url>'>Kontakt</a>
<security:authorize access="! isAuthenticated()">
<a class="blog-nav-item pull-right" href='<spring:url value="/login.html"></spring:url>'>Přihlásit se</a>
</security:authorize>
<security:authorize access="isAuthenticated()">
<a class="blog-nav-item pull-right" href='<spring:url value="/logout"></spring:url>'>Odhlásit se</a>
<a class="blog-nav-item pull-right" href='<spring:url value="/admin/dashboard.html"></spring:url>'>Vstup do administrace</a>
</security:authorize>

