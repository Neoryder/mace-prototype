
<%@ page import="net.incuventure.Claim" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'claim.label', default: 'Claim')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-claim" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-claim" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="claim.approval.label" default="Approval" /></th>
					
						<g:sortableColumn property="status" title="${message(code: 'claim.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="statusDate" title="${message(code: 'claim.statusDate.label', default: 'Status Date')}" />
					
						<g:sortableColumn property="amount" title="${message(code: 'claim.amount.label', default: 'Amount')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${claimInstanceList}" status="i" var="claimInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${claimInstance.id}">${fieldValue(bean: claimInstance, field: "approval")}</g:link></td>
					
						<td>${fieldValue(bean: claimInstance, field: "status")}</td>
					
						<td><g:formatDate date="${claimInstance.statusDate}" /></td>
					
						<td>${fieldValue(bean: claimInstance, field: "amount")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${claimInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
