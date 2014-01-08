
<%@ page import="com.web.panacea.Repositorio" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'repositorio.label', default: 'Repositorio')}" />    
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
                            
                                <g:sortableColumn property="nombre" title="${message(code: 'repositorio.nombre.label', default: 'Nombre')}" />
                                
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${repositorioInstanceList}" status="i" var="repositorioInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                <td><g:link action="show" id="${repositorioInstance.id}">${fieldValue(bean: repositorioInstance, field: "nombre")}</g:link></td>
                                
                            </tr>
                        </g:each>
                    </tbody>
                </table>
            </div>        
            
        </div>
    </body>
</html>
