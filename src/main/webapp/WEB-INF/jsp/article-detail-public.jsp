<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layouts/taglibs.jsp"%>

<div class="blog-post">
		<h2 class="blog-post-title">${article.title}</h2>  
		<p class="blog-post-perex">${article.perex}</p>
		<p class="blog-post-meta">
			<span class="glyphicon glyphicon-calendar" ></span> <fmt:formatDate value="${article.publishDate}" pattern="dd.MM.yyyy HH:mm"/>
			<span class="glyphicon glyphicon-user"></span> ${article.user.name}</p> 
		<p style="font-size: 10px">${article.content}</p>
</div>
<h3>Komentáře</h3><hr>
 <div class="fb-comments" data-width="100%" data-href="http://www.seznam.cz" data-numposts="5" data-colorscheme="light"></div>
 
 <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/cs_CZ/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
    