package condominion



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FuncionarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Funcionario.list(params), model:[funcionarioInstanceCount: Funcionario.count()]
    }

    def show(Funcionario funcionarioInstance) {
        respond funcionarioInstance
    }

    def create() {
        respond new Funcionario(params)
    }

    @Transactional
    def save(Funcionario funcionarioInstance) {
        if (funcionarioInstance == null) {
            notFound()
            return
        }

        if (funcionarioInstance.hasErrors()) {
            respond funcionarioInstance.errors, view:'create'
            return
        }

        funcionarioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'funcionarioInstance.label', default: 'Funcionario'), funcionarioInstance.id])
                redirect funcionarioInstance
            }
            '*' { respond funcionarioInstance, [status: CREATED] }
        }
    }

    def edit(Funcionario funcionarioInstance) {
        respond funcionarioInstance
    }

    @Transactional
    def update(Funcionario funcionarioInstance) {
        if (funcionarioInstance == null) {
            notFound()
            return
        }

        if (funcionarioInstance.hasErrors()) {
            respond funcionarioInstance.errors, view:'edit'
            return
        }

        funcionarioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Funcionario.label', default: 'Funcionario'), funcionarioInstance.id])
                redirect funcionarioInstance
            }
            '*'{ respond funcionarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Funcionario funcionarioInstance) {

        if (funcionarioInstance == null) {
            notFound()
            return
        }

        funcionarioInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Funcionario.label', default: 'Funcionario'), funcionarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'funcionarioInstance.label', default: 'Funcionario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
