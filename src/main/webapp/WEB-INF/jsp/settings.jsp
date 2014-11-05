<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layouts/taglibs.jsp"%>

<ul class="nav nav-tabs" role="tablist">
	<li class="active"><a href="#profile" role="tab" data-toggle="tab">Můj
			profil</a></li>
	<security:authorize access="hasRole('ROLE_ADMIN')">
		<li><a href="#roles" role="tab" data-toggle="tab">Uživatelské
				role</a></li>
		<li><a href="#archives" role="tab" data-toggle="tab">Položky
				archivu</a></li>
	</security:authorize>
</ul>

<div class="tab-content">
	<div class="tab-pane active" id="profile">profil</div>
	<div class="tab-pane" id="roles">
		<c:forEach items="${roles}" var="role">
			<p>
				<c:out value="${role.name}" />
			</p>
		</c:forEach>
	</div>
	<div class="tab-pane" id="archives">
		<div class="col-sm-2">
			<br>
			<c:forEach items="${archives}" var="archive">
				<p>
					<c:out value="${archive.title}" />
					<a
						href="<spring:url value="/admin/settings/removeArchive/${archive.id}"></spring:url>">
						X</a>
				</p>
			</c:forEach>
		</div>
		<div class="col-sm-10">
			<br>
			<form:form commandName="archive"
				cssClass="form-horizontal registrationForm">
				<div class="form-group">
					<label for="title" class="col-sm-4 control-label">Titulek</label>
					<div class="col-sm-4">
						<form:input path="title" cssClass="form-control" />
						<form:errors path="title" />
					</div>
				</div>

				<div class="form-group">
					<label for="location" class="col-sm-4 control-label">/archive?date=</label>
					<div class="col-sm-4">
						<form:input path="location" type="text" class="form-control"
							placeholder="yyyy-MM" />
						<form:errors path="location" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-8">
						<input type="submit" value="Uložit"
							class="btn btn-primary pull-right">
					</div>
				</div>

			</form:form>
		</div>
	</div>
</div>

<script>
	$('#myTab a').click(function(e) {
		e.preventDefault()
		$(this).tab('show')
	})
</script>