
<%@ page import="net.incuventure.TransactionRequest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transactionRequest.label', default: 'TransactionRequest')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-transactionRequest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-transactionRequest" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list transactionRequest">
			
				<g:if test="${transactionRequestInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="transactionRequest.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${transactionRequestInstance?.member?.id}">${transactionRequestInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionRequestInstance?.doctor}">
				<li class="fieldcontain">
					<span id="doctor-label" class="property-label"><g:message code="transactionRequest.doctor.label" default="Doctor" /></span>
					
						<span class="property-value" aria-labelledby="doctor-label"><g:link controller="doctor" action="show" id="${transactionRequestInstance?.doctor?.id}">${transactionRequestInstance?.doctor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionRequestInstance?.hospital}">
				<li class="fieldcontain">
					<span id="hospital-label" class="property-label"><g:message code="transactionRequest.hospital.label" default="Hospital" /></span>
					
						<span class="property-value" aria-labelledby="hospital-label"><g:link controller="hospital" action="show" id="${transactionRequestInstance?.hospital?.id}">${transactionRequestInstance?.hospital?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionRequestInstance?.laboratoryDiagnosticProcedure}">
				<li class="fieldcontain">
					<span id="laboratoryDiagnosticProcedure-label" class="property-label"><g:message code="transactionRequest.laboratoryDiagnosticProcedure.label" default="Laboratory Diagnostic Procedure" /></span>
					
						<span class="property-value" aria-labelledby="laboratoryDiagnosticProcedure-label"><g:link controller="laboratoryDiagnosticProcedure" action="show" id="${transactionRequestInstance?.laboratoryDiagnosticProcedure?.id}">${transactionRequestInstance?.laboratoryDiagnosticProcedure?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionRequestInstance?.basicTest}">
				<li class="fieldcontain">
					<span id="basicTest-label" class="property-label"><g:message code="transactionRequest.basicTest.label" default="Basic Test" /></span>
					
						<span class="property-value" aria-labelledby="basicTest-label"><g:link controller="basicTest" action="show" id="${transactionRequestInstance?.basicTest?.id}">${transactionRequestInstance?.basicTest?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionRequestInstance?.requestDate}">
				<li class="fieldcontain">
					<span id="requestDate-label" class="property-label"><g:message code="transactionRequest.requestDate.label" default="Request Date" /></span>
					
						<span class="property-value" aria-labelledby="requestDate-label"><g:formatDate date="${transactionRequestInstance?.requestDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionRequestInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="transactionRequest.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${transactionRequestInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionRequestInstance?.statusDate}">
				<li class="fieldcontain">
					<span id="statusDate-label" class="property-label"><g:message code="transactionRequest.statusDate.label" default="Status Date" /></span>
					
						<span class="property-value" aria-labelledby="statusDate-label"><g:fieldValue bean="${transactionRequestInstance}" field="statusDate"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:transactionRequestInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${transactionRequestInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
