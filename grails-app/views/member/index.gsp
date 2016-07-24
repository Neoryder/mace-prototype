
<%@ page import="net.incuventure.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-member" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="userNumber" title="${message(code: 'member.userNumber.label', default: 'User Number')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'member.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="middleName" title="${message(code: 'member.middleName.label', default: 'Middle Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'member.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="companyName" title="${message(code: 'member.companyName.label', default: 'Company Name')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'member.gender.label', default: 'Gender')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${memberInstanceList}" status="i" var="memberInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${memberInstance.id}">${fieldValue(bean: memberInstance, field: "userNumber")}</g:link></td>
					
						<td>${fieldValue(bean: memberInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "middleName")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "companyName")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "gender")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${memberInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
