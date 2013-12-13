package com.web.panacea

class Proceso {

    String nombre
    
    static hasMany = [ tareas : TareaDeProceso ]
    
    static constraints = {
        nombre blank:false
        tareas nullable:true
    }
    
    String toString () {
        "${nombre}"
    }
}
