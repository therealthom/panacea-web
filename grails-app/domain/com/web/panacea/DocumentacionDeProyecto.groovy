package com.web.panacea

class DocumentacionDeProyecto {

    byte[] documento
    static belongsTo = [ promocionDeVersion : PromocionDeVersion ]
    
    static constraints = {
        documento nullable:false, maxSize:10485760
        promocionDeVersion nullable:false
    }
    
    String toString() {
        "Documento ${id}"
    }
}
