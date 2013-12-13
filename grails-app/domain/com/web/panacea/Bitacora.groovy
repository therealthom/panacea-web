package com.web.panacea

import com.web.panacea.security.Usuario

class Bitacora {

    TareaDeProceso tarea
    Date fecha
    String accion
    Usuario usuario
    
    static constraints = {
        tarea nullable:false
        fecha nullable:false
        accion nullable:false
        usuario nullable:false
    }
}
