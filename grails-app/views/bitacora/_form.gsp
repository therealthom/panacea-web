<%@ page import="com.web.panacea.Bitacora" %>



<div class="control-group fieldcontain ${hasErrors(bean: bitacoraInstance, field: 'tarea', 'error')} required">
	<label for="tarea" class="control-label">
		<g:message code="bitacora.tarea.label" default="Tarea" />
		<span class="required-indicator">*</span>
	</label>
        <div class="controls">
          <g:select id="tarea" name="tarea.id" from="${com.web.panacea.TareaDeProceso.list()}" optionKey="id" required="" value="${bitacoraInstance?.tarea?.id}" class="many-to-one"/>
        </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bitacoraInstance, field: 'fecha', 'error')} required">
	<label for="fecha" class="control-label">
		<g:message code="bitacora.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
        <div class="controls">
          <g:datePicker name="fecha" precision="day"  value="${bitacoraInstance?.fecha}"  />
        </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bitacoraInstance, field: 'accion', 'error')} ">
	<label for="accion" class="control-label">
		<g:message code="bitacora.accion.label" default="Accion" />
		
	</label>
        <div class="controls">
          <g:textField name="accion" value="${bitacoraInstance?.accion}"/>
        </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: bitacoraInstance, field: 'usuario', 'error')} required">
	<label for="usuario" class="control-label">
		<g:message code="bitacora.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
        <div class="controls">
          <g:select id="usuario" name="usuario.id" from="${com.web.panacea.security.Usuario.list()}" optionKey="id" required="" value="${bitacoraInstance?.usuario?.id}" class="many-to-one"/>
        </div>
</div>

