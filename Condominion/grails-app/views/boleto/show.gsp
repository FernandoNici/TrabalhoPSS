
<%@ page import="condominion.Boleto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'boleto.label', default: 'Boleto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-boleto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-boleto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list boleto">
			
				<g:if test="${boletoInstance?.sacado}">
				<li class="fieldcontain">
					<span id="sacado-label" class="property-label"><g:message code="boleto.sacado.label" default="Sacado" /></span>
					
						<span class="property-value" aria-labelledby="sacado-label"><g:fieldValue bean="${boletoInstance}" field="sacado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boletoInstance?.cedente}">
				<li class="fieldcontain">
					<span id="cedente-label" class="property-label"><g:message code="boleto.cedente.label" default="Cedente" /></span>
					
						<span class="property-value" aria-labelledby="cedente-label"><g:fieldValue bean="${boletoInstance}" field="cedente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boletoInstance?.nossoNumero}">
				<li class="fieldcontain">
					<span id="nossoNumero-label" class="property-label"><g:message code="boleto.nossoNumero.label" default="Nosso Numero" /></span>
					
						<span class="property-value" aria-labelledby="nossoNumero-label"><g:fieldValue bean="${boletoInstance}" field="nossoNumero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boletoInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="boleto.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${boletoInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${boletoInstance?.vencimento}">
				<li class="fieldcontain">
					<span id="vencimento-label" class="property-label"><g:message code="boleto.vencimento.label" default="Vencimento" /></span>
					
						<span class="property-value" aria-labelledby="vencimento-label"><g:fieldValue bean="${boletoInstance}" field="vencimento"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:boletoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${boletoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
