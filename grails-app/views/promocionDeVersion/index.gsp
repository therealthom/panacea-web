
<%@ page import="com.web.panacea.PromocionDeVersion" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'promocionDeVersion.label', default: 'PromocionDeVersion')}" />    
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <div class="page-header position-relative">
            <h1>
                Lista de Promociones de Versión
            </h1>
            <div class="btn-group">
                <g:link class="btn btn-small tip-bottom" action="create">
                    <i class="icon-file"></i>
                    Promocionar Versión
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

                            <th><g:message code="promocionDeVersion.proyecto.label" default="Proyecto" /></th>

                                <g:sortableColumn property="ambiente" title="${message(code: 'promocionDeVersion.ambiente.label', default: 'Ambiente')}" />

                                <g:sortableColumn property="observaciones" title="${message(code: 'promocionDeVersion.observaciones.label', default: 'Observaciones')}" />

                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${promocionDeVersionInstanceList}" status="i" var="promocionDeVersionInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                <td><g:link action="show" id="${promocionDeVersionInstance.id}">${fieldValue(bean: promocionDeVersionInstance, field: "proyecto")}</g:link></td>

                                <td>${fieldValue(bean: promocionDeVersionInstance, field: "ambiente")}</td>

                                <td>${fieldValue(bean: promocionDeVersionInstance, field: "observaciones")}</td>

                            </tr>
                        </g:each>
                    </tbody>
                </table>
            </div>        

        </div>
    </body>
</html>
