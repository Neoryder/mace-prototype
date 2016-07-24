
<%@ page import="net.incuventure.DiagnosticProvider" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'diagnosticProvider.label', default: 'DiagnosticProvider')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-diagnosticProvider" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-diagnosticProvider" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list diagnosticProvider">
			
				<g:if test="${diagnosticProviderInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="diagnosticProvider.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${diagnosticProviderInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diagnosticProviderInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="diagnosticProvider.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${diagnosticProviderInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diagnosticProviderInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="diagnosticProvider.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${diagnosticProviderInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:diagnosticProviderInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${diagnosticProviderInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
