
<%@ page import="com.web.panacea.DocumentacionDeProyecto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'documentacionDeProyecto.label', default: 'DocumentacionDeProyecto')}" />    
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
                            
                            <th><g:message code="documentacionDeProyecto.promocionDeVersion.label" default="Promocion De Version" /></th>
                                
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${documentacionDeProyectoInstanceList}" status="i" var="documentacionDeProyectoInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                <td><g:link action="show" id="${documentacionDeProyectoInstance.id}">${fieldValue(bean: documentacionDeProyectoInstance, field: "promocionDeVersion")}</g:link></td>
                                
                            </tr>
                        </g:each>
                    </tbody>
                </table>
            </div>        
            
        </div>
    </body>
</html>
