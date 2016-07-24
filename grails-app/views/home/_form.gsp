<%@ page import="net.incuventure.TransactionRequest" %>



<div class="fieldcontain ${hasErrors(bean: transactionRequestInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="transactionRequest.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${net.incuventure.Member.list()}" optionKey="id" required="" value="${transactionRequestInstance?.member?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transactionRequestInstance, field: 'doctor', 'error')} ">
	<label for="doctor">
		<g:message code="transactionRequest.doctor.label" default="Doctor" />
		
	</label>
	<g:select id="doctor" name="doctor.id" from="${net.incuventure.Doctor.list()}" optionKey="id" value="${transactionRequestInstance?.doctor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transactionRequestInstance, field: 'hospital', 'error')} ">
	<label for="hospital">
		<g:message code="transactionRequest.hospital.label" default="Hospital" />
		
	</label>
	<g:select id="hospital" name="hospital.id" from="${net.incuventure.Hospital.list()}" optionKey="id" value="${transactionRequestInstance?.hospital?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transactionRequestInstance, field: 'laboratoryDiagnosticProcedure', 'error')} ">
	<label for="laboratoryDiagnosticProcedure">
		<g:message code="transactionRequest.laboratoryDiagnosticProcedure.label" default="Laboratory Diagnostic Procedure" />
		
	</label>
	<g:select id="laboratoryDiagnosticProcedure" name="laboratoryDiagnosticProcedure.id" from="${net.incuventure.LaboratoryDiagnosticProcedure.list()}" optionKey="id" value="${transactionRequestInstance?.laboratoryDiagnosticProcedure?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

%{--<div class="fieldcontain ${hasErrors(bean: transactionRequestInstance, field: 'basicTest', 'error')} ">--}%
	%{--<label for="basicTest">--}%
		%{--<g:message code="transactionRequest.basicTest.label" default="Basic Test" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select id="basicTest" name="basicTest.id" from="${net.incuventure.BasicTest.list()}" optionKey="id" value="${transactionRequestInstance?.basicTest?.id}" class="many-to-one" noSelection="['null': '']"/>--}%

%{--</div>--}%

<div class="fieldcontain ${hasErrors(bean: transactionRequestInstance, field: 'requestDate', 'error')} required">
	<label for="requestDate">
		<g:message code="transactionRequest.requestDate.label" default="Request Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="requestDate" precision="day"  value="${transactionRequestInstance?.requestDate}"  />

</div>

%{--<div class="fieldcontain ${hasErrors(bean: transactionRequestInstance, field: 'status', 'error')} required">--}%
	%{--<label for="status">--}%
		%{--<g:message code="transactionRequest.status.label" default="Status" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="status" required="" value="${transactionRequestInstance?.status}"/>--}%

%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: transactionRequestInstance, field: 'statusDate', 'error')} required">--}%
	%{--<label for="statusDate">--}%
		%{--<g:message code="transactionRequest.statusDate.label" default="Status Date" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="statusDate" required="" value="${transactionRequestInstance?.statusDate}"/>--}%

%{--</div>--}%

