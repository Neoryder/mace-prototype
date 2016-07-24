<%@ page import="net.incuventure.Diagnosis" %>



<div class="fieldcontain ${hasErrors(bean: diagnosisInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="diagnosis.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="50" required="" value="${diagnosisInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: diagnosisInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="diagnosis.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="250" required="" value="${diagnosisInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: diagnosisInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="diagnosis.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="500" value="${diagnosisInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: diagnosisInstance, field: 'flag00', 'error')} ">
	<label for="flag00">
		<g:message code="diagnosis.flag00.label" default="Flag00" />
		
	</label>
	<g:textField name="flag00" maxlength="1" value="${diagnosisInstance?.flag00}"/>

</div>

