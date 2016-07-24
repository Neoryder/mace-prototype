
<%@ page import="net.incuventure.LaboratoryDiagnosticProcedure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'laboratoryDiagnosticProcedure.label', default: 'LaboratoryDiagnosticProcedure')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-laboratoryDiagnosticProcedure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-laboratoryDiagnosticProcedure" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list laboratoryDiagnosticProcedure">
			
				<g:if test="${laboratoryDiagnosticProcedureInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="laboratoryDiagnosticProcedure.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="laboratoryDiagnosticProcedure.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="laboratoryDiagnosticProcedure.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="laboratoryDiagnosticProcedure.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureInstance?.subType}">
				<li class="fieldcontain">
					<span id="subType-label" class="property-label"><g:message code="laboratoryDiagnosticProcedure.subType.label" default="Sub Type" /></span>
					
						<span class="property-value" aria-labelledby="subType-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureInstance}" field="subType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="laboratoryDiagnosticProcedure.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureInstance?.abbreviation}">
				<li class="fieldcontain">
					<span id="abbreviation-label" class="property-label"><g:message code="laboratoryDiagnosticProcedure.abbreviation.label" default="Abbreviation" /></span>
					
						<span class="property-value" aria-labelledby="abbreviation-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureInstance}" field="abbreviation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureInstance?.highValue}">
				<li class="fieldcontain">
					<span id="highValue-label" class="property-label"><g:message code="laboratoryDiagnosticProcedure.highValue.label" default="High Value" /></span>
					
						<span class="property-value" aria-labelledby="highValue-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureInstance}" field="highValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureInstance?.lowValue}">
				<li class="fieldcontain">
					<span id="lowValue-label" class="property-label"><g:message code="laboratoryDiagnosticProcedure.lowValue.label" default="Low Value" /></span>
					
						<span class="property-value" aria-labelledby="lowValue-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureInstance}" field="lowValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratoryDiagnosticProcedureInstance?.unit}">
				<li class="fieldcontain">
					<span id="unit-label" class="property-label"><g:message code="laboratoryDiagnosticProcedure.unit.label" default="Unit" /></span>
					
						<span class="property-value" aria-labelledby="unit-label"><g:fieldValue bean="${laboratoryDiagnosticProcedureInstance}" field="unit"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:laboratoryDiagnosticProcedureInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${laboratoryDiagnosticProcedureInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
