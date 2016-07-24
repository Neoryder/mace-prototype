<%@ page import="net.incuventure.Claim" %>



<div class="fieldcontain ${hasErrors(bean: claimInstance, field: 'approval', 'error')} required">
	<label for="approval">
		<g:message code="claim.approval.label" default="Approval" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="approval" name="approval.id" from="${net.incuventure.Approval.list()}" optionKey="id" required="" value="${claimInstance?.approval?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: claimInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="claim.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${claimInstance?.status}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: claimInstance, field: 'statusDate', 'error')} ">
	<label for="statusDate">
		<g:message code="claim.statusDate.label" default="Status Date" />
		
	</label>
	<g:datePicker name="statusDate" precision="day"  value="${claimInstance?.statusDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: claimInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="claim.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" value="${fieldValue(bean: claimInstance, field: 'amount')}" required=""/>

</div>

