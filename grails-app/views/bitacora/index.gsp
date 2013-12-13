
<%@ page import="com.web.panacea.Bitacora" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'bitacora.label', default: 'Bitacora')}" />    
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <div class="page-header position-relative">
            <h1>
                Bitácora de Auditoria
            </h1>
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
                            
                            <th><g:message code="bitacora.tarea.label" default="Tarea" /></th>
                                
                                <g:sortableColumn property="fecha" title="${message(code: 'bitacora.fecha.label', default: 'Fecha')}" />
                                
                                <g:sortableColumn property="accion" title="${message(code: 'bitacora.accion.label', default: 'Accion')}" />
                                
                            <th><g:message code="bitacora.usuario.label" default="Usuario" /></th>
                                
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${bitacoraInstanceList}" status="i" var="bitacoraInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                <td><g:link action="show" id="${bitacoraInstance.id}">${fieldValue(bean: bitacoraInstance, field: "tarea")}</g:link></td>
                                
                                <td><g:formatDate date="${bitacoraInstance.fecha}" /></td>
                                
                                <td>${fieldValue(bean: bitacoraInstance, field: "accion")}</td>
                                
                                <td>${fieldValue(bean: bitacoraInstance, field: "usuario")}</td>
                                
                            </tr>
                        </g:each>
                    </tbody>
                </table>
            </div>        
            
        </div>
    </body>
</html>
