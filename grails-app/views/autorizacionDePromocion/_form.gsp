<%@ page import="com.web.panacea.AutorizacionDePromocion" %>

<div class="control-group fieldcontain ${hasErrors(bean: autorizacionDePromocionInstance, field: 'promocionDeVersion', 'error')} required">
    <label for="promocionDeVersion" class="control-label">
        <g:message code="autorizacionDePromocion.promocionDeVersion.label" default="Promocion De Version" />
        <span class="required-indicator">*</span>
    </label>
    <div class="controls">
        <g:select id="promocionDeVersion" name="promocionDeVersion.id" from="${com.web.panacea.PromocionDeVersion.list()}" optionKey="id" required="" value="${autorizacionDePromocionInstance?.promocionDeVersion?.id}" class="many-to-one"/>
    </div>
</div>

<g:if test="${autorizacionDePromocionInstance?.promocionDeVersion}">
<div class="control-group fieldcontain">
    <label class="control-label">
        Ambiente: 
    </label>
    <div class="controls">
        ${autorizacionDePromocionInstance?.promocionDeVersion?.ambiente}
    </div>
</div>
</g:if>

<div class="control-group fieldcontain ${hasErrors(bean: autorizacionDePromocionInstance, field: 'fecha', 'error')} required">
    <label for="fecha" class="control-label">
        <g:message code="autorizacionDePromocion.fecha.label" default="Fecha" />
        <span class="required-indicator">*</span>
    </label>
    <div class="controls">
        <g:datePicker name="fecha" precision="day"  value="${autorizacionDePromocionInstance?.fecha}"  />
    </div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: autorizacionDePromocionInstance, field: 'observaciones', 'error')} ">
    <label for="observaciones" class="control-label">
        <g:message code="autorizacionDePromocion.observaciones.label" default="Observaciones" />

    </label>
    <div class="controls">
        <g:textArea name="observaciones" cols="40" rows="5" maxlength="2000" value="${autorizacionDePromocionInstance?.observaciones}"/>
    </div>
</div>

