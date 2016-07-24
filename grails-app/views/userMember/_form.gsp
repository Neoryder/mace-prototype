<%@ page import="net.incuventure.UserMember" %>



<div class="fieldcontain ${hasErrors(bean: userMemberInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="userMember.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${net.incuventure.Member.list()}" optionKey="id" required="" value="${userMemberInstance?.member?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userMemberInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="userMember.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${net.incuventure.User.list()}" optionKey="id" required="" value="${userMemberInstance?.user?.id}" class="many-to-one"/>

</div>

