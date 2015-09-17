package condominion



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OcorrenciaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ocorrencia.list(params), model:[ocorrenciaInstanceCount: Ocorrencia.count()]
    }

    def show(Ocorrencia ocorrenciaInstance) {
        respond ocorrenciaInstance
    }

    def create() {
        respond new Ocorrencia(params)
    }

    @Transactional
    def save(Ocorrencia ocorrenciaInstance) {
        if (ocorrenciaInstance == null) {
            notFound()
            return
        }

        if (ocorrenciaInstance.hasErrors()) {
            respond ocorrenciaInstance.errors, view:'create'
            return
        }

        ocorrenciaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ocorrenciaInstance.label', default: 'Ocorrencia'), ocorrenciaInstance.id])
                redirect ocorrenciaInstance
            }
            '*' { respond ocorrenciaInstance, [status: CREATED] }
        }
    }

    def edit(Ocorrencia ocorrenciaInstance) {
        respond ocorrenciaInstance
    }

    @Transactional
    def update(Ocorrencia ocorrenciaInstance) {
        if (ocorrenciaInstance == null) {
            notFound()
            return
        }

        if (ocorrenciaInstance.hasErrors()) {
            respond ocorrenciaInstance.errors, view:'edit'
            return
        }

        ocorrenciaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ocorrencia.label', default: 'Ocorrencia'), ocorrenciaInstance.id])
                redirect ocorrenciaInstance
            }
            '*'{ respond ocorrenciaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ocorrencia ocorrenciaInstance) {

        if (ocorrenciaInstance == null) {
            notFound()
            return
        }

        ocorrenciaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ocorrencia.label', default: 'Ocorrencia'), ocorrenciaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ocorrenciaInstance.label', default: 'Ocorrencia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
