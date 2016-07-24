
<%@ page import="net.incuventure.Approval" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'approval.label', default: 'Approval')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-approval" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-approval" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list approval">
			
				<g:if test="${approvalInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="approval.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${approvalInstance?.member?.id}">${approvalInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${approvalInstance?.doctor}">
				<li class="fieldcontain">
					<span id="doctor-label" class="property-label"><g:message code="approval.doctor.label" default="Doctor" /></span>
					
						<span class="property-value" aria-labelledby="doctor-label"><g:link controller="doctor" action="show" id="${approvalInstance?.doctor?.id}">${approvalInstance?.doctor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${approvalInstance?.hospital}">
				<li class="fieldcontain">
					<span id="hospital-label" class="property-label"><g:message code="approval.hospital.label" default="Hospital" /></span>
					
						<span class="property-value" aria-labelledby="hospital-label"><g:link controller="hospital" action="show" id="${approvalInstance?.hospital?.id}">${approvalInstance?.hospital?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${approvalInstance?.laboratoryDiagnosticProcedure}">
				<li class="fieldcontain">
					<span id="laboratoryDiagnosticProcedure-label" class="property-label"><g:message code="approval.laboratoryDiagnosticProcedure.label" default="Laboratory Diagnostic Procedure" /></span>
					
						<span class="property-value" aria-labelledby="laboratoryDiagnosticProcedure-label"><g:link controller="laboratoryDiagnosticProcedure" action="show" id="${approvalInstance?.laboratoryDiagnosticProcedure?.id}">${approvalInstance?.laboratoryDiagnosticProcedure?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${approvalInstance?.basicTest}">
				<li class="fieldcontain">
					<span id="basicTest-label" class="property-label"><g:message code="approval.basicTest.label" default="Basic Test" /></span>
					
						<span class="property-value" aria-labelledby="basicTest-label"><g:link controller="basicTest" action="show" id="${approvalInstance?.basicTest?.id}">${approvalInstance?.basicTest?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${approvalInstance?.requestDate}">
				<li class="fieldcontain">
					<span id="requestDate-label" class="property-label"><g:message code="approval.requestDate.label" default="Request Date" /></span>
					
						<span class="property-value" aria-labelledby="requestDate-label"><g:formatDate date="${approvalInstance?.requestDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${approvalInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="approval.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${approvalInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${approvalInstance?.statusDate}">
				<li class="fieldcontain">
					<span id="statusDate-label" class="property-label"><g:message code="approval.statusDate.label" default="Status Date" /></span>
					
						<span class="property-value" aria-labelledby="statusDate-label"><g:fieldValue bean="${approvalInstance}" field="statusDate"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:approvalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${approvalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
