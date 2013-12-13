
<%@ page import="com.web.panacea.Proceso" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'proceso.label', default: 'Proceso')}" />    
        <title>Bandeja de Tareas</title>
    </head>
    <body>

        <div class="page-header position-relative">
            <h1>
                Bandeja de Tareas
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

                            <g:sortableColumn property="nombre" title="${message(code: 'proceso.nombre.label', default: 'Nombre')}" />

                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${procesoInstanceList}" status="i" var="procesoInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                <td><g:link action="show" id="${procesoInstance.id}">${fieldValue(bean: procesoInstance, field: "nombre")}</g:link></td>

                            </tr>
                        </g:each>
                    </tbody>
                </table>
            </div>        

        </div>
    </body>
</html>
