package net.incuventure

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_admin','ROLE_staff'])
class DiagnosticProviderController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DiagnosticProvider.list(params), model: [diagnosticProviderInstanceCount: DiagnosticProvider.count()]
    }

    def show(DiagnosticProvider diagnosticProviderInstance) {
        respond diagnosticProviderInstance
    }

    def create() {
        respond new DiagnosticProvider(params)
    }

    @Transactional
    def save(DiagnosticProvider diagnosticProviderInstance) {
        if (diagnosticProviderInstance == null) {
            notFound()
            return
        }

        if (diagnosticProviderInstance.hasErrors()) {
            respond diagnosticProviderInstance.errors, view: 'create'
            return
        }

        diagnosticProviderInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'diagnosticProvider.label', default: 'DiagnosticProvider'), diagnosticProviderInstance.id])
                redirect diagnosticProviderInstance
            }
            '*' { respond diagnosticProviderInstance, [status: CREATED] }
        }
    }

    def edit(DiagnosticProvider diagnosticProviderInstance) {
        respond diagnosticProviderInstance
    }

    @Transactional
    def update(DiagnosticProvider diagnosticProviderInstance) {
        if (diagnosticProviderInstance == null) {
            notFound()
            return
        }

        if (diagnosticProviderInstance.hasErrors()) {
            respond diagnosticProviderInstance.errors, view: 'edit'
            return
        }

        diagnosticProviderInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DiagnosticProvider.label', default: 'DiagnosticProvider'), diagnosticProviderInstance.id])
                redirect diagnosticProviderInstance
            }
            '*' { respond diagnosticProviderInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DiagnosticProvider diagnosticProviderInstance) {

        if (diagnosticProviderInstance == null) {
            notFound()
            return
        }

        diagnosticProviderInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DiagnosticProvider.label', default: 'DiagnosticProvider'), diagnosticProviderInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'diagnosticProvider.label', default: 'DiagnosticProvider'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
