<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layouts/taglibs.jsp"%>

<li><a href='<spring:url value="/blog?page=0"></spring:url>'>Domů</a></li>
<li><a href="">Rubriky</a></li>
<li><a href="">Archiv</a></li>
<li><a href='<spring:url value="/about.html"></spring:url>'>O
		mně</a></li>
<li><a href='<spring:url value="/contact.html"></spring:url>'>Kontakt</a></li>
<security:authorize access="! isAuthenticated()">
	<li><a href='<spring:url value="/login.html"></spring:url>'>Přihlásit
			se</a></li>
</security:authorize>
<security:authorize access="isAuthenticated()">
	<li><a href='<spring:url value="/logout"></spring:url>'>Odhlásit
			se</a></li>
	<li><a
		href='<spring:url value="/admin/dashboard.html"></spring:url>'>Administrace</a></li>
</security:authorize>
