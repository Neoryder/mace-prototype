package net.incuventure

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_admin','ROLE_staff'])
class LaboratoryDiagnosticProcedureController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LaboratoryDiagnosticProcedure.list(params), model: [laboratoryDiagnosticProcedureInstanceCount: LaboratoryDiagnosticProcedure.count()]
    }

    def show(LaboratoryDiagnosticProcedure laboratoryDiagnosticProcedureInstance) {
        respond laboratoryDiagnosticProcedureInstance
    }

    def create() {
        respond new LaboratoryDiagnosticProcedure(params)
    }

    @Transactional
    def save(LaboratoryDiagnosticProcedure laboratoryDiagnosticProcedureInstance) {
        if (laboratoryDiagnosticProcedureInstance == null) {
            notFound()
            return
        }

        if (laboratoryDiagnosticProcedureInstance.hasErrors()) {
            respond laboratoryDiagnosticProcedureInstance.errors, view: 'create'
            return
        }

        laboratoryDiagnosticProcedureInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'laboratoryDiagnosticProcedure.label', default: 'LaboratoryDiagnosticProcedure'), laboratoryDiagnosticProcedureInstance.id])
                redirect laboratoryDiagnosticProcedureInstance
            }
            '*' { respond laboratoryDiagnosticProcedureInstance, [status: CREATED] }
        }
    }

    def edit(LaboratoryDiagnosticProcedure laboratoryDiagnosticProcedureInstance) {
        respond laboratoryDiagnosticProcedureInstance
    }

    @Transactional
    def update(LaboratoryDiagnosticProcedure laboratoryDiagnosticProcedureInstance) {
        if (laboratoryDiagnosticProcedureInstance == null) {
            notFound()
            return
        }

        if (laboratoryDiagnosticProcedureInstance.hasErrors()) {
            respond laboratoryDiagnosticProcedureInstance.errors, view: 'edit'
            return
        }

        laboratoryDiagnosticProcedureInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LaboratoryDiagnosticProcedure.label', default: 'LaboratoryDiagnosticProcedure'), laboratoryDiagnosticProcedureInstance.id])
                redirect laboratoryDiagnosticProcedureInstance
            }
            '*' { respond laboratoryDiagnosticProcedureInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LaboratoryDiagnosticProcedure laboratoryDiagnosticProcedureInstance) {

        if (laboratoryDiagnosticProcedureInstance == null) {
            notFound()
            return
        }

        laboratoryDiagnosticProcedureInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LaboratoryDiagnosticProcedure.label', default: 'LaboratoryDiagnosticProcedure'), laboratoryDiagnosticProcedureInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'laboratoryDiagnosticProcedure.label', default: 'LaboratoryDiagnosticProcedure'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
