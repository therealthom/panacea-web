
<%@ page import="com.web.panacea.Proceso" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'proceso.label', default: 'Proceso')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
  </head>
  <body>
    <div class="page-header position-relative">
      <h1>Detalle de Proceso ${procesoInstance?.id}</h1>
      <div class="btn-group">
        <g:link class="btn btn-small tip-bottom" action="index">
          <i class="icon-file"></i>
          Lista de Procesos
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
			
				<g:if test="${procesoInstance?.nombre}">
                                  <dl>
                                      <dt><g:message code="proceso.nombre.label" default="Nombre" /></dt>
					
                                                <dd><g:fieldValue bean="${procesoInstance}" field="nombre"/></dd>
					
                                  </dl>
				</g:if>
			
				<g:if test="${procesoInstance?.tareas}">
                                  <dl>
                                      <dt><g:message code="proceso.tareas.label" default="Tareas" /></dt>
					
						<g:each in="${procesoInstance.tareas}" var="t">
                                                  <dd><g:link controller="tareaDeProceso" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></dd>
						</g:each>
					
                                  </dl>
				</g:if>
			
      </div>
      <g:form class="form-actions">
        <fieldset class="buttons">
          <g:hiddenField name="id" value="${procesoInstance?.id}" />

        </fieldset>
      </g:form>
    </div>
  </body>
</html>
