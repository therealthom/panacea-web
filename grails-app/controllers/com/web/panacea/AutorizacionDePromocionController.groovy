package com.web.panacea



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AutorizacionDePromocionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AutorizacionDePromocion.list(params), model:[autorizacionDePromocionInstanceCount: AutorizacionDePromocion.count()]
    }

    def show(AutorizacionDePromocion autorizacionDePromocionInstance) {
        respond autorizacionDePromocionInstance
    }

    def create() {
        respond new AutorizacionDePromocion(params)
    }

    @Transactional
    def save(AutorizacionDePromocion autorizacionDePromocionInstance) {
        if (autorizacionDePromocionInstance == null) {
            notFound()
            return
        }

        if (autorizacionDePromocionInstance.hasErrors()) {
            respond autorizacionDePromocionInstance.errors, view:'create'
            return
        }

        autorizacionDePromocionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'autorizacionDePromocionInstance.label', default: 'AutorizacionDePromocion'), autorizacionDePromocionInstance.id])
                redirect autorizacionDePromocionInstance
            }
            '*' { respond autorizacionDePromocionInstance, [status: CREATED] }
        }
    }

    def edit(AutorizacionDePromocion autorizacionDePromocionInstance) {
        respond autorizacionDePromocionInstance
    }

    @Transactional
    def update(AutorizacionDePromocion autorizacionDePromocionInstance) {
        if (autorizacionDePromocionInstance == null) {
            notFound()
            return
        }

        if (autorizacionDePromocionInstance.hasErrors()) {
            respond autorizacionDePromocionInstance.errors, view:'edit'
            return
        }

        autorizacionDePromocionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AutorizacionDePromocion.label', default: 'AutorizacionDePromocion'), autorizacionDePromocionInstance.id])
                redirect autorizacionDePromocionInstance
            }
            '*'{ respond autorizacionDePromocionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AutorizacionDePromocion autorizacionDePromocionInstance) {

        if (autorizacionDePromocionInstance == null) {
            notFound()
            return
        }

        autorizacionDePromocionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AutorizacionDePromocion.label', default: 'AutorizacionDePromocion'), autorizacionDePromocionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'autorizacionDePromocionInstance.label', default: 'AutorizacionDePromocion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
