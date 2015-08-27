package condominion



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MudancaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Mudanca.list(params), model:[mudancaInstanceCount: Mudanca.count()]
    }

    def show(Mudanca mudancaInstance) {
        respond mudancaInstance
    }

    def create() {
        respond new Mudanca(params)
    }

    @Transactional
    def save(Mudanca mudancaInstance) {
        if (mudancaInstance == null) {
            notFound()
            return
        }

        if (mudancaInstance.hasErrors()) {
            respond mudancaInstance.errors, view:'create'
            return
        }

        mudancaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mudancaInstance.label', default: 'Mudanca'), mudancaInstance.id])
                redirect mudancaInstance
            }
            '*' { respond mudancaInstance, [status: CREATED] }
        }
    }

    def edit(Mudanca mudancaInstance) {
        respond mudancaInstance
    }

    @Transactional
    def update(Mudanca mudancaInstance) {
        if (mudancaInstance == null) {
            notFound()
            return
        }

        if (mudancaInstance.hasErrors()) {
            respond mudancaInstance.errors, view:'edit'
            return
        }

        mudancaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Mudanca.label', default: 'Mudanca'), mudancaInstance.id])
                redirect mudancaInstance
            }
            '*'{ respond mudancaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Mudanca mudancaInstance) {

        if (mudancaInstance == null) {
            notFound()
            return
        }

        mudancaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Mudanca.label', default: 'Mudanca'), mudancaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mudancaInstance.label', default: 'Mudanca'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
