package net.incuventure

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_admin','ROLE_staff'])
class ClaimController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Claim.list(params), model: [claimInstanceCount: Claim.count()]
    }

    def show(Claim claimInstance) {
        respond claimInstance
    }

    def create() {
        respond new Claim(params)
    }

    @Transactional
    def save(Claim claimInstance) {
        if (claimInstance == null) {
            notFound()
            return
        }

        if (claimInstance.hasErrors()) {
            respond claimInstance.errors, view: 'create'
            return
        }

        claimInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'claim.label', default: 'Claim'), claimInstance.id])
                redirect claimInstance
            }
            '*' { respond claimInstance, [status: CREATED] }
        }
    }

    def edit(Claim claimInstance) {
        respond claimInstance
    }

    @Transactional
    def update(Claim claimInstance) {
        if (claimInstance == null) {
            notFound()
            return
        }

        if (claimInstance.hasErrors()) {
            respond claimInstance.errors, view: 'edit'
            return
        }

        claimInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Claim.label', default: 'Claim'), claimInstance.id])
                redirect claimInstance
            }
            '*' { respond claimInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Claim claimInstance) {

        if (claimInstance == null) {
            notFound()
            return
        }

        claimInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Claim.label', default: 'Claim'), claimInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'claim.label', default: 'Claim'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
