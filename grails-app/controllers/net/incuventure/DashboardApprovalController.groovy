package net.incuventure

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_admin','ROLE_staff','ROLE_approval'])
class DashboardApprovalController {

    def index() {}
}
