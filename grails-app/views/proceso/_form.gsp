<%@ page import="com.web.panacea.Proceso" %>



<div class="control-group fieldcontain ${hasErrors(bean: procesoInstance, field: 'nombre', 'error')} required">
	<label for="nombre" class="control-label">
		<g:message code="proceso.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
        <div class="controls">
          <g:textField name="nombre" required="" value="${procesoInstance?.nombre}"/>
        </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: procesoInstance, field: 'tareas', 'error')} ">
	<label for="tareas" class="control-label">
		<g:message code="proceso.tareas.label" default="Tareas" />
		
	</label>
        <div class="controls">
          
<ul class="one-to-many">
<g:each in="${procesoInstance?.tareas?}" var="t">
    <li><g:link controller="tareaDeProceso" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="tareaDeProceso" action="create" params="['proceso.id': procesoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tareaDeProceso.label', default: 'TareaDeProceso')])}</g:link>
</li>
</ul>

        </div>
</div>

