
<%@ page import="net.incuventure.LaboratoryDiagnosticProcedure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'laboratoryDiagnosticProcedure.label', default: 'LaboratoryDiagnosticProcedure')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-laboratoryDiagnosticProcedure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-laboratoryDiagnosticProcedure" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'laboratoryDiagnosticProcedure.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="code" title="${message(code: 'laboratoryDiagnosticProcedure.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'laboratoryDiagnosticProcedure.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="amount" title="${message(code: 'laboratoryDiagnosticProcedure.amount.label', default: 'Amount')}" />
					
						<g:sortableColumn property="subType" title="${message(code: 'laboratoryDiagnosticProcedure.subType.label', default: 'Sub Type')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'laboratoryDiagnosticProcedure.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${laboratoryDiagnosticProcedureInstanceList}" status="i" var="laboratoryDiagnosticProcedureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${laboratoryDiagnosticProcedureInstance.id}">${fieldValue(bean: laboratoryDiagnosticProcedureInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: laboratoryDiagnosticProcedureInstance, field: "code")}</td>
					
						<td>${fieldValue(bean: laboratoryDiagnosticProcedureInstance, field: "type")}</td>
					
						<td>${fieldValue(bean: laboratoryDiagnosticProcedureInstance, field: "amount")}</td>
					
						<td>${fieldValue(bean: laboratoryDiagnosticProcedureInstance, field: "subType")}</td>
					
						<td>${fieldValue(bean: laboratoryDiagnosticProcedureInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${laboratoryDiagnosticProcedureInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
