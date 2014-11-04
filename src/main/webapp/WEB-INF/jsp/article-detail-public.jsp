<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layouts/taglibs.jsp"%>

<script type="text/javascript">
	document.body.style.zoom = "90%"
</script>

<div class="blog-post">
		<h2 class="blog-post-title">${article.title}</h2>  
		<p class="blog-post-perex">${article.perex}</p>
		<p class="blog-post-meta">
			<span class="glyphicon glyphicon-calendar" ></span> <fmt:formatDate value="${article.publishDate}" pattern="dd.MM.yyyy HH:mm"/>
			<span class="glyphicon glyphicon-user"></span> ${article.user.name}</p> 
		<p>${article.content}</p>
</div>

 <div id="disqus_thread"></div>
    <script type="text/javascript">
        /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
        var disqus_shortname = 'blogmichalapka'; // required: replace example with your forum shortname

        /* * * DON'T EDIT BELOW THIS LINE * * */
        (function() {
            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
    </script>
    <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
    