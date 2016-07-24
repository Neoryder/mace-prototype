package net.incuventure

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.CREATED
import static org.springframework.http.HttpStatus.NOT_FOUND
import static org.springframework.http.HttpStatus.NO_CONTENT
import static org.springframework.http.HttpStatus.OK

class HomeController {

    def springSecurityService

@Secured(['ROLE_member'])
    def index() {
        println "params:"+params
        if (springSecurityService.loggedIn) {
            def currentUser = springSecurityService.currentUser

            println currentUser
            println User.findByUsername(currentUser)
            println UserMember.findByUser(User.findByUsername(currentUser))
            println UserMember.findByUser(User.findByUsername(currentUser))?.member

            if (User.findByUsername(currentUser) && UserMember.findByUser(User.findByUsername(currentUser))) {
                session.userType = "member"
                Member memberInstance = UserMember.findByUser(User.findByUsername(currentUser)).member
                [memberInstance:memberInstance, params:params]
            } else {
                redirect(controller: 'member',action: 'index')
            }

        } else {
            redirect(controller: 'login',action: 'auth')
        }

    }

    def doctorSearch(){

        println params
        params.max = 100
        respond Doctor.list(params), model: [doctorInstanceCount: Doctor.count()]
    }

    def hospitalSearch(){
        println params
        params.max = 100
        respond Hospital.list(params), model: [hospitalInstanceCount: Hospital.count()]
    }


    def display(TransactionRequest transactionRequestInstance) {
        respond transactionRequestInstance
    }

    def schedule(){
        TransactionRequest tr =  new TransactionRequest()
        tr.member = Member.findByUserNumber(params.userNumber)
        respond tr
    }

    def modify(TransactionRequest transactionRequestInstance) {
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

    @Transactional
    def saveSchedule(TransactionRequest transactionRequestInstance) {
        if (transactionRequestInstance == null) {
            notFound()
            return
        }

        if (transactionRequestInstance.hasErrors()) {
            respond transactionRequestInstance.errors, view: 'schedule'
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
