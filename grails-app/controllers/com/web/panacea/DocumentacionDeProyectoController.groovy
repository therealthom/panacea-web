package com.web.panacea

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DocumentacionDeProyectoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def downloadArchivo (Long id) {
        def documentoInstance = DocumentacionDeProyecto.get(id)
        response.setHeader("Content-Disposition", "attachment;filename=\"" + documentoInstance.nombre + "\"");
        byte[] documento = documentoInstance.documento
        response.outputStream << documento
    }
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DocumentacionDeProyecto.list(params), model:[documentacionDeProyectoInstanceCount: DocumentacionDeProyecto.count()]
    }

    def show(DocumentacionDeProyecto documentacionDeProyectoInstance) {
        respond documentacionDeProyectoInstance
    }

    def create() {
        respond new DocumentacionDeProyecto(params)
    }

    @Transactional
    def save(DocumentacionDeProyecto documentacionDeProyectoInstance) {
        if (documentacionDeProyectoInstance == null) {
            notFound()
            return
        }
        
        documentacionDeProyectoInstance.nombre = params.documento.getOriginalFilename()
        println documentacionDeProyectoInstance.nombre
        
        /*if (documentacionDeProyectoInstance.hasErrors()) {
            respond documentacionDeProyectoInstance.errors, view:'create'
            return
        }*/

        documentacionDeProyectoInstance.save flush:true

        redirect controller:"promocionDeVersion", action:"edit", id:documentacionDeProyectoInstance.promocionDeVersion.id        
    }

    def edit(DocumentacionDeProyecto documentacionDeProyectoInstance) {
        respond documentacionDeProyectoInstance
    }

    @Transactional
    def update(DocumentacionDeProyecto documentacionDeProyectoInstance) {
        if (documentacionDeProyectoInstance == null) {
            notFound()
            return
        }        
        if (documentacionDeProyectoInstance.hasErrors()) {
            respond documentacionDeProyectoInstance.errors, view:'edit'
            return
        }
                
        documentacionDeProyectoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DocumentacionDeProyecto.label', default: 'DocumentacionDeProyecto'), documentacionDeProyectoInstance.id])
                redirect documentacionDeProyectoInstance
            }
            '*'{ respond documentacionDeProyectoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DocumentacionDeProyecto documentacionDeProyectoInstance) {

        if (documentacionDeProyectoInstance == null) {
            notFound()
            return
        }

        documentacionDeProyectoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DocumentacionDeProyecto.label', default: 'DocumentacionDeProyecto'), documentacionDeProyectoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'documentacionDeProyectoInstance.label', default: 'DocumentacionDeProyecto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
