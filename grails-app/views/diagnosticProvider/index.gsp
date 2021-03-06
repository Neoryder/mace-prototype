
<%@ page import="net.incuventure.DiagnosticProvider" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'diagnosticProvider.label', default: 'DiagnosticProvider')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-diagnosticProvider" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-diagnosticProvider" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'diagnosticProvider.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="code" title="${message(code: 'diagnosticProvider.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'diagnosticProvider.address.label', default: 'Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${diagnosticProviderInstanceList}" status="i" var="diagnosticProviderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${diagnosticProviderInstance.id}">${fieldValue(bean: diagnosticProviderInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: diagnosticProviderInstance, field: "code")}</td>
					
						<td>${fieldValue(bean: diagnosticProviderInstance, field: "address")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${diagnosticProviderInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
