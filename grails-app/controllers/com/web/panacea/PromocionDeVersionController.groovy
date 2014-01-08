package com.web.panacea



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PromocionDeVersionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PromocionDeVersion.list(params), model:[promocionDeVersionInstanceCount: PromocionDeVersion.count()]
    }

    def show(PromocionDeVersion promocionDeVersionInstance) {
        respond promocionDeVersionInstance
    }

    def create() {
        respond new PromocionDeVersion(params)
    }

    @Transactional
    def save(PromocionDeVersion promocionDeVersionInstance) {
        if (promocionDeVersionInstance == null) {
            notFound()
            return
        }

        if (promocionDeVersionInstance.hasErrors()) {
            respond promocionDeVersionInstance.errors, view:'create'
            return
        }

        promocionDeVersionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'promocionDeVersionInstance.label', default: 'PromocionDeVersion'), promocionDeVersionInstance.id])
                redirect promocionDeVersionInstance
            }
            '*' { respond promocionDeVersionInstance, [status: CREATED] }
        }
    }

    def edit(PromocionDeVersion promocionDeVersionInstance) {
        respond promocionDeVersionInstance
    }

    @Transactional
    def update(PromocionDeVersion promocionDeVersionInstance) {
        if (promocionDeVersionInstance == null) {
            notFound()
            return
        }

        if (promocionDeVersionInstance.hasErrors()) {
            respond promocionDeVersionInstance.errors, view:'edit'
            return
        }

        promocionDeVersionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PromocionDeVersion.label', default: 'PromocionDeVersion'), promocionDeVersionInstance.id])
                redirect promocionDeVersionInstance
            }
            '*'{ respond promocionDeVersionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PromocionDeVersion promocionDeVersionInstance) {

        if (promocionDeVersionInstance == null) {
            notFound()
            return
        }

        promocionDeVersionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PromocionDeVersion.label', default: 'PromocionDeVersion'), promocionDeVersionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'promocionDeVersionInstance.label', default: 'PromocionDeVersion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
