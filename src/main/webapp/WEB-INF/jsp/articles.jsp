<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layouts/taglibs.jsp"%>

<div class="col-sm-9 col-md-10">
	<ol class="breadcrumb">
		<li><a href='<spring:url value="/admin/articles/new.html"></spring:url>'>Nový příspěvek</a></li>
	</ol>
	<div class="row">
		<c:forEach items="${articles}" var="article">
			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-body">
						<p>${article.title}</p>
						<a
							href="<spring:url value="/admin/articles/${article.id}.html" />"><img
							src="https://tce-live.s3.amazonaws.com/static/assets/images/article_icon_219.png"
							class="img-responsive" alt="" /></a>
					</div>
					<div class="panel-footer">
						<p>
							<span class="glyphicon glyphicon-user"></span> <a
								href="<spring:url value="/admin/users/${article.user.id}.html" />">${article.user.name}</a>
						</p>
						<p>
							<span class="glyphicon glyphicon-calendar"></span>
							<fmt:formatDate value="${article.publishDate}"
								pattern="dd.MM.yyyy" />
						</p>
					</div>

				</div>
			</div>
		</c:forEach>
	</div>
</div>

