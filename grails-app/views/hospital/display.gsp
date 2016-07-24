
<%@ page import="net.incuventure.Hospital" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hospital.label', default: 'Hospital')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-hospital" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="search"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-hospital" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list hospital">
			
				<g:if test="${hospitalInstance?.companyName}">
				<li class="fieldcontain">
					<span id="companyName-label" class="property-label"><g:message code="hospital.companyName.label" default="Company Name" /></span>
					
						<span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${hospitalInstance}" field="companyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hospitalInstance?.hospitalCode}">
				<li class="fieldcontain">
					<span id="hospitalCode-label" class="property-label"><g:message code="hospital.hospitalCode.label" default="Hospital Code" /></span>
					
						<span class="property-value" aria-labelledby="hospitalCode-label"><g:fieldValue bean="${hospitalInstance}" field="hospitalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hospitalInstance?.coordinatorName}">
				<li class="fieldcontain">
					<span id="coordinatorName-label" class="property-label"><g:message code="hospital.coordinatorName.label" default="Coordinator Name" /></span>
					
						<span class="property-value" aria-labelledby="coordinatorName-label"><g:fieldValue bean="${hospitalInstance}" field="coordinatorName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hospitalInstance?.coordinatorNumber}">
				<li class="fieldcontain">
					<span id="coordinatorNumber-label" class="property-label"><g:message code="hospital.coordinatorNumber.label" default="Coordinator Number" /></span>
					
						<span class="property-value" aria-labelledby="coordinatorNumber-label"><g:fieldValue bean="${hospitalInstance}" field="coordinatorNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hospitalInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="hospital.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${hospitalInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hospitalInstance?.landlineNumber}">
				<li class="fieldcontain">
					<span id="landlineNumber-label" class="property-label"><g:message code="hospital.landlineNumber.label" default="Landline Number" /></span>
					
						<span class="property-value" aria-labelledby="landlineNumber-label"><g:fieldValue bean="${hospitalInstance}" field="landlineNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hospitalInstance?.faxNumber}">
				<li class="fieldcontain">
					<span id="faxNumber-label" class="property-label"><g:message code="hospital.faxNumber.label" default="Fax Number" /></span>
					
						<span class="property-value" aria-labelledby="faxNumber-label"><g:fieldValue bean="${hospitalInstance}" field="faxNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hospitalInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="hospital.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${hospitalInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hospitalInstance?.workEmail}">
				<li class="fieldcontain">
					<span id="workEmail-label" class="property-label"><g:message code="hospital.workEmail.label" default="Work Email" /></span>
					
						<span class="property-value" aria-labelledby="workEmail-label"><g:fieldValue bean="${hospitalInstance}" field="workEmail"/></span>
					
				</li>
				</g:if>
			
			</ol>
		</div>
	</body>
</html>
