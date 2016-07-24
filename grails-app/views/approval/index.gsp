
<%@ page import="net.incuventure.Approval" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'approval.label', default: 'Approval')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-approval" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-approval" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="approval.member.label" default="Member" /></th>
					
						<th><g:message code="approval.doctor.label" default="Doctor" /></th>
					
						<th><g:message code="approval.hospital.label" default="Hospital" /></th>
					
						<th><g:message code="approval.laboratoryDiagnosticProcedure.label" default="Laboratory Diagnostic Procedure" /></th>
					
						<th><g:message code="approval.basicTest.label" default="Basic Test" /></th>
					
						<g:sortableColumn property="requestDate" title="${message(code: 'approval.requestDate.label', default: 'Request Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${approvalInstanceList}" status="i" var="approvalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${approvalInstance.id}">${fieldValue(bean: approvalInstance, field: "member")}</g:link></td>
					
						<td>${fieldValue(bean: approvalInstance, field: "doctor")}</td>
					
						<td>${fieldValue(bean: approvalInstance, field: "hospital")}</td>
					
						<td>${fieldValue(bean: approvalInstance, field: "laboratoryDiagnosticProcedure")}</td>
					
						<td>${fieldValue(bean: approvalInstance, field: "basicTest")}</td>
					
						<td><g:formatDate date="${approvalInstance.requestDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${approvalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
