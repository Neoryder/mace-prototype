<%@ page import="net.incuventure.LaboratoryDiagnosticProcedureResult" %>



<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureResultInstance, field: 'laboratoryDiagnosticProcedure', 'error')} required">
	<label for="laboratoryDiagnosticProcedure">
		<g:message code="laboratoryDiagnosticProcedureResult.laboratoryDiagnosticProcedure.label" default="Laboratory Diagnostic Procedure" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="laboratoryDiagnosticProcedure" name="laboratoryDiagnosticProcedure.id" from="${net.incuventure.LaboratoryDiagnosticProcedure.list()}" optionKey="id" required="" value="${laboratoryDiagnosticProcedureResultInstance?.laboratoryDiagnosticProcedure?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureResultInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="laboratoryDiagnosticProcedureResult.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: laboratoryDiagnosticProcedureResultInstance, field: 'value')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureResultInstance, field: 'unit', 'error')} ">
	<label for="unit">
		<g:message code="laboratoryDiagnosticProcedureResult.unit.label" default="Unit" />
		
	</label>
	<g:textField name="unit" value="${laboratoryDiagnosticProcedureResultInstance?.unit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureResultInstance, field: 'extractionDate', 'error')} ">
	<label for="extractionDate">
		<g:message code="laboratoryDiagnosticProcedureResult.extractionDate.label" default="Extraction Date" />
		
	</label>
	<g:datePicker name="extractionDate" precision="day"  value="${laboratoryDiagnosticProcedureResultInstance?.extractionDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureResultInstance, field: 'releaseDate', 'error')} ">
	<label for="releaseDate">
		<g:message code="laboratoryDiagnosticProcedureResult.releaseDate.label" default="Release Date" />
		
	</label>
	<g:datePicker name="releaseDate" precision="day"  value="${laboratoryDiagnosticProcedureResultInstance?.releaseDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: laboratoryDiagnosticProcedureResultInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="laboratoryDiagnosticProcedureResult.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${net.incuventure.Member.list()}" optionKey="id" required="" value="${laboratoryDiagnosticProcedureResultInstance?.member?.id}" class="many-to-one"/>

</div>

