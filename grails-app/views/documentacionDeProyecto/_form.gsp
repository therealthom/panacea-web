<%@ page import="com.web.panacea.DocumentacionDeProyecto" %>



<div class="control-group fieldcontain ${hasErrors(bean: documentacionDeProyectoInstance, field: 'documento', 'error')} required">
	<label for="documento" class="control-label">
		<g:message code="documentacionDeProyecto.documento.label" default="Documento" />
		<span class="required-indicator">*</span>
	</label>
        <div class="controls">
          <input type="file" id="documento" name="documento" />
        </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: documentacionDeProyectoInstance, field: 'promocionDeVersion', 'error')} required">
	<label for="promocionDeVersion" class="control-label">
		<g:message code="documentacionDeProyecto.promocionDeVersion.label" default="Promocion De Version" />
		<span class="required-indicator">*</span>
	</label>
        <div class="controls">
          <g:select id="promocionDeVersion" name="promocionDeVersion.id" from="${com.web.panacea.PromocionDeVersion.list()}" optionKey="id" required="" value="${documentacionDeProyectoInstance?.promocionDeVersion?.id}" class="many-to-one"/>
        </div>
</div>

