package condominion



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PontoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ponto.list(params), model:[pontoInstanceCount: Ponto.count()]
    }

    def show(Ponto pontoInstance) {
        respond pontoInstance
    }

    def create() {
        respond new Ponto(params)
    }

    @Transactional
    def save(Ponto pontoInstance) {
        if (pontoInstance == null) {
            notFound()
            return
        }

        if (pontoInstance.hasErrors()) {
            respond pontoInstance.errors, view:'create'
            return
        }

        pontoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pontoInstance.label', default: 'Ponto'), pontoInstance.id])
                redirect pontoInstance
            }
            '*' { respond pontoInstance, [status: CREATED] }
        }
    }

    def edit(Ponto pontoInstance) {
        respond pontoInstance
    }

    @Transactional
    def update(Ponto pontoInstance) {
        if (pontoInstance == null) {
            notFound()
            return
        }

        if (pontoInstance.hasErrors()) {
            respond pontoInstance.errors, view:'edit'
            return
        }

        pontoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ponto.label', default: 'Ponto'), pontoInstance.id])
                redirect pontoInstance
            }
            '*'{ respond pontoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ponto pontoInstance) {

        if (pontoInstance == null) {
            notFound()
            return
        }

        pontoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ponto.label', default: 'Ponto'), pontoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pontoInstance.label', default: 'Ponto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
