<%@ page import="net.incuventure.UserDoctor" %>



<div class="fieldcontain ${hasErrors(bean: userDoctorInstance, field: 'doctor', 'error')} required">
	<label for="doctor">
		<g:message code="userDoctor.doctor.label" default="Doctor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="doctor" name="doctor.id" from="${net.incuventure.Doctor.list()}" optionKey="id" required="" value="${userDoctorInstance?.doctor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userDoctorInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="userDoctor.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${net.incuventure.User.list()}" optionKey="id" required="" value="${userDoctorInstance?.user?.id}" class="many-to-one"/>

</div>

