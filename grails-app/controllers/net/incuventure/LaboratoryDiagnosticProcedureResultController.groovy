package net.incuventure

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_admin','ROLE_staff'])
class LaboratoryDiagnosticProcedureResultController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LaboratoryDiagnosticProcedureResult.list(params), model: [laboratoryDiagnosticProcedureResultInstanceCount: LaboratoryDiagnosticProcedureResult.count()]
    }

    def show(LaboratoryDiagnosticProcedureResult laboratoryDiagnosticProcedureResultInstance) {
        respond laboratoryDiagnosticProcedureResultInstance
    }

    def create() {
        respond new LaboratoryDiagnosticProcedureResult(params)
    }

    @Transactional
    def save(LaboratoryDiagnosticProcedureResult laboratoryDiagnosticProcedureResultInstance) {
        if (laboratoryDiagnosticProcedureResultInstance == null) {
            notFound()
            return
        }

        if (laboratoryDiagnosticProcedureResultInstance.hasErrors()) {
            respond laboratoryDiagnosticProcedureResultInstance.errors, view: 'create'
            return
        }

        laboratoryDiagnosticProcedureResultInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'laboratoryDiagnosticProcedureResult.label', default: 'LaboratoryDiagnosticProcedureResult'), laboratoryDiagnosticProcedureResultInstance.id])
                redirect laboratoryDiagnosticProcedureResultInstance
            }
            '*' { respond laboratoryDiagnosticProcedureResultInstance, [status: CREATED] }
        }
    }

    def edit(LaboratoryDiagnosticProcedureResult laboratoryDiagnosticProcedureResultInstance) {
        respond laboratoryDiagnosticProcedureResultInstance
    }

    @Transactional
    def update(LaboratoryDiagnosticProcedureResult laboratoryDiagnosticProcedureResultInstance) {
        if (laboratoryDiagnosticProcedureResultInstance == null) {
            notFound()
            return
        }

        if (laboratoryDiagnosticProcedureResultInstance.hasErrors()) {
            respond laboratoryDiagnosticProcedureResultInstance.errors, view: 'edit'
            return
        }

        laboratoryDiagnosticProcedureResultInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LaboratoryDiagnosticProcedureResult.label', default: 'LaboratoryDiagnosticProcedureResult'), laboratoryDiagnosticProcedureResultInstance.id])
                redirect laboratoryDiagnosticProcedureResultInstance
            }
            '*' { respond laboratoryDiagnosticProcedureResultInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LaboratoryDiagnosticProcedureResult laboratoryDiagnosticProcedureResultInstance) {

        if (laboratoryDiagnosticProcedureResultInstance == null) {
            notFound()
            return
        }

        laboratoryDiagnosticProcedureResultInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LaboratoryDiagnosticProcedureResult.label', default: 'LaboratoryDiagnosticProcedureResult'), laboratoryDiagnosticProcedureResultInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'laboratoryDiagnosticProcedureResult.label', default: 'LaboratoryDiagnosticProcedureResult'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
