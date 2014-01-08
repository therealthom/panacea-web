
<%@ page import="com.web.panacea.AutorizacionDePromocion" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'autorizacionDePromocion.label', default: 'AutorizacionDePromocion')}" />    
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
                            
                            <th><g:message code="autorizacionDePromocion.promocionDeVersion.label" default="Promocion De Version" /></th>
                                
                                <g:sortableColumn property="fecha" title="${message(code: 'autorizacionDePromocion.fecha.label', default: 'Fecha')}" />
                                
                                <g:sortableColumn property="observaciones" title="${message(code: 'autorizacionDePromocion.observaciones.label', default: 'Observaciones')}" />
                                
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${autorizacionDePromocionInstanceList}" status="i" var="autorizacionDePromocionInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                <td><g:link action="show" id="${autorizacionDePromocionInstance.id}">${fieldValue(bean: autorizacionDePromocionInstance, field: "promocionDeVersion")}</g:link></td>
                                
                                <td><g:formatDate date="${autorizacionDePromocionInstance.fecha}" /></td>
                                
                                <td>${fieldValue(bean: autorizacionDePromocionInstance, field: "observaciones")}</td>
                                
                            </tr>
                        </g:each>
                    </tbody>
                </table>
            </div>        
            
        </div>
    </body>
</html>
