package net.incuventure

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_admin','ROLE_staff'])
class DiagnosisController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Diagnosis.list(params), model: [diagnosisInstanceCount: Diagnosis.count()]
    }

    def show(Diagnosis diagnosisInstance) {
        respond diagnosisInstance
    }

    def create() {
        respond new Diagnosis(params)
    }

    @Transactional
    def save(Diagnosis diagnosisInstance) {
        if (diagnosisInstance == null) {
            notFound()
            return
        }

        if (diagnosisInstance.hasErrors()) {
            respond diagnosisInstance.errors, view: 'create'
            return
        }

        diagnosisInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'diagnosis.label', default: 'Diagnosis'), diagnosisInstance.id])
                redirect diagnosisInstance
            }
            '*' { respond diagnosisInstance, [status: CREATED] }
        }
    }

    def edit(Diagnosis diagnosisInstance) {
        respond diagnosisInstance
    }

    @Transactional
    def update(Diagnosis diagnosisInstance) {
        if (diagnosisInstance == null) {
            notFound()
            return
        }

        if (diagnosisInstance.hasErrors()) {
            respond diagnosisInstance.errors, view: 'edit'
            return
        }

        diagnosisInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Diagnosis.label', default: 'Diagnosis'), diagnosisInstance.id])
                redirect diagnosisInstance
            }
            '*' { respond diagnosisInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Diagnosis diagnosisInstance) {

        if (diagnosisInstance == null) {
            notFound()
            return
        }

        diagnosisInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Diagnosis.label', default: 'Diagnosis'), diagnosisInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'diagnosis.label', default: 'Diagnosis'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
