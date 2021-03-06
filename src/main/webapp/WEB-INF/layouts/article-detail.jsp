<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layouts/taglibs.jsp"%>

<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${article.title}</title>

<style type="text/css">
/*!
 * Clean Blog v1.0.0 (http://startbootstrap.com)
 * Copyright 2014 Start Bootstrap
 * Licensed under Apache 2.0 (https://github.com/IronSummitMedia/startbootstrap/blob/gh-pages/LICENSE)
 */
body {
	font-family: Lora, 'Times New Roman', serif;
	font-size: 20px;
	color: #404040
}

p {
	line-height: 1.5;
	margin: 15px 0
}

p a {
	text-decoration: underline
}

h1,h2,h3,h4,h5,h6 {
	font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-weight: 800;
	color: #000;
}

a {
	color: #404040
}

a:hover,a:focus {
	color: #0085a1
}

a img:hover,a img:focus {
	cursor: zoom-in
}

blockquote {
	color: gray;
	font-style: italic
}

hr.small {
	max-width: 100px;
	margin: 15px auto;
	border-width: 4px;
	border-color: #fff
}

.navbar-custom {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	z-index: 3;
	font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif
}

.navbar-custom .navbar-brand {
	font-weight: 800
}

.navbar-custom .nav li a {
	text-transform: uppercase;
	font-size: 12px;
	font-weight: 800;
	letter-spacing: 1px
}

@media only screen and (min-width:768px) {
	.navbar-custom {
		background: 0 0;
		border-bottom: 1px solid transparent
	}
	.navbar-custom .navbar-brand {
		color: #fff;
		padding: 20px
	}
	.navbar-custom .navbar-brand:hover,.navbar-custom .navbar-brand:focus {
		color: rgba(255, 255, 255, .8)
	}
	.navbar-custom .nav li a {
		color: #fff;
		padding: 20px
	}
	.navbar-custom .nav li a:hover,.navbar-custom .nav li a:focus {
		color: rgba(255, 255, 255, .8)
	}
}

@media only screen and (min-width:1170px) {
	.navbar-custom {
		-webkit-transition: background-color .3s;
		-moz-transition: background-color .3s;
		transition: background-color .3s;
		-webkit-transform: translate3d(0, 0, 0);
		-moz-transform: translate3d(0, 0, 0);
		-ms-transform: translate3d(0, 0, 0);
		-o-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0);
		-webkit-backface-visibility: hidden;
		backface-visibility: hidden
	}
	.navbar-custom.is-fixed {
		position: fixed;
		top: -61px;
		background-color: rgba(255, 255, 255, .9);
		border-bottom: 1px solid #f2f2f2;
		-webkit-transition: -webkit-transform .3s;
		-moz-transition: -moz-transform .3s;
		transition: transform .3s
	}
	.navbar-custom.is-fixed .navbar-brand {
		color: #404040
	}
	.navbar-custom.is-fixed .navbar-brand:hover,.navbar-custom.is-fixed .navbar-brand:focus
		{
		color: #0085a1
	}
	.navbar-custom.is-fixed .nav li a {
		color: #404040
	}
	.navbar-custom.is-fixed .nav li a:hover,.navbar-custom.is-fixed .nav li a:focus
		{
		color: #0085a1
	}
	.navbar-custom.is-visible {
		-webkit-transform: translate3d(0, 100%, 0);
		-moz-transform: translate3d(0, 100%, 0);
		-ms-transform: translate3d(0, 100%, 0);
		-o-transform: translate3d(0, 100%, 0);
		transform: translate3d(0, 100%, 0)
	}
}

.intro-header {
	background-color: gray;
	background: no-repeat center center;
	background-attachment: scroll;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
	-o-background-size: cover;
}

.intro-header .site-heading,.intro-header .post-heading,.intro-header .page-heading
	{
	padding: 100px 0 0;
	color: #fff
}

@media only screen and (min-width:768px) {
	.intro-header .site-heading,.intro-header .post-heading,.intro-header .page-heading
		{
		padding: 100px 0 0;
	}
}

.intro-header .site-heading,.intro-header .page-heading {
	text-align: center
}

.intro-header .site-heading h1,.intro-header .page-heading h1 {
	margin-top: 0;
	font-size: 50px
}

.intro-header .site-heading .subheading,.intro-header .page-heading .subheading
	{
	font-size: 16px;
	line-height: 1.1, display:block;
	font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-weight: 300;
	margin: 10px 0 0
}

@media only screen and (min-width:768px) {
	.intro-header .site-heading h1,.intro-header .page-heading h1 {
		font-size: 80px
	}
}

.intro-header .post-heading h1 {
	font-size: 40px
}

.intro-header .post-heading .subheading,.intro-header .post-heading .meta
	{
	line-height: 1.1;
	display: block
}

.intro-header .post-heading .subheading {
	font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-size: 16px;
	margin: 10px 0 30px;
	font-weight: 300
}

.intro-header .post-heading .meta {
	font-family: Lora, 'Times New Roman', serif;
	font-style: italic;
	font-weight: 300;
	font-size: 16px
}

.intro-header .post-heading .meta a {
	color: #000
}

@media only screen and (min-width:768px) {
	.intro-header .post-heading h1 {
		font-size: 40px
	}
	.intro-header .post-heading .subheading {
		font-size: 16px
	}
}

.post-preview>a {
	color: #404040
}

.post-preview>a:hover,.post-preview>a:focus {
	text-decoration: none;
	color: #0085a1
}

.post-preview>a>.post-title {
	font-size: 30px;
	margin-top: 30px;
	margin-bottom: 10px
}

.post-preview>a>.post-subtitle {
	margin: 0;
	font-weight: 300;
	margin-bottom: 10px
}

.post-preview>.post-meta {
	color: gray;
	font-size: 16px;
	margin-top: 0
}

.post-preview>.post-meta>a {
	text-decoration: none;
	color: #404040
}

.post-preview>.post-meta>a:hover,.post-preview>.post-meta>a:focus {
	color: #0085a1;
	text-decoration: underline
}

@media only screen and (min-width:768px) {
	.post-preview>a>.post-title {
		font-size: 36px
	}
}

.section-heading {
	font-size: 36px;
	margin-top: 60px;
	font-weight: 700
}

.caption {
	text-align: center;
	font-size: 14px;
	padding: 10px;
	font-style: italic;
	margin: 0;
	display: block;
	border-bottom-right-radius: 5px;
	border-bottom-left-radius: 5px
}

footer {
	padding: 50px 0 65px
}

footer .list-inline {
	margin: 0;
	padding: 0
}

footer .copyright {
	font-size: 14px;
	text-align: center;
	margin-bottom: 0
}

.floating-label-form-group {
	font-size: 14px;
	position: relative;
	margin-bottom: 0;
	padding-bottom: .5em;
	border-bottom: 1px solid #eee
}

.floating-label-form-group input,.floating-label-form-group textarea {
	z-index: 1;
	position: relative;
	padding-right: 0;
	padding-left: 0;
	border: none;
	border-radius: 0;
	font-size: 1.5em;
	background: 0 0;
	box-shadow: none !important;
	resize: none
}

.floating-label-form-group label {
	display: block;
	z-index: 0;
	position: relative;
	top: 2em;
	margin: 0;
	font-size: .85em;
	line-height: 1.764705882em;
	vertical-align: middle;
	vertical-align: baseline;
	opacity: 0;
	-webkit-transition: top .3s ease, opacity .3s ease;
	-moz-transition: top .3s ease, opacity .3s ease;
	-ms-transition: top .3s ease, opacity .3s ease;
	transition: top .3s ease, opacity .3s ease
}

.floating-label-form-group::not (:first-child ) {
	padding-left: 14px;
	border-left: 1px solid #eee;
}

.floating-label-form-group-with-value label {
	top: 0;
	opacity: 1
}

.floating-label-form-group-with-focus label {
	color: #0085a1
}

form .row:first-child .floating-label-form-group {
	border-top: 1px solid #eee
}

body {
	webkit-tap-highlight-color: #0085a1
}

</style>
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-custom navbar-fixed-top"
		style="background-image: url('http://ironsummitmedia.github.io/startbootstrap-clean-blog/img/home-bg.jpg')">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href='<spring:url value="/"></spring:url>'>Blog
					Michala Šípka</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<tiles:insertAttribute name="menu" />
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Body -->
	<tiles:insertAttribute name="body" />
	<hr>

	<!-- Footer -->
	<footer>
		<div class="container">
			<tiles:insertAttribute name="footer" />
		</div>
	</footer>

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
</body>
</html>

