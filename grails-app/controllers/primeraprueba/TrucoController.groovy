package primeraprueba



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TrucoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Truco.list(params), model:[trucoInstanceCount: Truco.count()]
    }

    def show(Truco trucoInstance) {
        respond trucoInstance
    }

    def create() {
        respond new Truco(params)
    }

    @Transactional
    def save(Truco trucoInstance) {
        if (trucoInstance == null) {
            notFound()
            return
        }

        if (trucoInstance.hasErrors()) {
            respond trucoInstance.errors, view:'create'
            return
        }

        trucoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'truco.label', default: 'Truco'), trucoInstance.id])
                redirect trucoInstance
            }
            '*' { respond trucoInstance, [status: CREATED] }
        }
    }

    def edit(Truco trucoInstance) {
        respond trucoInstance
    }

    @Transactional
    def update(Truco trucoInstance) {
        if (trucoInstance == null) {
            notFound()
            return
        }

        if (trucoInstance.hasErrors()) {
            respond trucoInstance.errors, view:'edit'
            return
        }

        trucoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Truco.label', default: 'Truco'), trucoInstance.id])
                redirect trucoInstance
            }
            '*'{ respond trucoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Truco trucoInstance) {

        if (trucoInstance == null) {
            notFound()
            return
        }

        trucoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Truco.label', default: 'Truco'), trucoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'truco.label', default: 'Truco'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
