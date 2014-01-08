<%@ page import="com.web.panacea.PromocionDeVersion" %>

<div class="control-group fieldcontain ${hasErrors(bean: promocionDeVersionInstance, field: 'proyecto', 'error')} required">
    <label for="proyecto" class="control-label">
        <g:message code="promocionDeVersion.proyecto.label" default="Proyecto" />
        <span class="required-indicator">*</span>
    </label>
    <div class="controls">
        <g:select id="proyecto" name="proyecto.id" from="${com.web.panacea.ConfiguracionDeProyecto.list()}" optionKey="id" required="" value="${promocionDeVersionInstance?.proyecto?.id}" class="many-to-one"/>
    </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: promocionDeVersionInstance, field: 'ambiente', 'error')} required">
    <label for="ambiente" class="control-label">
        <g:message code="promocionDeVersion.ambiente.label" default="Ambiente" />
        <span class="required-indicator">*</span>
    </label>
    <div class="controls">
        <g:select name="ambiente" from="${promocionDeVersionInstance.constraints.ambiente.inList}" required="" value="${promocionDeVersionInstance?.ambiente}" valueMessagePrefix="promocionDeVersion.ambiente"/>
    </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: promocionDeVersionInstance, field: 'documentos', 'error')} ">
    <label for="documentos" class="control-label">
        <g:message code="promocionDeVersion.documentos.label" default="Documentos" />

    </label>
    <div class="controls">
        <ul class="one-to-many">
            <g:each in="${promocionDeVersionInstance?.documentos?}" var="d">
                <g:link controller="documentacionDeProyecto" action="downloadArchivo" id="${d.id}">${d?.encodeAsHTML()}</g:link>
                <br/>
            </g:each>
            <li class="add">
                <g:link controller="documentacionDeProyecto" action="create" params="['promocionDeVersion.id': promocionDeVersionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'documentacionDeProyecto.label', default: 'DocumentacionDeProyecto')])}</g:link>
                </li>
            </ul>
        </div>
    </div>

<div class="control-group fieldcontain ${hasErrors(bean: promocionDeVersionInstance, field: 'observaciones', 'error')} ">
    <label for="observaciones" class="control-label">
        <g:message code="promocionDeVersion.observaciones.label" default="Observaciones" />
    </label>
    <div class="controls">
        <g:textArea name="observaciones" cols="40" rows="5" maxlength="2000" value="${promocionDeVersionInstance?.observaciones}"/>
    </div>
</div>

