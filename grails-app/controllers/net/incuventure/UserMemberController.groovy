package net.incuventure

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_admin','ROLE_staff'])
class UserMemberController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserMember.list(params), model: [userMemberInstanceCount: UserMember.count()]
    }

    def show(UserMember userMemberInstance) {
        respond userMemberInstance
    }

    def create() {
        respond new UserMember(params)
    }

    @Transactional
    def save(UserMember userMemberInstance) {
        if (userMemberInstance == null) {
            notFound()
            return
        }

        if (userMemberInstance.hasErrors()) {
            respond userMemberInstance.errors, view: 'create'
            return
        }

        userMemberInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userMember.label', default: 'UserMember'), userMemberInstance.id])
                redirect userMemberInstance
            }
            '*' { respond userMemberInstance, [status: CREATED] }
        }
    }

    def edit(UserMember userMemberInstance) {
        respond userMemberInstance
    }

    @Transactional
    def update(UserMember userMemberInstance) {
        if (userMemberInstance == null) {
            notFound()
            return
        }

        if (userMemberInstance.hasErrors()) {
            respond userMemberInstance.errors, view: 'edit'
            return
        }

        userMemberInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserMember.label', default: 'UserMember'), userMemberInstance.id])
                redirect userMemberInstance
            }
            '*' { respond userMemberInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserMember userMemberInstance) {

        if (userMemberInstance == null) {
            notFound()
            return
        }

        userMemberInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserMember.label', default: 'UserMember'), userMemberInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userMember.label', default: 'UserMember'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
