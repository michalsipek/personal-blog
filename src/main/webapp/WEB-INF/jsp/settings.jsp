<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layouts/taglibs.jsp"%>

    <ul class="nav nav-tabs" role="tablist">
  <li class="active"><a href="#profile" role="tab" data-toggle="tab">Můj profil</a></li>
   <li><a href="#roles" role="tab" data-toggle="tab">Uživatelské role</a></li>
</ul>

<div class="tab-content">
  <div class="tab-pane active" id="profile">
  	profil
  </div>
  <div class="tab-pane" id="roles">
  	<c:forEach items="${roles}" var="role">
  		<p><c:out value="${role.name}"/></p>
  	</c:forEach>
  </div>
</div>

<script>
$('#myTab a').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})
</script>