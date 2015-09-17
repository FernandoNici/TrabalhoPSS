
<%@ page import="condominion.Despesa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'despesa.label', default: 'Despesa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-despesa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-despesa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list despesa">
			
				<g:if test="${despesaInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="despesa.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${despesaInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${despesaInstance?.origem}">
				<li class="fieldcontain">
					<span id="origem-label" class="property-label"><g:message code="despesa.origem.label" default="Origem" /></span>
					
						<span class="property-value" aria-labelledby="origem-label"><g:fieldValue bean="${despesaInstance}" field="origem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${despesaInstance?.tipoDespesa}">
				<li class="fieldcontain">
					<span id="tipoDespesa-label" class="property-label"><g:message code="despesa.tipoDespesa.label" default="Tipo Despesa" /></span>
					
						<span class="property-value" aria-labelledby="tipoDespesa-label"><g:fieldValue bean="${despesaInstance}" field="tipoDespesa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${despesaInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="despesa.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${despesaInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:despesaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${despesaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
