package com.web.panacea

class ConfiguracionDeProyecto {

    String nombreDeProyecto
    String nuevoRepositorio
    String repositorioExistente
    boolean implementarEstructuraBase
    String archetype
    
    static constraints = {
        nombreDeProyecto blank:false
        nuevoRepositorio nullable:true, blank:true
        repositorioExistente nullable:true, blank:true, inList : ["Repositorio 1", "Repositorio 2", "Repositorio 3"]
        implementarEstructuraBase nullable:true, blank:true
        archetype blank:false, inList : ["Archetype 1", "Archetype 2", "Archetype 3"]
    }
    
    String toString() {
        "${nombreDeProyecto}"
    }
}
