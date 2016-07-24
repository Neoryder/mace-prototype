<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to MACE</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<div id="page-body" role="main">
			<h1>Welcome to Mace</h1>
            <p>
                <oauth:connect provider="google" id="google-connect-link">CONNECT with Google</oauth:connect>
                Logged with google?
                <s2o:ifLoggedInWith provider="google">yes</s2o:ifLoggedInWith>
                <s2o:ifNotLoggedInWith provider="google">no</s2o:ifNotLoggedInWith>
            </p>

            <div id="show-member" class="content scaffold-show" role="main">
                <fieldset class="buttons">
                    <g:link class="list" controller="home" action="doctorSearch" >Find a doctor</g:link>
                    <g:link class="list" controller="home" action="hospitalSearch" >Find a hospital</g:link>
                    <g:link class="create" controller="home" action="schedule" params="[userNumber: memberInstance.userNumber]">Schedule Appointment</g:link>
                </fieldset>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <ol class="property-list member">

                    <g:if test="${memberInstance?.userNumber}">
                        <li class="fieldcontain">
                            <span id="userNumber-label" class="property-label"><g:message code="member.userNumber.label" default="User Number" /></span>

                            <span class="property-value" aria-labelledby="userNumber-label"><g:fieldValue bean="${memberInstance}" field="userNumber"/></span>
                            <qrcode:image text="${memberInstance?.userNumber}"/>
                        </li>

                    </g:if>

                    <g:if test="${memberInstance?.firstName}">
                        <li class="fieldcontain">
                            <span id="firstName-label" class="property-label"><g:message code="member.firstName.label" default="First Name" /></span>

                            <span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${memberInstance}" field="firstName"/></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.middleName}">
                        <li class="fieldcontain">
                            <span id="middleName-label" class="property-label"><g:message code="member.middleName.label" default="Middle Name" /></span>

                            <span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${memberInstance}" field="middleName"/></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.lastName}">
                        <li class="fieldcontain">
                            <span id="lastName-label" class="property-label"><g:message code="member.lastName.label" default="Last Name" /></span>

                            <span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${memberInstance}" field="lastName"/></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.companyName}">
                        <li class="fieldcontain">
                            <span id="companyName-label" class="property-label"><g:message code="member.companyName.label" default="Company Name" /></span>

                            <span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${memberInstance}" field="companyName"/></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.gender}">
                        <li class="fieldcontain">
                            <span id="gender-label" class="property-label"><g:message code="member.gender.label" default="Gender" /></span>

                            <span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${memberInstance}" field="gender"/></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.remarks}">
                        <li class="fieldcontain">
                            <span id="remarks-label" class="property-label"><g:message code="member.remarks.label" default="Remarks" /></span>

                            <span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${memberInstance}" field="remarks"/></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.memberPlan}">
                        <li class="fieldcontain">
                            <span id="memberPlan-label" class="property-label"><g:message code="member.memberPlan.label" default="Member Plan" /></span>

                            <span class="property-value" aria-labelledby="memberPlan-label"><g:fieldValue bean="${memberInstance}" field="memberPlan"/></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.effectivityDate}">
                        <li class="fieldcontain">
                            <span id="effectivityDate-label" class="property-label"><g:message code="member.effectivityDate.label" default="Effectivity Date" /></span>

                            <span class="property-value" aria-labelledby="effectivityDate-label"><g:formatDate date="${memberInstance?.effectivityDate}" /></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.nextEffectivityDate}">
                        <li class="fieldcontain">
                            <span id="nextEffectivityDate-label" class="property-label"><g:message code="member.nextEffectivityDate.label" default="Next Effectivity Date" /></span>

                            <span class="property-value" aria-labelledby="nextEffectivityDate-label"><g:formatDate date="${memberInstance?.nextEffectivityDate}" /></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.validityDate}">
                        <li class="fieldcontain">
                            <span id="validityDate-label" class="property-label"><g:message code="member.validityDate.label" default="Validity Date" /></span>

                            <span class="property-value" aria-labelledby="validityDate-label"><g:formatDate date="${memberInstance?.validityDate}" /></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.nextValidityDate}">
                        <li class="fieldcontain">
                            <span id="nextValidityDate-label" class="property-label"><g:message code="member.nextValidityDate.label" default="Next Validity Date" /></span>

                            <span class="property-value" aria-labelledby="nextValidityDate-label"><g:formatDate date="${memberInstance?.nextValidityDate}" /></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.status}">
                        <li class="fieldcontain">
                            <span id="status-label" class="property-label"><g:message code="member.status.label" default="Status" /></span>

                            <span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${memberInstance}" field="status"/></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.mobileNumber}">
                        <li class="fieldcontain">
                            <span id="mobileNumber-label" class="property-label"><g:message code="member.mobileNumber.label" default="Mobile Number" /></span>

                            <span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${memberInstance}" field="mobileNumber"/></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.homeNumber}">
                        <li class="fieldcontain">
                            <span id="homeNumber-label" class="property-label"><g:message code="member.homeNumber.label" default="Home Number" /></span>

                            <span class="property-value" aria-labelledby="homeNumber-label"><g:fieldValue bean="${memberInstance}" field="homeNumber"/></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.personalEmail}">
                        <li class="fieldcontain">
                            <span id="personalEmail-label" class="property-label"><g:message code="member.personalEmail.label" default="Personal Email" /></span>

                            <span class="property-value" aria-labelledby="personalEmail-label"><g:fieldValue bean="${memberInstance}" field="personalEmail"/></span>

                        </li>
                    </g:if>

                    <g:if test="${memberInstance?.workEmail}">
                        <li class="fieldcontain">
                            <span id="workEmail-label" class="property-label"><g:message code="member.workEmail.label" default="Work Email" /></span>

                            <span class="property-value" aria-labelledby="workEmail-label"><g:fieldValue bean="${memberInstance}" field="workEmail"/></span>

                        </li>
                    </g:if>

                </ol>

                    <fieldset class="buttons">
                        <g:link class="create" controller="home" action="schedule" resource="${memberInstance}">Schedule Consultation/Procedure/Dental</g:link>
                    </fieldset>

            </div>

		</div>
	</body>
</html>
