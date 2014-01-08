package com.web.panacea

class VersionDeProyecto {

    ConfiguracionDeProyecto proyecto
    String version
    String detalles
    
    static constraints = {
        proyecto nullable:false
        version blank:false
        detalles blank:false
    }
    
    String toString() {
        "${proyecto.repositorioExistente.nombre}"
    }
}
