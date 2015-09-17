package condominion



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BoletoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Boleto.list(params), model:[boletoInstanceCount: Boleto.count()]
    }

    def show(Boleto boletoInstance) {
        respond boletoInstance
    }

    def create() {
        respond new Boleto(params)
    }

    @Transactional
    def save(Boleto boletoInstance) {
        if (boletoInstance == null) {
            notFound()
            return
        }

        if (boletoInstance.hasErrors()) {
            respond boletoInstance.errors, view:'create'
            return
        }

        boletoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'boletoInstance.label', default: 'Boleto'), boletoInstance.id])
                redirect boletoInstance
            }
            '*' { respond boletoInstance, [status: CREATED] }
        }
    }

    def edit(Boleto boletoInstance) {
        respond boletoInstance
    }

    @Transactional
    def update(Boleto boletoInstance) {
        if (boletoInstance == null) {
            notFound()
            return
        }

        if (boletoInstance.hasErrors()) {
            respond boletoInstance.errors, view:'edit'
            return
        }

        boletoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Boleto.label', default: 'Boleto'), boletoInstance.id])
                redirect boletoInstance
            }
            '*'{ respond boletoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Boleto boletoInstance) {

        if (boletoInstance == null) {
            notFound()
            return
        }

        boletoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Boleto.label', default: 'Boleto'), boletoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'boletoInstance.label', default: 'Boleto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
