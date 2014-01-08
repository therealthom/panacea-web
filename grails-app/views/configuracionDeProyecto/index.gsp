
<%@ page import="com.web.panacea.ConfiguracionDeProyecto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'configuracionDeProyecto.label', default: 'ConfiguracionDeProyecto')}" />    
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <div class="page-header position-relative">
            <h1>
                Lista de Configuracion de Proyectos
            </h1>
            <div class="btn-group">
                <g:link class="btn btn-small tip-bottom" action="create">
                    <i class="icon-file"></i>
                    Nueva Configuración de Proyecto
                </g:link>
            </div>
        </div><!--/.page-header-->


        <div class="container-fluid">
            <br/>
            <g:if test="${flash.message}">
                <div class="alert">
                    <strong>¡Atención!</strong> ${flash.message}
                </div>
            </g:if>
            <br/>
            <div class="widget-content nopadding">
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            
                                <g:sortableColumn property="nombreDeProyecto" title="${message(code: 'configuracionDeProyecto.nombreDeProyecto.label', default: 'Nombre De Proyecto')}" />
                                
                            <th><g:message code="configuracionDeProyecto.repositorioExistente.label" default="Repositorio Existente" /></th>
                                
                                <g:sortableColumn property="implementarEstructuraBase" title="${message(code: 'configuracionDeProyecto.implementarEstructuraBase.label', default: 'Implementar Estructura Base')}" />
                                
                                <g:sortableColumn property="archetype" title="${message(code: 'configuracionDeProyecto.archetype.label', default: 'Archetype')}" />
                                
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${configuracionDeProyectoInstanceList}" status="i" var="configuracionDeProyectoInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                <td><g:link action="show" id="${configuracionDeProyectoInstance.id}">${fieldValue(bean: configuracionDeProyectoInstance, field: "nombreDeProyecto")}</g:link></td>
                                
                                <td>${fieldValue(bean: configuracionDeProyectoInstance, field: "repositorioExistente")}</td>
                                
                                <td><g:formatBoolean boolean="${configuracionDeProyectoInstance.implementarEstructuraBase}" /></td>
                                
                                <td>${fieldValue(bean: configuracionDeProyectoInstance, field: "archetype")}</td>
                                
                            </tr>
                        </g:each>
                    </tbody>
                </table>
            </div>        
            
        </div>
    </body>
</html>
