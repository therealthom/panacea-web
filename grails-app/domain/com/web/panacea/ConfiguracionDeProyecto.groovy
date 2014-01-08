package com.web.panacea

class ConfiguracionDeProyecto {

    String nombreDeProyecto
    Repositorio repositorioExistente
    boolean implementarEstructuraBase
    String archetype
    
    static constraints = {
        nombreDeProyecto blank:false
        repositorioExistente nullable:false
        implementarEstructuraBase nullable:true, blank:true
        archetype blank:false, inList : ["Archetype 1", "Archetype 2", "Archetype 3"]
    }
    
    String toString() {
        "${nombreDeProyecto}"
    }
}
