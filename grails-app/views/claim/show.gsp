
<%@ page import="net.incuventure.Claim" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'claim.label', default: 'Claim')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-claim" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-claim" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list claim">
			
				<g:if test="${claimInstance?.approval}">
				<li class="fieldcontain">
					<span id="approval-label" class="property-label"><g:message code="claim.approval.label" default="Approval" /></span>
					
						<span class="property-value" aria-labelledby="approval-label"><g:link controller="approval" action="show" id="${claimInstance?.approval?.id}">${claimInstance?.approval?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${claimInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="claim.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${claimInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${claimInstance?.statusDate}">
				<li class="fieldcontain">
					<span id="statusDate-label" class="property-label"><g:message code="claim.statusDate.label" default="Status Date" /></span>
					
						<span class="property-value" aria-labelledby="statusDate-label"><g:formatDate date="${claimInstance?.statusDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${claimInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="claim.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${claimInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:claimInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${claimInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
