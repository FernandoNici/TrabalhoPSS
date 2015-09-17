package condominion



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SindicoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sindico.list(params), model:[sindicoInstanceCount: Sindico.count()]
    }

    def show(Sindico sindicoInstance) {
        respond sindicoInstance
    }

    def create() {
        respond new Sindico(params)
    }

    @Transactional
    def save(Sindico sindicoInstance) {
        if (sindicoInstance == null) {
            notFound()
            return
        }

        if (sindicoInstance.hasErrors()) {
            respond sindicoInstance.errors, view:'create'
            return
        }

        sindicoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sindicoInstance.label', default: 'Sindico'), sindicoInstance.id])
                redirect sindicoInstance
            }
            '*' { respond sindicoInstance, [status: CREATED] }
        }
    }

    def edit(Sindico sindicoInstance) {
        respond sindicoInstance
    }

    @Transactional
    def update(Sindico sindicoInstance) {
        if (sindicoInstance == null) {
            notFound()
            return
        }

        if (sindicoInstance.hasErrors()) {
            respond sindicoInstance.errors, view:'edit'
            return
        }

        sindicoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Sindico.label', default: 'Sindico'), sindicoInstance.id])
                redirect sindicoInstance
            }
            '*'{ respond sindicoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Sindico sindicoInstance) {

        if (sindicoInstance == null) {
            notFound()
            return
        }

        sindicoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Sindico.label', default: 'Sindico'), sindicoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sindicoInstance.label', default: 'Sindico'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
