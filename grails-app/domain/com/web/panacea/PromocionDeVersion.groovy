package com.web.panacea

class PromocionDeVersion {

    ConfiguracionDeProyecto proyecto
    String ambiente
    String observaciones
    static hasMany = [ documentos : DocumentacionDeProyecto ]
    
    static constraints = {
        proyecto nullable:false
        ambiente blank:false, inList:["Desarrollo", "Pruebas", "Produccion"]
        documentos nullable:true
        observaciones nullable:true, blank:true, maxSize:2000
    }
    
    String toString () {
        "${proyecto.nombreDeProyecto}"
    }
}
