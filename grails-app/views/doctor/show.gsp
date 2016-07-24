
<%@ page import="net.incuventure.Doctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-doctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-doctor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list doctor">
			
				<g:if test="${doctorInstance?.userNumber}">
				<li class="fieldcontain">
					<span id="userNumber-label" class="property-label"><g:message code="doctor.userNumber.label" default="User Number" /></span>
					
						<span class="property-value" aria-labelledby="userNumber-label"><g:fieldValue bean="${doctorInstance}" field="userNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="doctor.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${doctorInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="doctor.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${doctorInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="doctor.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${doctorInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.companyName}">
				<li class="fieldcontain">
					<span id="companyName-label" class="property-label"><g:message code="doctor.companyName.label" default="Company Name" /></span>
					
						<span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${doctorInstance}" field="companyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="doctor.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${doctorInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="doctor.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${doctorInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="doctor.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${doctorInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.homeNumber}">
				<li class="fieldcontain">
					<span id="homeNumber-label" class="property-label"><g:message code="doctor.homeNumber.label" default="Home Number" /></span>
					
						<span class="property-value" aria-labelledby="homeNumber-label"><g:fieldValue bean="${doctorInstance}" field="homeNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.personalEmail}">
				<li class="fieldcontain">
					<span id="personalEmail-label" class="property-label"><g:message code="doctor.personalEmail.label" default="Personal Email" /></span>
					
						<span class="property-value" aria-labelledby="personalEmail-label"><g:fieldValue bean="${doctorInstance}" field="personalEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.workEmail}">
				<li class="fieldcontain">
					<span id="workEmail-label" class="property-label"><g:message code="doctor.workEmail.label" default="Work Email" /></span>
					
						<span class="property-value" aria-labelledby="workEmail-label"><g:fieldValue bean="${doctorInstance}" field="workEmail"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:doctorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${doctorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
