package condominion



import grails.test.mixin.*
import spock.lang.*

@TestFor(FuncionarioController)
@Mock(Funcionario)
class FuncionarioControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.funcionarioInstanceList
            model.funcionarioInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.funcionarioInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def funcionario = new Funcionario()
            funcionario.validate()
            controller.save(funcionario)

        then:"The create view is rendered again with the correct model"
            model.funcionarioInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            funcionario = new Funcionario(params)

            controller.save(funcionario)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/funcionario/show/1'
            controller.flash.message != null
            Funcionario.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def funcionario = new Funcionario(params)
            controller.show(funcionario)

        then:"A model is populated containing the domain instance"
            model.funcionarioInstance == funcionario
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def funcionario = new Funcionario(params)
            controller.edit(funcionario)

        then:"A model is populated containing the domain instance"
            model.funcionarioInstance == funcionario
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/funcionario/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def funcionario = new Funcionario()
            funcionario.validate()
            controller.update(funcionario)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.funcionarioInstance == funcionario

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            funcionario = new Funcionario(params).save(flush: true)
            controller.update(funcionario)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/funcionario/show/$funcionario.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/funcionario/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def funcionario = new Funcionario(params).save(flush: true)

        then:"It exists"
            Funcionario.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(funcionario)

        then:"The instance is deleted"
            Funcionario.count() == 0
            response.redirectedUrl == '/funcionario/index'
            flash.message != null
    }
}
