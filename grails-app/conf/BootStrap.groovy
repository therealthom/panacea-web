
import com.web.panacea.Bitacora
import com.web.panacea.Proceso
import com.web.panacea.TareaDeProceso
import com.web.panacea.security.Rol
import com.web.panacea.security.Usuario
import com.web.panacea.security.UsuarioRol

class BootStrap {

    def init = { servletContext ->
        new Usuario (
            firstName : "Administrador",
            lastName : "Del Sistema",
            email : "admin@panacea.com",
            username : "admin",
            password : "4dm1n!",
            enabled : true,
            accountExpired : false,
            accountLocked : false,
            passwordExpired : false
        ).save()          
        new Rol (authority : "ROLE_ADMINISTRADOR").save()                
        new UsuarioRol (usuario : Usuario.findByUsername("admin"), rol : Rol.findByAuthority("ROLE_ADMINISTRADOR")).save()
        
        new Proceso(nombre: "Proceso 1").save()
        new TareaDeProceso (nombre: "Tarea 1 de Proceso 1", proceso: Proceso.get(1)).save()
        new TareaDeProceso (nombre: "Tarea 2 de Proceso 1", proceso: Proceso.get(1)).save()
        new TareaDeProceso (nombre: "Tarea 3 de Proceso 1", proceso: Proceso.get(1)).save()
        
        new Proceso(nombre: "Proceso 2").save()
        new TareaDeProceso (nombre: "Tarea 1 de Proceso 1", proceso: Proceso.get(2)).save()
        new TareaDeProceso (nombre: "Tarea 2 de Proceso 2", proceso: Proceso.get(2)).save()       
        
        new Proceso(nombre: "Proceso 3").save()
        new TareaDeProceso (nombre: "Tarea 1 de Proceso 3", proceso: Proceso.get(3)).save()
        new TareaDeProceso (nombre: "Tarea 2 de Proceso 3", proceso: Proceso.get(3)).save()
        new TareaDeProceso (nombre: "Tarea 3 de Proceso 3", proceso: Proceso.get(3)).save()
        new TareaDeProceso (nombre: "Tarea 4 de Proceso 3", proceso: Proceso.get(3)).save()
        
        new Bitacora(tarea:TareaDeProceso.get(1), fecha: new Date(), accion:"Creación de Tarea", usuario:Usuario.get(1)).save()
        new Bitacora(tarea:TareaDeProceso.get(2), fecha: new Date()-1, accion:"Creación de Tarea", usuario:Usuario.get(1)).save()
        new Bitacora(tarea:TareaDeProceso.get(3), fecha: new Date()-2, accion:"Creación de Tarea", usuario:Usuario.get(1)).save()
        new Bitacora(tarea:TareaDeProceso.get(4), fecha: new Date()-3, accion:"Creación de Tarea", usuario:Usuario.get(1)).save()
        new Bitacora(tarea:TareaDeProceso.get(5), fecha: new Date()-4, accion:"Creación de Tarea", usuario:Usuario.get(1)).save()
    }
    def destroy = {
    }
}
