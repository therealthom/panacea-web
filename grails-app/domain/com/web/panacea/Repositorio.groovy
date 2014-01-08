package com.web.panacea

class Repositorio {

    String nombre
    
    static constraints = {
        nombre blank:false
    }
    
    String toString() {
        "${nombre}"
    }
}
