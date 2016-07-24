package net.incuventure

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_admin','ROLE_staff'])
class TransactionRequestController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TransactionRequest.list(params), model: [transactionRequestInstanceCount: TransactionRequest.count()]
    }

    def show(TransactionRequest transactionRequestInstance) {
        respond transactionRequestInstance
    }

    def create() {
        respond new TransactionRequest(params)
    }

    @Transactional
    def save(TransactionRequest transactionRequestInstance) {
        if (transactionRequestInstance == null) {
            notFound()
            return
        }

        if (transactionRequestInstance.hasErrors()) {
            respond transactionRequestInstance.errors, view: 'create'
            return
        }

        transactionRequestInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'transactionRequest.label', default: 'TransactionRequest'), transactionRequestInstance.id])
                redirect transactionRequestInstance
            }
            '*' { respond transactionRequestInstance, [status: CREATED] }
        }
    }

    def edit(TransactionRequest transactionRequestInstance) {
        respond transactionRequestInstance
    }

    @Transactional
    def update(TransactionRequest transactionRequestInstance) {
        if (transactionRequestInstance == null) {
            notFound()
            return
        }

        if (transactionRequestInstance.hasErrors()) {
            respond transactionRequestInstance.errors, view: 'edit'
            return
        }

        transactionRequestInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TransactionRequest.label', default: 'TransactionRequest'), transactionRequestInstance.id])
                redirect transactionRequestInstance
            }
            '*' { respond transactionRequestInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TransactionRequest transactionRequestInstance) {

        if (transactionRequestInstance == null) {
            notFound()
            return
        }

        transactionRequestInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TransactionRequest.label', default: 'TransactionRequest'), transactionRequestInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'transactionRequest.label', default: 'TransactionRequest'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
