package condominion



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DespesaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Despesa.list(params), model:[despesaInstanceCount: Despesa.count()]
    }

    def show(Despesa despesaInstance) {
        respond despesaInstance
    }

    def create() {
        respond new Despesa(params)
    }

    @Transactional
    def save(Despesa despesaInstance) {
        if (despesaInstance == null) {
            notFound()
            return
        }

        if (despesaInstance.hasErrors()) {
            respond despesaInstance.errors, view:'create'
            return
        }

        despesaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'despesaInstance.label', default: 'Despesa'), despesaInstance.id])
                redirect despesaInstance
            }
            '*' { respond despesaInstance, [status: CREATED] }
        }
    }

    def edit(Despesa despesaInstance) {
        respond despesaInstance
    }

    @Transactional
    def update(Despesa despesaInstance) {
        if (despesaInstance == null) {
            notFound()
            return
        }

        if (despesaInstance.hasErrors()) {
            respond despesaInstance.errors, view:'edit'
            return
        }

        despesaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Despesa.label', default: 'Despesa'), despesaInstance.id])
                redirect despesaInstance
            }
            '*'{ respond despesaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Despesa despesaInstance) {

        if (despesaInstance == null) {
            notFound()
            return
        }

        despesaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Despesa.label', default: 'Despesa'), despesaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'despesaInstance.label', default: 'Despesa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
