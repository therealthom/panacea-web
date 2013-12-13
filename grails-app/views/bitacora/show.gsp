
<%@ page import="com.web.panacea.Bitacora" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'bitacora.label', default: 'Bitacora')}" />
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
			
				<g:if test="${bitacoraInstance?.tarea}">
                                  <dl>
                                      <dt><g:message code="bitacora.tarea.label" default="Tarea" /></dt>
					
						<dd><g:link controller="tareaDeProceso" action="show" id="${bitacoraInstance?.tarea?.id}">${bitacoraInstance?.tarea?.encodeAsHTML()}</g:link></dd>
					
                                  </dl>
				</g:if>
			
				<g:if test="${bitacoraInstance?.fecha}">
                                  <dl>
                                      <dt><g:message code="bitacora.fecha.label" default="Fecha" /></dt>
					
						<dd><g:formatDate date="${bitacoraInstance?.fecha}" /></dd>
					
                                  </dl>
				</g:if>
			
				<g:if test="${bitacoraInstance?.accion}">
                                  <dl>
                                      <dt><g:message code="bitacora.accion.label" default="Accion" /></dt>
					
                                                <dd><g:fieldValue bean="${bitacoraInstance}" field="accion"/></dd>
					
                                  </dl>
				</g:if>
			
				<g:if test="${bitacoraInstance?.usuario}">
                                  <dl>
                                      <dt><g:message code="bitacora.usuario.label" default="Usuario" /></dt>
					
						<dd><g:link controller="usuario" action="show" id="${bitacoraInstance?.usuario?.id}">${bitacoraInstance?.usuario?.encodeAsHTML()}</g:link></dd>
					
                                  </dl>
				</g:if>
			
      </div>
      <g:form class="form-actions">
        <fieldset class="buttons">
          <g:hiddenField name="id" value="${bitacoraInstance?.id}" />
          <g:link class="btn btn-primary" action="edit" id="${bitacoraInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
          <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
      </g:form>
    </div>
  </body>
</html>
