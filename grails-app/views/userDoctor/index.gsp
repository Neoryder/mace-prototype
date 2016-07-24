
<%@ page import="net.incuventure.UserDoctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userDoctor.label', default: 'UserDoctor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userDoctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userDoctor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="userDoctor.doctor.label" default="Doctor" /></th>
					
						<th><g:message code="userDoctor.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userDoctorInstanceList}" status="i" var="userDoctorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userDoctorInstance.id}">${fieldValue(bean: userDoctorInstance, field: "doctor")}</g:link></td>
					
						<td>${fieldValue(bean: userDoctorInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userDoctorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
