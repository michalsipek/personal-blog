<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layouts/taglibs.jsp"%>

<!-- Page Header -->
<header class="intro-header">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<div class="post-heading">
					<h1>${article.title}</h1>
					<h2 class="subheading">${article.perex}</h2>
					<span class="meta" style="color: black;">Zveřejnil
						${article.user.name} dne <fmt:formatDate
							value="${article.publishDate}" pattern="dd.MM.yyyy HH:mm" />
					</span>
				</div>
			</div>
		</div>
	</div>
</header>

<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
			${article.content} <br>
			<h3>Komentáře</h3>
			<hr>
			<div class="fb-comments" data-width="100%"
				data-href="http://www.sipekmichal.com/articles/${article.id}.html"
				data-numposts="5" data-colorscheme="light"></div>
		</div>
	</div>
</div>