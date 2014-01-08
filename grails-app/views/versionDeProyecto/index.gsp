
<%@ page import="com.web.panacea.VersionDeProyecto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'versionDeProyecto.label', default: 'VersionDeProyecto')}" />    
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <div class="page-header position-relative">
            <h1>
                <g:message code="default.list.label" args="[entityName]" />
            </h1>
            <div class="btn-group">
                <g:link class="btn btn-small tip-bottom" action="create">
                    <i class="icon-file"></i>
                    <g:message code="default.new.label" args="[entityName]" />
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
                            
                            <th><g:message code="versionDeProyecto.proyecto.label" default="Proyecto" /></th>
                                
                                <g:sortableColumn property="detalles" title="${message(code: 'versionDeProyecto.detalles.label', default: 'Detalles')}" />
                                
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${versionDeProyectoInstanceList}" status="i" var="versionDeProyectoInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                <td><g:link action="show" id="${versionDeProyectoInstance.id}">${fieldValue(bean: versionDeProyectoInstance, field: "proyecto")}</g:link></td>
                                
                                <td>${fieldValue(bean: versionDeProyectoInstance, field: "detalles")}</td>
                                
                            </tr>
                        </g:each>
                    </tbody>
                </table>
            </div>        
            
        </div>
    </body>
</html>
