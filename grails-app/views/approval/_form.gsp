<%@ page import="net.incuventure.Approval" %>



<div class="fieldcontain ${hasErrors(bean: approvalInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="approval.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${net.incuventure.Member.list()}" optionKey="id" required="" value="${approvalInstance?.member?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: approvalInstance, field: 'doctor', 'error')} ">
	<label for="doctor">
		<g:message code="approval.doctor.label" default="Doctor" />
		
	</label>
	<g:select id="doctor" name="doctor.id" from="${net.incuventure.Doctor.list()}" optionKey="id" value="${approvalInstance?.doctor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: approvalInstance, field: 'hospital', 'error')} ">
	<label for="hospital">
		<g:message code="approval.hospital.label" default="Hospital" />
		
	</label>
	<g:select id="hospital" name="hospital.id" from="${net.incuventure.Hospital.list()}" optionKey="id" value="${approvalInstance?.hospital?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: approvalInstance, field: 'laboratoryDiagnosticProcedure', 'error')} ">
	<label for="laboratoryDiagnosticProcedure">
		<g:message code="approval.laboratoryDiagnosticProcedure.label" default="Laboratory Diagnostic Procedure" />
		
	</label>
	<g:select id="laboratoryDiagnosticProcedure" name="laboratoryDiagnosticProcedure.id" from="${net.incuventure.LaboratoryDiagnosticProcedure.list()}" optionKey="id" value="${approvalInstance?.laboratoryDiagnosticProcedure?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: approvalInstance, field: 'basicTest', 'error')} ">
	<label for="basicTest">
		<g:message code="approval.basicTest.label" default="Basic Test" />
		
	</label>
	<g:select id="basicTest" name="basicTest.id" from="${net.incuventure.BasicTest.list()}" optionKey="id" value="${approvalInstance?.basicTest?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: approvalInstance, field: 'requestDate', 'error')} required">
	<label for="requestDate">
		<g:message code="approval.requestDate.label" default="Request Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="requestDate" precision="day"  value="${approvalInstance?.requestDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: approvalInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="approval.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${approvalInstance?.status}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: approvalInstance, field: 'statusDate', 'error')} required">
	<label for="statusDate">
		<g:message code="approval.statusDate.label" default="Status Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="statusDate" required="" value="${approvalInstance?.statusDate}"/>

</div>

