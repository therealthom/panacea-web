package com.web.panacea



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VersionDeProyectoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond VersionDeProyecto.list(params), model:[versionDeProyectoInstanceCount: VersionDeProyecto.count()]
    }

    def show(VersionDeProyecto versionDeProyectoInstance) {
        respond versionDeProyectoInstance
    }

    def create() {
        respond new VersionDeProyecto(params)
    }

    @Transactional
    def save(VersionDeProyecto versionDeProyectoInstance) {
        if (versionDeProyectoInstance == null) {
            notFound()
            return
        }

        if (versionDeProyectoInstance.hasErrors()) {
            respond versionDeProyectoInstance.errors, view:'create'
            return
        }

        versionDeProyectoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'versionDeProyectoInstance.label', default: 'VersionDeProyecto'), versionDeProyectoInstance.id])
                redirect versionDeProyectoInstance
            }
            '*' { respond versionDeProyectoInstance, [status: CREATED] }
        }
    }

    def edit(VersionDeProyecto versionDeProyectoInstance) {
        respond versionDeProyectoInstance
    }

    @Transactional
    def update(VersionDeProyecto versionDeProyectoInstance) {
        if (versionDeProyectoInstance == null) {
            notFound()
            return
        }

        if (versionDeProyectoInstance.hasErrors()) {
            respond versionDeProyectoInstance.errors, view:'edit'
            return
        }

        versionDeProyectoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'VersionDeProyecto.label', default: 'VersionDeProyecto'), versionDeProyectoInstance.id])
                redirect versionDeProyectoInstance
            }
            '*'{ respond versionDeProyectoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(VersionDeProyecto versionDeProyectoInstance) {

        if (versionDeProyectoInstance == null) {
            notFound()
            return
        }

        versionDeProyectoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'VersionDeProyecto.label', default: 'VersionDeProyecto'), versionDeProyectoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'versionDeProyectoInstance.label', default: 'VersionDeProyecto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
