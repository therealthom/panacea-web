<%@ page import="com.web.panacea.ConfiguracionDeProyecto" %>

<div class="control-group fieldcontain ${hasErrors(bean: configuracionDeProyectoInstance, field: 'repositorioExistente', 'error')} required">
    <label for="repositorioExistente" class="control-label">
        <g:message code="configuracionDeProyecto.repositorioExistente.label" default="Repositorio Existente" />
        <span class="required-indicator">*</span>
    </label>
    <div class="controls">
        <g:select id="repositorioExistente" name="repositorioExistente.id" from="${com.web.panacea.Repositorio.list()}" optionKey="id" required="" value="${configuracionDeProyectoInstance?.repositorioExistente?.id}" class="many-to-one"/>
    </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: configuracionDeProyectoInstance, field: 'nombreDeProyecto', 'error')} required">
    <label for="nombreDeProyecto" class="control-label">
        <g:message code="configuracionDeProyecto.nombreDeProyecto.label" default="Nombre De Proyecto" />
        <span class="required-indicator">*</span>
    </label>
    <div class="controls">
        <g:textField name="nombreDeProyecto" required="" value="${configuracionDeProyectoInstance?.nombreDeProyecto}"/>
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

