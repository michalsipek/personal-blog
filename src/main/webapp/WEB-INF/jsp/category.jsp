<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layouts/taglibs.jsp"%>

<div class="row">
	<div class="col-6 col-sm-6 col-lg-4">
		<h1>Kategorie</h1>
		<c:forEach items="${categories}" var="category">
			<h4>${category.name}</h4>
		</c:forEach>

<form:form commandName="category" cssClass="form-horizontal">
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">Název:</label>
		<div class="col-sm-10">
			<form:input path="name" cssClass="form-control"/>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-2">
			<input type="submit" value="Uložit" class="btn btn-lg btn-primary" />
		</div>
	</div>
</form:form>


	</div>
</div>