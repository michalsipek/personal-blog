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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title"></tiles:getAsString></title>

<style type="text/css">

/*
 * Globals
 */
body {
	font-family: Georgia, "Times New Roman", Times, serif;
	color: #555;
}

h1,.h1,h2,.h2,h3,.h3,h4,.h4,h5,.h5,h6,.h6 {
	margin-top: 0;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-weight: normal;
	color: #333;
}

p{
	font-size: 16px;
}

/*
 * Override Bootstrap's default container.
 */
@media ( min-width : 1200px) {
	.container {
		width: 970px;
	}
}

/*
 * Masthead for nav
 */
.blog-masthead {
	background-color: #428bca;
	-webkit-box-shadow: inset 0 -2px 5px rgba(0, 0, 0, .1);
	box-shadow: inset 0 -2px 5px rgba(0, 0, 0, .1);
}

/* Nav links */
.blog-nav-item {
	position: relative;
	display: inline-block;
	padding: 10px;
	font-weight: 500;
	color: #cdddeb;
}

.blog-nav-item:hover,.blog-nav-item:focus {
	color: #fff;
	text-decoration: none;
}

/* Active state gets a caret at the bottom */
.blog-nav .active {
	color: #fff;
}

.blog-nav .active:after {
	position: absolute;
	bottom: 0;
	left: 50%;
	width: 0;
	height: 0;
	margin-left: -5px;
	vertical-align: middle;
	content: " ";
	border-right: 5px solid transparent;
	border-bottom: 5px solid;
	border-left: 5px solid transparent;
}

/*
 * Blog name and description
 */
.blog-header {
	padding-top: 20px;
	padding-bottom: 20px;
}

.blog-title {
	margin-top: 30px;
	margin-bottom: 0;
	font-size: 50px;
	font-weight: normal;
}

.blog-description {
	font-size: 20px;
	color: #999;
}

/*
 * Main column and sidebar layout
 */
.blog-main {
	font-size: 18px;
	line-height: 1.5;
}

/* Sidebar modules for boxing content */
.sidebar-module {
	padding: 15px;
	margin: 0 -15px 15px;
}

.sidebar-module-inset {
	padding: 15px;
	background-color: #f5f5f5;
	border-radius: 4px;
}

.sidebar-module-inset p:last-child,.sidebar-module-inset ul:last-child,.sidebar-module-inset ol:last-child
	{
	margin-bottom: 0;
}

/* Pagination */
.pager {
	margin-bottom: 60px;
	text-align: left;
}

.pager>li>a {
	width: 140px;
	padding: 10px 20px;
	text-align: center;
	border-radius: 30px;
}

/*
 * Blog posts
 */
.blog-post {
	margin-bottom: 60px;
}

.blog-post-title {
	margin-bottom: 5px;
	font-size: 25px;
	font-family: Georgia,serif;
}

.blog-post-meta {
	margin-bottom: 15px;
	color: #999;
}
.blog-post-perex {
	font-size: 15px;
}

/*
 * Footer
 */
.blog-footer {
	padding: 40px 0;
	color: #999;
	text-align: center;
	background-color: #f9f9f9;
	border-top: 1px solid #e5e5e5;
}

.blog-footer p:last-child {
	margin-bottom: 0;
}
</style>
</head>
<body>
	<div class="blog-masthead">
		<div class="container">
			<nav class="blog-nav">
				<tiles:insertAttribute name="menu" />
			</nav>
		</div>
	</div>
	<div class="container">
		<div class="blog-header">
			<tiles:insertAttribute name="header" />
		</div>
		<div class="row">
			<div class="col-sm-8 blog-main">
				<tiles:insertAttribute name="body" />
			</div>
			<!-- /.blog-main -->
			<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
				<tiles:insertAttribute name="sidebar" />
			</div>
			<!-- /.blog-sidebar -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<div class="blog-footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>

