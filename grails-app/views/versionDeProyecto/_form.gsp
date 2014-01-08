<%@ page import="com.web.panacea.VersionDeProyecto" %>

<div class="control-group fieldcontain ${hasErrors(bean: versionDeProyectoInstance, field: 'proyecto', 'error')} required">
    <label for="proyecto" class="control-label">
        <g:message code="versionDeProyecto.proyecto.label" default="Proyecto" />
        <span class="required-indicator">*</span>
    </label>
    <div class="controls">
        <g:select id="proyecto" name="proyecto.id" from="${com.web.panacea.ConfiguracionDeProyecto.list()}" optionKey="id" required="" value="${versionDeProyectoInstance?.proyecto?.id}" class="many-to-one"/>
    </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: versionDeProyectoInstance, field: 'version', 'error')} required">
    <label for="version" class="control-label">
        <g:message code="versionDeProyecto.version.label" default="Versión" />
        <span class="required-indicator">*</span>
    </label>
    <div class="controls">
        <g:textField name="version" required="" value="${versionDeProyectoInstance?.version}"/>
    </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: versionDeProyectoInstance, field: 'detalles', 'error')} required">
    <label for="detalles" class="control-label">
        <g:message code="versionDeProyecto.detalles.label" default="Detalles" />
        <span class="required-indicator">*</span>
    </label>
    <div class="controls">
        <g:textField name="detalles" required="" value="${versionDeProyectoInstance?.detalles}"/>
    </div>
</div>