<%@ page import="net.incuventure.DiagnosticProvider" %>



<div class="fieldcontain ${hasErrors(bean: diagnosticProviderInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="diagnosticProvider.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="250" required="" value="${diagnosticProviderInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: diagnosticProviderInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="diagnosticProvider.code.label" default="Code" />
		
	</label>
	<g:textField name="code" maxlength="150" value="${diagnosticProviderInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: diagnosticProviderInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="diagnosticProvider.address.label" default="Address" />
		
	</label>
	<g:textArea name="address" cols="40" rows="5" maxlength="500" value="${diagnosticProviderInstance?.address}"/>

</div>

