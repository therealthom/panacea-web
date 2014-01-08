<%@ page import="com.web.panacea.Repositorio" %>



<div class="control-group fieldcontain ${hasErrors(bean: repositorioInstance, field: 'nombre', 'error')} required">
	<label for="nombre" class="control-label">
		<g:message code="repositorio.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
        <div class="controls">
          <g:textField name="nombre" required="" value="${repositorioInstance?.nombre}"/>
        </div>
</div>

