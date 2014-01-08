
<%@ page import="com.web.panacea.PromocionDeVersion" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'promocionDeVersion.label', default: 'PromocionDeVersion')}" />
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
			
				<g:if test="${promocionDeVersionInstance?.proyecto}">
                                  <dl>
                                      <dt><g:message code="promocionDeVersion.proyecto.label" default="Proyecto" /></dt>
					
						<dd><g:link controller="configuracionDeProyecto" action="show" id="${promocionDeVersionInstance?.proyecto?.id}">${promocionDeVersionInstance?.proyecto?.encodeAsHTML()}</g:link></dd>
					
                                  </dl>
				</g:if>
			
				<g:if test="${promocionDeVersionInstance?.ambiente}">
                                  <dl>
                                      <dt><g:message code="promocionDeVersion.ambiente.label" default="Ambiente" /></dt>
					
                                                <dd><g:fieldValue bean="${promocionDeVersionInstance}" field="ambiente"/></dd>
					
                                  </dl>
				</g:if>
			
				<g:if test="${promocionDeVersionInstance?.documentos}">
                                  <dl>
                                      <dt><g:message code="promocionDeVersion.documentos.label" default="Documentos" /></dt>
					
						<g:each in="${promocionDeVersionInstance.documentos}" var="d">
                                                  <dd><g:link controller="documentacionDeProyecto" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></dd>
						</g:each>
					
                                  </dl>
				</g:if>
			
				<g:if test="${promocionDeVersionInstance?.observaciones}">
                                  <dl>
                                      <dt><g:message code="promocionDeVersion.observaciones.label" default="Observaciones" /></dt>
					
                                                <dd><g:fieldValue bean="${promocionDeVersionInstance}" field="observaciones"/></dd>
					
                                  </dl>
				</g:if>
			
      </div>
      <g:form class="form-actions">
        <fieldset class="buttons">
          <g:hiddenField name="id" value="${promocionDeVersionInstance?.id}" />
          <g:link class="btn btn-primary" action="edit" id="${promocionDeVersionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
          <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
      </g:form>
    </div>
  </body>
</html>
