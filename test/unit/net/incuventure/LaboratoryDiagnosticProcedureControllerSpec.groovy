package net.incuventure


import grails.test.mixin.*
import spock.lang.*

@TestFor(LaboratoryDiagnosticProcedureController)
@Mock(LaboratoryDiagnosticProcedure)
class LaboratoryDiagnosticProcedureControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.laboratoryDiagnosticProcedureInstanceList
        model.laboratoryDiagnosticProcedureInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.laboratoryDiagnosticProcedureInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'POST'
        def laboratoryDiagnosticProcedure = new LaboratoryDiagnosticProcedure()
        laboratoryDiagnosticProcedure.validate()
        controller.save(laboratoryDiagnosticProcedure)

        then: "The create view is rendered again with the correct model"
        model.laboratoryDiagnosticProcedureInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        laboratoryDiagnosticProcedure = new LaboratoryDiagnosticProcedure(params)

        controller.save(laboratoryDiagnosticProcedure)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/laboratoryDiagnosticProcedure/show/1'
        controller.flash.message != null
        LaboratoryDiagnosticProcedure.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def laboratoryDiagnosticProcedure = new LaboratoryDiagnosticProcedure(params)
        controller.show(laboratoryDiagnosticProcedure)

        then: "A model is populated containing the domain instance"
        model.laboratoryDiagnosticProcedureInstance == laboratoryDiagnosticProcedure
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def laboratoryDiagnosticProcedure = new LaboratoryDiagnosticProcedure(params)
        controller.edit(laboratoryDiagnosticProcedure)

        then: "A model is populated containing the domain instance"
        model.laboratoryDiagnosticProcedureInstance == laboratoryDiagnosticProcedure
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'PUT'
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/laboratoryDiagnosticProcedure/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def laboratoryDiagnosticProcedure = new LaboratoryDiagnosticProcedure()
        laboratoryDiagnosticProcedure.validate()
        controller.update(laboratoryDiagnosticProcedure)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.laboratoryDiagnosticProcedureInstance == laboratoryDiagnosticProcedure

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        laboratoryDiagnosticProcedure = new LaboratoryDiagnosticProcedure(params).save(flush: true)
        controller.update(laboratoryDiagnosticProcedure)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/laboratoryDiagnosticProcedure/show/$laboratoryDiagnosticProcedure.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'DELETE'
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/laboratoryDiagnosticProcedure/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def laboratoryDiagnosticProcedure = new LaboratoryDiagnosticProcedure(params).save(flush: true)

        then: "It exists"
        LaboratoryDiagnosticProcedure.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(laboratoryDiagnosticProcedure)

        then: "The instance is deleted"
        LaboratoryDiagnosticProcedure.count() == 0
        response.redirectedUrl == '/laboratoryDiagnosticProcedure/index'
        flash.message != null
    }
}
