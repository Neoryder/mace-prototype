<%@ page import="net.incuventure.LaboratoryDiagnosticProcedure" %>



<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="laboratoryDiagnosticProcedure.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="200" required="" value="${laboratoryDiagnosticProcedureInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="laboratoryDiagnosticProcedure.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="50" required="" value="${laboratoryDiagnosticProcedureInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="laboratoryDiagnosticProcedure.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" maxlength="50" required="" value="${laboratoryDiagnosticProcedureInstance?.type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="laboratoryDiagnosticProcedure.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="amount" maxlength="50" required="" value="${laboratoryDiagnosticProcedureInstance?.amount}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureInstance, field: 'subType', 'error')} required">
	<label for="subType">
		<g:message code="laboratoryDiagnosticProcedure.subType.label" default="Sub Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subType" maxlength="100" required="" value="${laboratoryDiagnosticProcedureInstance?.subType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="laboratoryDiagnosticProcedure.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="500" value="${laboratoryDiagnosticProcedureInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureInstance, field: 'abbreviation', 'error')} ">
	<label for="abbreviation">
		<g:message code="laboratoryDiagnosticProcedure.abbreviation.label" default="Abbreviation" />
		
	</label>
	<g:textField name="abbreviation" maxlength="50" value="${laboratoryDiagnosticProcedureInstance?.abbreviation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureInstance, field: 'highValue', 'error')} ">
	<label for="highValue">
		<g:message code="laboratoryDiagnosticProcedure.highValue.label" default="High Value" />
		
	</label>
	<g:field name="highValue" value="${fieldValue(bean: laboratoryDiagnosticProcedureInstance, field: 'highValue')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureInstance, field: 'lowValue', 'error')} ">
	<label for="lowValue">
		<g:message code="laboratoryDiagnosticProcedure.lowValue.label" default="Low Value" />
		
	</label>
	<g:field name="lowValue" value="${fieldValue(bean: laboratoryDiagnosticProcedureInstance, field: 'lowValue')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureInstance, field: 'unit', 'error')} required">
	<label for="unit">
		<g:message code="laboratoryDiagnosticProcedure.unit.label" default="Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unit" maxlength="50" required="" value="${laboratoryDiagnosticProcedureInstance?.unit}"/>

</div>

