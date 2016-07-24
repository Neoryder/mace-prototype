package net.incuventure



import grails.test.mixin.*
import spock.lang.*

@TestFor(ApprovalController)
@Mock(Approval)
class ApprovalControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.approvalInstanceList
            model.approvalInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.approvalInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def approval = new Approval()
            approval.validate()
            controller.save(approval)

        then:"The create view is rendered again with the correct model"
            model.approvalInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            approval = new Approval(params)

            controller.save(approval)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/approval/show/1'
            controller.flash.message != null
            Approval.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def approval = new Approval(params)
            controller.show(approval)

        then:"A model is populated containing the domain instance"
            model.approvalInstance == approval
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def approval = new Approval(params)
            controller.edit(approval)

        then:"A model is populated containing the domain instance"
            model.approvalInstance == approval
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/approval/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def approval = new Approval()
            approval.validate()
            controller.update(approval)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.approvalInstance == approval

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            approval = new Approval(params).save(flush: true)
            controller.update(approval)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/approval/show/$approval.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/approval/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def approval = new Approval(params).save(flush: true)

        then:"It exists"
            Approval.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(approval)

        then:"The instance is deleted"
            Approval.count() == 0
            response.redirectedUrl == '/approval/index'
            flash.message != null
    }
}
