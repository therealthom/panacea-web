package com.web.panacea



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RepositorioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Repositorio.list(params), model:[repositorioInstanceCount: Repositorio.count()]
    }

    def show(Repositorio repositorioInstance) {
        respond repositorioInstance
    }

    def create() {
        respond new Repositorio(params)
    }

    @Transactional
    def save(Repositorio repositorioInstance) {
        if (repositorioInstance == null) {
            notFound()
            return
        }

        if (repositorioInstance.hasErrors()) {
            respond repositorioInstance.errors, view:'create'
            return
        }

        repositorioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'repositorioInstance.label', default: 'Repositorio'), repositorioInstance.id])
                redirect repositorioInstance
            }
            '*' { respond repositorioInstance, [status: CREATED] }
        }
    }

    def edit(Repositorio repositorioInstance) {
        respond repositorioInstance
    }

    @Transactional
    def update(Repositorio repositorioInstance) {
        if (repositorioInstance == null) {
            notFound()
            return
        }

        if (repositorioInstance.hasErrors()) {
            respond repositorioInstance.errors, view:'edit'
            return
        }

        repositorioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Repositorio.label', default: 'Repositorio'), repositorioInstance.id])
                redirect repositorioInstance
            }
            '*'{ respond repositorioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Repositorio repositorioInstance) {

        if (repositorioInstance == null) {
            notFound()
            return
        }

        repositorioInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Repositorio.label', default: 'Repositorio'), repositorioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'repositorioInstance.label', default: 'Repositorio'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
