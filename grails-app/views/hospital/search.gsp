
<%@ page import="net.incuventure.Hospital" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hospital.label', default: 'Hospital')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-hospital" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-hospital" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="companyName" title="${message(code: 'hospital.companyName.label', default: 'Company Name')}" />
					
						<g:sortableColumn property="hospitalCode" title="${message(code: 'hospital.hospitalCode.label', default: 'Hospital Code')}" />
					
						<g:sortableColumn property="coordinatorName" title="${message(code: 'hospital.coordinatorName.label', default: 'Coordinator Name')}" />
					
						<g:sortableColumn property="coordinatorNumber" title="${message(code: 'hospital.coordinatorNumber.label', default: 'Coordinator Number')}" />
					
						<g:sortableColumn property="mobileNumber" title="${message(code: 'hospital.mobileNumber.label', default: 'Mobile Number')}" />
					
						<g:sortableColumn property="landlineNumber" title="${message(code: 'hospital.landlineNumber.label', default: 'Landline Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${hospitalInstanceList}" status="i" var="hospitalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="display" id="${hospitalInstance.id}">${fieldValue(bean: hospitalInstance, field: "companyName")}</g:link></td>
					
						<td>${fieldValue(bean: hospitalInstance, field: "hospitalCode")}</td>
					
						<td>${fieldValue(bean: hospitalInstance, field: "coordinatorName")}</td>
					
						<td>${fieldValue(bean: hospitalInstance, field: "coordinatorNumber")}</td>
					
						<td>${fieldValue(bean: hospitalInstance, field: "mobileNumber")}</td>
					
						<td>${fieldValue(bean: hospitalInstance, field: "landlineNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${hospitalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
