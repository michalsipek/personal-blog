<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layouts/taglibs.jsp"%>

<!-- Message alerts -->
<c:if test="${param.success eq true}">
	<div class="alert alert-success">
		<a href="#" class="close" id="alert-message" data-dismiss="alert">&times;</a>
		<strong>Info: </strong> Rubrika byla úspěšně přidána.
	</div>
</c:if>
<c:if test="${param.remove eq true}">
	<div class="alert alert-success">
		<a href="#" class="close" id="alert-message" data-dismiss="alert">&times;</a>
		<strong>Info: </strong> Rubrika byla úspěšně odstraněna.
	</div>
</c:if>
<c:if test="${param.update eq true}">
	<div class="alert alert-success">
		<a href="#" class="close" id="alert-message" data-dismiss="alert">&times;</a>
		<strong>Info: </strong> Rubrika byla úspěšně aktualizována.
	</div>
</c:if>
<!-- End of message alerts -->

<div class="panel panel-default">
	<div class="panel-heading">
		<strong>Přidat rubriku</strong>
	</div>
	<div class="panel-body">
		<form:form commandName="category" cssClass="form-horizontal registrationForm">
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">Název</label>
				<div class="col-sm-8">
					<form:input path="name" cssClass="form-control" />
					<form:errors path="name"/>
				</div>
				<div class="col-sm-2">
					<input type="submit" value="Uložit" class="btn btn-primary" />
				</div>
			</div>
		</form:form>
	</div>
</div>


<div class="panel panel-default table-responsive">
	<table class="table table-hover table-striped">
		<thead>
			<tr>
				<th>Rubriky</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${categories}" var="category">
				<tr>
					<td><a
						href='<spring:url value="/admin/categories/${category.id}.html"></spring:url>'>
							${category.name} <span class="badge">42</span> </a></td>
					<td><a
						href="<spring:url value="/admin/categories/edit/${category.id}.html" />"
						class="btn btn-xs btn-default pull-right"><span
							class="glyphicon glyphicon-pencil"></span> Upravit</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>