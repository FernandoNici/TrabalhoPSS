package condominion



import grails.test.mixin.*
import spock.lang.*

@TestFor(PontoController)
@Mock(Ponto)
class PontoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.pontoInstanceList
            model.pontoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.pontoInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def ponto = new Ponto()
            ponto.validate()
            controller.save(ponto)

        then:"The create view is rendered again with the correct model"
            model.pontoInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            ponto = new Ponto(params)

            controller.save(ponto)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/ponto/show/1'
            controller.flash.message != null
            Ponto.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def ponto = new Ponto(params)
            controller.show(ponto)

        then:"A model is populated containing the domain instance"
            model.pontoInstance == ponto
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def ponto = new Ponto(params)
            controller.edit(ponto)

        then:"A model is populated containing the domain instance"
            model.pontoInstance == ponto
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/ponto/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def ponto = new Ponto()
            ponto.validate()
            controller.update(ponto)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.pontoInstance == ponto

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            ponto = new Ponto(params).save(flush: true)
            controller.update(ponto)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/ponto/show/$ponto.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/ponto/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def ponto = new Ponto(params).save(flush: true)

        then:"It exists"
            Ponto.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(ponto)

        then:"The instance is deleted"
            Ponto.count() == 0
            response.redirectedUrl == '/ponto/index'
            flash.message != null
    }
}
