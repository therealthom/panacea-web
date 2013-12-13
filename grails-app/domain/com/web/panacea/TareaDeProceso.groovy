package com.web.panacea

class TareaDeProceso {

    String nombre
    
    static belongsTo = [ proceso : Proceso ]
    
    static constraints = {
        nombre blank:false
        proceso nullable:false
    }
    
    String toString () {
        "${nombre}"
    }
}
