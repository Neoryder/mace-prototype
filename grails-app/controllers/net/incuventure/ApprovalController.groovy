package net.incuventure



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ApprovalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Approval.list(params), model:[approvalInstanceCount: Approval.count()]
    }

    def show(Approval approvalInstance) {
        respond approvalInstance
    }

    def create() {
        respond new Approval(params)
    }

    @Transactional
    def save(Approval approvalInstance) {
        if (approvalInstance == null) {
            notFound()
            return
        }

        if (approvalInstance.hasErrors()) {
            respond approvalInstance.errors, view:'create'
            return
        }

        approvalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'approval.label', default: 'Approval'), approvalInstance.id])
                redirect approvalInstance
            }
            '*' { respond approvalInstance, [status: CREATED] }
        }
    }

    def edit(Approval approvalInstance) {
        respond approvalInstance
    }

    @Transactional
    def update(Approval approvalInstance) {
        if (approvalInstance == null) {
            notFound()
            return
        }

        if (approvalInstance.hasErrors()) {
            respond approvalInstance.errors, view:'edit'
            return
        }

        approvalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Approval.label', default: 'Approval'), approvalInstance.id])
                redirect approvalInstance
            }
            '*'{ respond approvalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Approval approvalInstance) {

        if (approvalInstance == null) {
            notFound()
            return
        }

        approvalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Approval.label', default: 'Approval'), approvalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'approval.label', default: 'Approval'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
