package net.incuventure

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_admin','ROLE_staff','ROLE_doctor'])
class DashboardDoctorController {

    def index() {}
}
