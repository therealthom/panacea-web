<%@ page import="com.web.panacea.AutorizacionDePromocion" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'autorizacionDePromocion.label', default: 'AutorizacionDePromocion')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="page-header position-relative">
            <h1>Autorización de Promoción</h1>
            <div class="btn-group">
                <g:link class="btn btn-small tip-bottom" action="index">
                    <i class="icon-file"></i>
                    Lista de Autorización de Promociones
                </g:link>
            </div>
        </div>

        <div class="container-fluid">
            <br/>
            <g:if test="${flash.message}">
                <div class="alert">
                    <strong>¡Atención!</strong> ${flash.message}
                </div>
            </g:if>

            <g:hasErrors bean="${autorizacionDePromocionInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${autorizacionDePromocionInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                </ul>
            </g:hasErrors>


            <g:form class="form-horizontal" action="save" >
                <g:render template="form"/>
                <div class="form-actions">
                    <g:submitButton name="create" class="btn btn-primary" value="Autorizar" />
                </div>
            </g:form>

        </div>
    </body>
</html>
