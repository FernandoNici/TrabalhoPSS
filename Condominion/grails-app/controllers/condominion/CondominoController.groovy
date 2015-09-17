package condominion



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CondominoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Condomino.list(params), model:[condominoInstanceCount: Condomino.count()]
    }

    def show(Condomino condominoInstance) {
        respond condominoInstance
    }

    def create() {
        respond new Condomino(params)
    }

    @Transactional
    def save(Condomino condominoInstance) {
        if (condominoInstance == null) {
            notFound()
            return
        }

        if (condominoInstance.hasErrors()) {
            respond condominoInstance.errors, view:'create'
            return
        }

        condominoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'condominoInstance.label', default: 'Condomino'), condominoInstance.id])
                redirect condominoInstance
            }
            '*' { respond condominoInstance, [status: CREATED] }
        }
    }

    def edit(Condomino condominoInstance) {
        respond condominoInstance
    }

    @Transactional
    def update(Condomino condominoInstance) {
        if (condominoInstance == null) {
            notFound()
            return
        }

        if (condominoInstance.hasErrors()) {
            respond condominoInstance.errors, view:'edit'
            return
        }

        condominoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Condomino.label', default: 'Condomino'), condominoInstance.id])
                redirect condominoInstance
            }
            '*'{ respond condominoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Condomino condominoInstance) {

        if (condominoInstance == null) {
            notFound()
            return
        }

        condominoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Condomino.label', default: 'Condomino'), condominoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'condominoInstance.label', default: 'Condomino'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
