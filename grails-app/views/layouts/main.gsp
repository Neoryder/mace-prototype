<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
		%{--<div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="grails_logo.png" alt="Grails"/></a></div>--}%
		<div id="grailsLogo" role="banner"><a href="http://medicard.com"><asset:image src="mace_header.png" alt="MACE"/></a></div>
    <g:if test="${!"member".equalsIgnoreCase(session.userType)}">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="#">MACE</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User Management <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${g.createLink(controller: 'user',action: 'create')}">Add User</a></li>
                            <li><a href="${g.createLink(controller: 'user',action: 'index')}">User List</a></li>
                            <li><a href="${g.createLink(controller: 'member',action: 'create')}">Add Member</a></li>
                            <li><a href="${g.createLink(controller: 'member',action: 'index')}">Member List</a></li>
                            <li><a href="${g.createLink(controller: 'role',action: 'index')}">Role List</a></li>
                            <li><a href="${g.createLink(controller: 'userRole',action: 'index')}">User Roles</a></li>
                            <li><a href="${g.createLink(controller: 'userMember',action: 'index')}">User Members</a></li>
                            <li><a href="${g.createLink(controller: 'userDoctor',action: 'index')}">User Doctors</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Reference Management <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${g.createLink(controller: 'doctor',action: 'index')}">Doctor List</a></li>
                            <li><a href="${g.createLink(controller: 'doctor',action: 'create')}">Add Doctor</a></li>
                            <li><a href="${g.createLink(controller: 'hospital',action: 'index')}">Hospital List</a></li>
                            <li><a href="${g.createLink(controller: 'hospital',action: 'create')}">Add Hospital</a></li>
                            <li><a href="${g.createLink(controller: 'diagnosis',action: 'index')}">Diagnosis List</a></li>
                            <li><a href="${g.createLink(controller: 'diagnosis',action: 'create')}">Add Diagnosis</a></li>
                            <li><a href="${g.createLink(controller: 'laboratoryDiagnosticProcedure',action: 'index')}">Procedure List</a></li>
                            <li><a href="${g.createLink(controller: 'laboratoryDiagnosticProcedure',action: 'create')}">Add Procedure</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Transaction Request Management <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${g.createLink(controller: 'transactionRequest',action: 'create')}">Add Transaction Request</a></li>
                            <li><a href="${g.createLink(controller: 'transactionRequest',action: 'index')}">Transaction Request List</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Approvals Management<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${g.createLink(controller: 'approval',action: 'create')}">Add Approval</a></li>
                            <li><a href="${g.createLink(controller: 'approval',action: 'index')}">Approval List</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Claims Management<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${g.createLink(controller: 'claim',action: 'create')}">Add Claims</a></li>
                            <li><a href="${g.createLink(controller: 'claim',action: 'index')}">Claims List</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Others<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${g.createLink(controller: 'logout',action: 'index')}">logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
        </nav>
    </g:if>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
