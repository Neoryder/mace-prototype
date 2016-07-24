package net.incuventure

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_admin','ROLE_staff'])
class UserDoctorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserDoctor.list(params), model: [userDoctorInstanceCount: UserDoctor.count()]
    }

    def show(UserDoctor userDoctorInstance) {
        respond userDoctorInstance
    }

    def create() {
        respond new UserDoctor(params)
    }

    @Transactional
    def save(UserDoctor userDoctorInstance) {
        if (userDoctorInstance == null) {
            notFound()
            return
        }

        if (userDoctorInstance.hasErrors()) {
            respond userDoctorInstance.errors, view: 'create'
            return
        }

        userDoctorInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userDoctor.label', default: 'UserDoctor'), userDoctorInstance.id])
                redirect userDoctorInstance
            }
            '*' { respond userDoctorInstance, [status: CREATED] }
        }
    }

    def edit(UserDoctor userDoctorInstance) {
        respond userDoctorInstance
    }

    @Transactional
    def update(UserDoctor userDoctorInstance) {
        if (userDoctorInstance == null) {
            notFound()
            return
        }

        if (userDoctorInstance.hasErrors()) {
            respond userDoctorInstance.errors, view: 'edit'
            return
        }

        userDoctorInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserDoctor.label', default: 'UserDoctor'), userDoctorInstance.id])
                redirect userDoctorInstance
            }
            '*' { respond userDoctorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserDoctor userDoctorInstance) {

        if (userDoctorInstance == null) {
            notFound()
            return
        }

        userDoctorInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserDoctor.label', default: 'UserDoctor'), userDoctorInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userDoctor.label', default: 'UserDoctor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
