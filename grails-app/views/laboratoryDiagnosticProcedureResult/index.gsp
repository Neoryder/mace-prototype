
<%@ page import="net.incuventure.LaboratoryDiagnosticProcedureResult" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'laboratoryDiagnosticProcedureResult.label', default: 'LaboratoryDiagnosticProcedureResult')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-laboratoryDiagnosticProcedureResult" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-laboratoryDiagnosticProcedureResult" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="laboratoryDiagnosticProcedureResult.laboratoryDiagnosticProcedure.label" default="Laboratory Diagnostic Procedure" /></th>
					
						<g:sortableColumn property="value" title="${message(code: 'laboratoryDiagnosticProcedureResult.value.label', default: 'Value')}" />
					
						<g:sortableColumn property="unit" title="${message(code: 'laboratoryDiagnosticProcedureResult.unit.label', default: 'Unit')}" />
					
						<g:sortableColumn property="extractionDate" title="${message(code: 'laboratoryDiagnosticProcedureResult.extractionDate.label', default: 'Extraction Date')}" />
					
						<g:sortableColumn property="releaseDate" title="${message(code: 'laboratoryDiagnosticProcedureResult.releaseDate.label', default: 'Release Date')}" />
					
						<th><g:message code="laboratoryDiagnosticProcedureResult.member.label" default="Member" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${laboratoryDiagnosticProcedureResultInstanceList}" status="i" var="laboratoryDiagnosticProcedureResultInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${laboratoryDiagnosticProcedureResultInstance.id}">${fieldValue(bean: laboratoryDiagnosticProcedureResultInstance, field: "laboratoryDiagnosticProcedure")}</g:link></td>
					
						<td>${fieldValue(bean: laboratoryDiagnosticProcedureResultInstance, field: "value")}</td>
					
						<td>${fieldValue(bean: laboratoryDiagnosticProcedureResultInstance, field: "unit")}</td>
					
						<td><g:formatDate date="${laboratoryDiagnosticProcedureResultInstance.extractionDate}" /></td>
					
						<td><g:formatDate date="${laboratoryDiagnosticProcedureResultInstance.releaseDate}" /></td>
					
						<td>${fieldValue(bean: laboratoryDiagnosticProcedureResultInstance, field: "member")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${laboratoryDiagnosticProcedureResultInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
