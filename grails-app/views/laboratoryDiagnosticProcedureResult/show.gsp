
<%@ page import="net.incuventure.LaboratoryDiagnosticProcedureResult" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'laboratoryDiagnosticProcedureResult.label', default: 'LaboratoryDiagnosticProcedureResult')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-laboratoryDiagnosticProcedureResult" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-laboratoryDiagnosticProcedureResult" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list laboratoryDiagnosticProcedureResult">
			
				<g:if test="${laboratoryDiagnosticProcedureResultInstance?.laboratoryDiagnosticProcedure}">
				<li class="fieldcontain">
					<span id="laboratoryDiagnosticProcedure-label" class="property-label"><g:message code="laboratoryDiagnosticProcedureResult.laboratoryDiagnosticProcedure.label" default="Laboratory Diagnostic Procedure" /></span>
					
						<span class="property-value" aria-labelledby="laboratoryDiagnosticProcedure-label"><g:link controller="laboratoryDiagnosticProcedure" action="show" id="${laboratoryDiagnosticProcedureResultInstance?.laboratoryDiagnosticProcedure?.id}">${laboratoryDiagnosticProcedureResultInstance?.laboratoryDiagnosticProcedure?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureResultInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="laboratoryDiagnosticProcedureResult.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureResultInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureResultInstance?.unit}">
				<li class="fieldcontain">
					<span id="unit-label" class="property-label"><g:message code="laboratoryDiagnosticProcedureResult.unit.label" default="Unit" /></span>
					
						<span class="property-value" aria-labelledby="unit-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureResultInstance}" field="unit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureResultInstance?.extractionDate}">
				<li class="fieldcontain">
					<span id="extractionDate-label" class="property-label"><g:message code="laboratoryDiagnosticProcedureResult.extractionDate.label" default="Extraction Date" /></span>
					
						<span class="property-value" aria-labelledby="extractionDate-label"><g:formatDate date="${laboratoryDiagnosticProcedureResultInstance?.extractionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureResultInstance?.releaseDate}">
				<li class="fieldcontain">
					<span id="releaseDate-label" class="property-label"><g:message code="laboratoryDiagnosticProcedureResult.releaseDate.label" default="Release Date" /></span>
					
						<span class="property-value" aria-labelledby="releaseDate-label"><g:formatDate date="${laboratoryDiagnosticProcedureResultInstance?.releaseDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureResultInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="laboratoryDiagnosticProcedureResult.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${laboratoryDiagnosticProcedureResultInstance?.member?.id}">${laboratoryDiagnosticProcedureResultInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:laboratoryDiagnosticProcedureResultInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${laboratoryDiagnosticProcedureResultInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
