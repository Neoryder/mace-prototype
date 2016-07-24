<%@ page import="net.incuventure.Hospital" %>



<div class="fieldcontain ${hasErrors(bean: hospitalInstance, field: 'companyName', 'error')} required">
	<label for="companyName">
		<g:message code="hospital.companyName.label" default="Company Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyName" maxlength="250" required="" value="${hospitalInstance?.companyName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hospitalInstance, field: 'hospitalCode', 'error')} ">
	<label for="hospitalCode">
		<g:message code="hospital.hospitalCode.label" default="Hospital Code" />
		
	</label>
	<g:textField name="hospitalCode" maxlength="20" value="${hospitalInstance?.hospitalCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hospitalInstance, field: 'coordinatorName', 'error')} ">
	<label for="coordinatorName">
		<g:message code="hospital.coordinatorName.label" default="Coordinator Name" />
		
	</label>
	<g:textField name="coordinatorName" maxlength="250" value="${hospitalInstance?.coordinatorName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hospitalInstance, field: 'coordinatorNumber', 'error')} ">
	<label for="coordinatorNumber">
		<g:message code="hospital.coordinatorNumber.label" default="Coordinator Number" />
		
	</label>
	<g:textField name="coordinatorNumber" maxlength="50" value="${hospitalInstance?.coordinatorNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hospitalInstance, field: 'mobileNumber', 'error')} ">
	<label for="mobileNumber">
		<g:message code="hospital.mobileNumber.label" default="Mobile Number" />
		
	</label>
	<g:textField name="mobileNumber" value="${hospitalInstance?.mobileNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hospitalInstance, field: 'landlineNumber', 'error')} ">
	<label for="landlineNumber">
		<g:message code="hospital.landlineNumber.label" default="Landline Number" />
		
	</label>
	<g:textField name="landlineNumber" value="${hospitalInstance?.landlineNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hospitalInstance, field: 'faxNumber', 'error')} ">
	<label for="faxNumber">
		<g:message code="hospital.faxNumber.label" default="Fax Number" />
		
	</label>
	<g:textField name="faxNumber" value="${hospitalInstance?.faxNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hospitalInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="hospital.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${hospitalInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hospitalInstance, field: 'workEmail', 'error')} ">
	<label for="workEmail">
		<g:message code="hospital.workEmail.label" default="Work Email" />
		
	</label>
	<g:field type="email" name="workEmail" value="${hospitalInstance?.workEmail}"/>

</div>

