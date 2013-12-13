
<%@ page import="com.web.panacea.ConfiguracionDeProyecto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'configuracionDeProyecto.label', default: 'ConfiguracionDeProyecto')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="page-header position-relative">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <div class="btn-group">
                <g:link class="btn btn-small tip-bottom" action="index">
                    <i class="icon-file"></i>
                    Lista de Configuración de Proyectos
                </g:link>
                <g:link class="btn btn-small tip-bottom" action="create">
                    <i class="icon-file"></i>
                    Crear Configuración de Proyecto
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

                <g:if test="${configuracionDeProyectoInstance?.nombreDeProyecto}">
                    <dl>
                        <dt><g:message code="configuracionDeProyecto.nombreDeProyecto.label" default="Nombre De Proyecto" /></dt>

                        <dd><g:fieldValue bean="${configuracionDeProyectoInstance}" field="nombreDeProyecto"/></dd>

                    </dl>
                </g:if>

                <g:if test="${configuracionDeProyectoInstance?.nuevoRepositorio}">
                    <dl>
                        <dt><g:message code="configuracionDeProyecto.nuevoRepositorio.label" default="Nuevo Repositorio" /></dt>

                        <dd><g:fieldValue bean="${configuracionDeProyectoInstance}" field="nuevoRepositorio"/></dd>

                    </dl>
                </g:if>

                <g:if test="${configuracionDeProyectoInstance?.repositorioExistente}">
                    <dl>
                        <dt><g:message code="configuracionDeProyecto.repositorioExistente.label" default="Repositorio Existente" /></dt>

                        <dd><g:fieldValue bean="${configuracionDeProyectoInstance}" field="repositorioExistente"/></dd>

                    </dl>
                </g:if>

                <g:if test="${configuracionDeProyectoInstance?.implementarEstructuraBase}">
                    <dl>
                        <dt><g:message code="configuracionDeProyecto.implementarEstructuraBase.label" default="Implementar Estructura Base" /></dt>

                        <dd><g:formatBoolean boolean="${configuracionDeProyectoInstance?.implementarEstructuraBase}" /></dd>

                    </dl>
                </g:if>

                <g:if test="${configuracionDeProyectoInstance?.archetype}">
                    <dl>
                        <dt><g:message code="configuracionDeProyecto.archetype.label" default="Archetype" /></dt>

                        <dd><g:fieldValue bean="${configuracionDeProyectoInstance}" field="archetype"/></dd>

                    </dl>
                </g:if>

            </div>
            <g:form class="form-actions">
                <fieldset class="buttons">
                    <g:hiddenField name="id" value="${configuracionDeProyectoInstance?.id}" />
                    <g:link class="btn btn-primary" action="edit" id="${configuracionDeProyectoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
