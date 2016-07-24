<%@ page import="net.incuventure.Doctor" %>



<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'userNumber', 'error')} required">
	<label for="userNumber">
		<g:message code="doctor.userNumber.label" default="User Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userNumber" maxlength="20" required="" value="${doctorInstance?.userNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="doctor.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="100" required="" value="${doctorInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="doctor.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" maxlength="100" value="${doctorInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="doctor.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="100" required="" value="${doctorInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'companyName', 'error')} ">
	<label for="companyName">
		<g:message code="doctor.companyName.label" default="Company Name" />
		
	</label>
	<g:textField name="companyName" value="${doctorInstance?.companyName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="doctor.gender.label" default="Gender" />
		
	</label>
	<g:textField name="gender" value="${doctorInstance?.gender}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="doctor.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${doctorInstance?.status}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'mobileNumber', 'error')} ">
	<label for="mobileNumber">
		<g:message code="doctor.mobileNumber.label" default="Mobile Number" />
		
	</label>
	<g:textField name="mobileNumber" value="${doctorInstance?.mobileNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'homeNumber', 'error')} ">
	<label for="homeNumber">
		<g:message code="doctor.homeNumber.label" default="Home Number" />
		
	</label>
	<g:textField name="homeNumber" value="${doctorInstance?.homeNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'personalEmail', 'error')} ">
	<label for="personalEmail">
		<g:message code="doctor.personalEmail.label" default="Personal Email" />
		
	</label>
	<g:field type="email" name="personalEmail" value="${doctorInstance?.personalEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'workEmail', 'error')} ">
	<label for="workEmail">
		<g:message code="doctor.workEmail.label" default="Work Email" />
		
	</label>
	<g:field type="email" name="workEmail" value="${doctorInstance?.workEmail}"/>

</div>

