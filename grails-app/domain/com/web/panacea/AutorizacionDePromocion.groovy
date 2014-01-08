package com.web.panacea

class AutorizacionDePromocion {

    PromocionDeVersion promocionDeVersion
    Date fecha
    String observaciones
    
    static constraints = {
        promocionDeVersion nullable:false
        fecha nullable:false
        observaciones blank:true, maxSize:2000
    }
}
