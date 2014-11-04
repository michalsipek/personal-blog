<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layouts/taglibs.jsp"%>

<div class="row">
	<div class="col-sm-4">
		<h1>
			<strong>${user.name}</strong>
		</h1>
		<p>
			<strong>Email:</strong> ${user.email}
		</p>
		<p>
			<strong>Role:</strong> <c:forEach items="${user.roles}" var="roles">
				${roles.name}
			</c:forEach>
		</p>
		<!-- Button trigger modal -->
		<button class="btn btn-danger btn-xs" data-toggle="modal"
			data-target="#removeModal">
			<span class="glyphicon glyphicon-trash"></span> Odstranit účet
		</button>
	</div>
	<div class="col-sm-8">
		<div class="well well-lg">
			<h2>
				<strong>Moje články</strong>
			</h2>
			<table class="table">
				<thead>
					<tr>
						<th>Název</th>
						<th>Zveřejněno</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${user.articles}" var="article">
						<tr>
							<td>${article.title}</td>
							<td>${article.publishDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="removeModal" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Zavřít</span>
				</button>
				<h4 class="modal-title" id="myModalLabel"><strong>Odstranit uživatele</strong></h4>
			</div>
			<div class="modal-body">Opravdu chcete tohoto uživatele
				odstranit?</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Storno</button>
				<a href="<spring:url value="/admin/users/remove/${id}.html" />"
					class="btn btn-danger">Odstranit uživatele</a>
			</div>
		</div>
	</div>
</div>

