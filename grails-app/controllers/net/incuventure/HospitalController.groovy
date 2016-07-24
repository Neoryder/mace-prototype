package net.incuventure

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_admin','ROLE_staff'])
class HospitalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Hospital.list(params), model:[hospitalInstanceCount: Hospital.count()]
    }

    def show(Hospital hospitalInstance) {
        respond hospitalInstance
    }

    def display(Hospital hospitalInstance) {
        respond hospitalInstance
    }

    def create() {
        respond new Hospital(params)
    }

    @Transactional
    def save(Hospital hospitalInstance) {
        if (hospitalInstance == null) {
            notFound()
            return
        }

        if (hospitalInstance.hasErrors()) {
            respond hospitalInstance.errors, view:'create'
            return
        }

        hospitalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'hospital.label', default: 'Hospital'), hospitalInstance.id])
                redirect hospitalInstance
            }
            '*' { respond hospitalInstance, [status: CREATED] }
        }
    }

    def edit(Hospital hospitalInstance) {
        respond hospitalInstance
    }

    @Transactional
    def update(Hospital hospitalInstance) {
        if (hospitalInstance == null) {
            notFound()
            return
        }

        if (hospitalInstance.hasErrors()) {
            respond hospitalInstance.errors, view:'edit'
            return
        }

        hospitalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Hospital.label', default: 'Hospital'), hospitalInstance.id])
                redirect hospitalInstance
            }
            '*'{ respond hospitalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Hospital hospitalInstance) {

        if (hospitalInstance == null) {
            notFound()
            return
        }

        hospitalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Hospital.label', default: 'Hospital'), hospitalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'hospital.label', default: 'Hospital'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def search(){
        println params
        params.max = 100
        respond Hospital.list(params), model: [hospitalInstanceCount: Hospital.count()]
    }
}
