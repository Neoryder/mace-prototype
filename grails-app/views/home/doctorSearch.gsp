
<%@ page import="net.incuventure.Doctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-doctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-doctor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="userNumber" title="${message(code: 'doctor.userNumber.label', default: 'User Number')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'doctor.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="middleName" title="${message(code: 'doctor.middleName.label', default: 'Middle Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'doctor.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="companyName" title="${message(code: 'doctor.companyName.label', default: 'Company Name')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'doctor.gender.label', default: 'Gender')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${doctorInstanceList}" status="i" var="doctorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="display" id="${doctorInstance.id}">${fieldValue(bean: doctorInstance, field: "userNumber")}</g:link></td>
					
						<td>${fieldValue(bean: doctorInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: doctorInstance, field: "middleName")}</td>
					
						<td>${fieldValue(bean: doctorInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: doctorInstance, field: "companyName")}</td>
					
						<td>${fieldValue(bean: doctorInstance, field: "gender")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${doctorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
