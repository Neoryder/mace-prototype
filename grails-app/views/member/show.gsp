
<%@ page import="net.incuventure.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-member" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list member">
			
				<g:if test="${memberInstance?.userNumber}">
				<li class="fieldcontain">
					<span id="userNumber-label" class="property-label"><g:message code="member.userNumber.label" default="User Number" /></span>
					
						<span class="property-value" aria-labelledby="userNumber-label"><g:fieldValue bean="${memberInstance}" field="userNumber"/></span>
                    <qrcode:image text="${memberInstance?.userNumber}"/>
				</li>

				</g:if>
			
				<g:if test="${memberInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="member.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${memberInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="member.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${memberInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="member.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${memberInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.companyName}">
				<li class="fieldcontain">
					<span id="companyName-label" class="property-label"><g:message code="member.companyName.label" default="Company Name" /></span>
					
						<span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${memberInstance}" field="companyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="member.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${memberInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="member.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${memberInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.memberPlan}">
				<li class="fieldcontain">
					<span id="memberPlan-label" class="property-label"><g:message code="member.memberPlan.label" default="Member Plan" /></span>
					
						<span class="property-value" aria-labelledby="memberPlan-label"><g:fieldValue bean="${memberInstance}" field="memberPlan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.effectivityDate}">
				<li class="fieldcontain">
					<span id="effectivityDate-label" class="property-label"><g:message code="member.effectivityDate.label" default="Effectivity Date" /></span>
					
						<span class="property-value" aria-labelledby="effectivityDate-label"><g:formatDate date="${memberInstance?.effectivityDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.nextEffectivityDate}">
				<li class="fieldcontain">
					<span id="nextEffectivityDate-label" class="property-label"><g:message code="member.nextEffectivityDate.label" default="Next Effectivity Date" /></span>
					
						<span class="property-value" aria-labelledby="nextEffectivityDate-label"><g:formatDate date="${memberInstance?.nextEffectivityDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.validityDate}">
				<li class="fieldcontain">
					<span id="validityDate-label" class="property-label"><g:message code="member.validityDate.label" default="Validity Date" /></span>
					
						<span class="property-value" aria-labelledby="validityDate-label"><g:formatDate date="${memberInstance?.validityDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.nextValidityDate}">
				<li class="fieldcontain">
					<span id="nextValidityDate-label" class="property-label"><g:message code="member.nextValidityDate.label" default="Next Validity Date" /></span>
					
						<span class="property-value" aria-labelledby="nextValidityDate-label"><g:formatDate date="${memberInstance?.nextValidityDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="member.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${memberInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="member.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${memberInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.homeNumber}">
				<li class="fieldcontain">
					<span id="homeNumber-label" class="property-label"><g:message code="member.homeNumber.label" default="Home Number" /></span>
					
						<span class="property-value" aria-labelledby="homeNumber-label"><g:fieldValue bean="${memberInstance}" field="homeNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.personalEmail}">
				<li class="fieldcontain">
					<span id="personalEmail-label" class="property-label"><g:message code="member.personalEmail.label" default="Personal Email" /></span>
					
						<span class="property-value" aria-labelledby="personalEmail-label"><g:fieldValue bean="${memberInstance}" field="personalEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.workEmail}">
				<li class="fieldcontain">
					<span id="workEmail-label" class="property-label"><g:message code="member.workEmail.label" default="Work Email" /></span>
					
						<span class="property-value" aria-labelledby="workEmail-label"><g:fieldValue bean="${memberInstance}" field="workEmail"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:memberInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${memberInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
