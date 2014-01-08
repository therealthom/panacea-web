package com.web.panacea

class ConfiguracionDeProyectoController {

    static scaffold = ConfiguracionDeProyecto
    
    def saveRepo() {
        def nombre = params.nombre
        if (nombre) {
            def repositorio = new Repositorio(params)
            if (repositorio.save(flash:true)) {
                flash.message = "Repositorio creado."
            } else {
                flash.error = "El repositorio no pudo ser creado"
            }
        } else {
            flash.error = "Indica el nombre del repositorio"
        }
        redirect action:"create"
    }
}
