<%@ page import="com.web.panacea.ConfiguracionDeProyecto" %>



<div class="control-group fieldcontain ${hasErrors(bean: configuracionDeProyectoInstance, field: 'nombreDeProyecto', 'error')} required">
    <label for="nombreDeProyecto" class="control-label">
        <g:message code="configuracionDeProyecto.nombreDeProyecto.label" default="Nombre De Proyecto" />
        <span class="required-indicator">*</span>
    </label>
    <div class="controls">
        <g:textField name="nombreDeProyecto" required="" value="${configuracionDeProyectoInstance?.nombreDeProyecto}"/>
    </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: configuracionDeProyectoInstance, field: 'nuevoRepositorio', 'error')} ">
    <label for="nuevoRepositorio" class="control-label">
        <g:message code="configuracionDeProyecto.nuevoRepositorio.label" default="Nuevo Repositorio" />
        <g:radio name="group1"/>
    </label>
    <div class="controls">
        <g:textField name="nuevoRepositorio" value="${configuracionDeProyectoInstance?.nuevoRepositorio}"/>
    </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: configuracionDeProyectoInstance, field: 'repositorioExistente', 'error')} ">
    <label for="repositorioExistente" class="control-label">
        <g:message code="configuracionDeProyecto.repositorioExistente.label" default="Repositorio Existente" />
        <g:radio name="group1"/>        
    </label>
    <div class="controls">
        <g:select name="repositorioExistente" from="${configuracionDeProyectoInstance.constraints.repositorioExistente.inList}" value="${configuracionDeProyectoInstance?.repositorioExistente}" valueMessagePrefix="configuracionDeProyecto.repositorioExistente" noSelection="['': '']"/>
    </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: configuracionDeProyectoInstance, field: 'implementarEstructuraBase', 'error')} ">
    <label for="implementarEstructuraBase" class="control-label">
        <g:message code="configuracionDeProyecto.implementarEstructuraBase.label" default="Implementar Estructura Base" />

    </label>
    <div class="controls">
        <g:checkBox name="implementarEstructuraBase" value="${configuracionDeProyectoInstance?.implementarEstructuraBase}" />
    </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: configuracionDeProyectoInstance, field: 'archetype', 'error')} required">
    <label for="archetype" class="control-label">
        <g:message code="configuracionDeProyecto.archetype.label" default="Archetype" />
        <span class="required-indicator">*</span>
    </label>
    <div class="controls">
        <g:select name="archetype" from="${configuracionDeProyectoInstance.constraints.archetype.inList}" required="" value="${configuracionDeProyectoInstance?.archetype}" valueMessagePrefix="configuracionDeProyecto.archetype"/>
    </div>
</div>

