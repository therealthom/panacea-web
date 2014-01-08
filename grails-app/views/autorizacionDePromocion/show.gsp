
<%@ page import="com.web.panacea.AutorizacionDePromocion" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'autorizacionDePromocion.label', default: 'AutorizacionDePromocion')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
  </head>
  <body>
    <div class="page-header position-relative">
      <h1><g:message code="default.show.label" args="[entityName]" /></h1>
      <div class="btn-group">
        <g:link class="btn btn-small tip-bottom" action="index">
          <i class="icon-file"></i>
          <g:message code="default.list.label" args="[entityName]" />
        </g:link>
        <g:link class="btn btn-small tip-bottom" action="create">
          <i class="icon-file"></i>
          <g:message code="default.new.label" args="[entityName]" />
        </g:link>
      </div>
    </div>
    
  <div class="container-fluid">
    <g:if test="${flash.message}">
      <br/>
      <div class="alert alert-info">
        <strong>¡Información!</strong> ${flash.message}
      </div>
    </g:if>
    <div class="well">
			
				<g:if test="${autorizacionDePromocionInstance?.promocionDeVersion}">
                                  <dl>
                                      <dt><g:message code="autorizacionDePromocion.promocionDeVersion.label" default="Promocion De Version" /></dt>
					
						<dd><g:link controller="promocionDeVersion" action="show" id="${autorizacionDePromocionInstance?.promocionDeVersion?.id}">${autorizacionDePromocionInstance?.promocionDeVersion?.encodeAsHTML()}</g:link></dd>
					
                                  </dl>
				</g:if>
			
				<g:if test="${autorizacionDePromocionInstance?.fecha}">
                                  <dl>
                                      <dt><g:message code="autorizacionDePromocion.fecha.label" default="Fecha" /></dt>
					
						<dd><g:formatDate date="${autorizacionDePromocionInstance?.fecha}" /></dd>
					
                                  </dl>
				</g:if>
			
				<g:if test="${autorizacionDePromocionInstance?.observaciones}">
                                  <dl>
                                      <dt><g:message code="autorizacionDePromocion.observaciones.label" default="Observaciones" /></dt>
					
                                                <dd><g:fieldValue bean="${autorizacionDePromocionInstance}" field="observaciones"/></dd>
					
                                  </dl>
				</g:if>
			
      </div>
      <g:form class="form-actions">
        <fieldset class="buttons">
          <g:hiddenField name="id" value="${autorizacionDePromocionInstance?.id}" />
          <g:link class="btn btn-primary" action="edit" id="${autorizacionDePromocionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
          <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
      </g:form>
    </div>
  </body>
</html>
