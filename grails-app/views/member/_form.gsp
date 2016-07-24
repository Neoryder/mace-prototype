<%@ page import="net.incuventure.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'userNumber', 'error')} required">
	<label for="userNumber">
		<g:message code="member.userNumber.label" default="User Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userNumber" maxlength="20" required="" value="${memberInstance?.userNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="member.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="100" required="" value="${memberInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="member.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" maxlength="100" value="${memberInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="member.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="100" required="" value="${memberInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'companyName', 'error')} ">
	<label for="companyName">
		<g:message code="member.companyName.label" default="Company Name" />
		
	</label>
	<g:textField name="companyName" maxlength="250" value="${memberInstance?.companyName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="member.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${memberInstance.constraints.gender.inList}" required="" value="${memberInstance?.gender}" valueMessagePrefix="member.gender"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="member.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${memberInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'memberPlan', 'error')} ">
	<label for="memberPlan">
		<g:message code="member.memberPlan.label" default="Member Plan" />
		
	</label>
	<g:textField name="memberPlan" value="${memberInstance?.memberPlan}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'effectivityDate', 'error')} ">
	<label for="effectivityDate">
		<g:message code="member.effectivityDate.label" default="Effectivity Date" />
		
	</label>
	<g:datePicker name="effectivityDate" precision="day"  value="${memberInstance?.effectivityDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'nextEffectivityDate', 'error')} ">
	<label for="nextEffectivityDate">
		<g:message code="member.nextEffectivityDate.label" default="Next Effectivity Date" />
		
	</label>
	<g:datePicker name="nextEffectivityDate" precision="day"  value="${memberInstance?.nextEffectivityDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'validityDate', 'error')} ">
	<label for="validityDate">
		<g:message code="member.validityDate.label" default="Validity Date" />
		
	</label>
	<g:datePicker name="validityDate" precision="day"  value="${memberInstance?.validityDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'nextValidityDate', 'error')} ">
	<label for="nextValidityDate">
		<g:message code="member.nextValidityDate.label" default="Next Validity Date" />
		
	</label>
	<g:datePicker name="nextValidityDate" precision="day"  value="${memberInstance?.nextValidityDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="member.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${memberInstance?.status}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'mobileNumber', 'error')} ">
	<label for="mobileNumber">
		<g:message code="member.mobileNumber.label" default="Mobile Number" />
		
	</label>
	<g:textField name="mobileNumber" value="${memberInstance?.mobileNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'homeNumber', 'error')} ">
	<label for="homeNumber">
		<g:message code="member.homeNumber.label" default="Home Number" />
		
	</label>
	<g:textField name="homeNumber" value="${memberInstance?.homeNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'personalEmail', 'error')} ">
	<label for="personalEmail">
		<g:message code="member.personalEmail.label" default="Personal Email" />
		
	</label>
	<g:field type="email" name="personalEmail" value="${memberInstance?.personalEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'workEmail', 'error')} ">
	<label for="workEmail">
		<g:message code="member.workEmail.label" default="Work Email" />
		
	</label>
	<g:field type="email" name="workEmail" value="${memberInstance?.workEmail}"/>

</div>

