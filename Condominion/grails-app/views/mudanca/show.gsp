
<%@ page import="condominion.Mudanca" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mudanca.label', default: 'Mudanca')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mudanca" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mudanca" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mudanca">
			
				<g:if test="${mudancaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="mudanca.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${mudancaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mudancaInstance?.morador}">
				<li class="fieldcontain">
					<span id="morador-label" class="property-label"><g:message code="mudanca.morador.label" default="Morador" /></span>
					
						<span class="property-value" aria-labelledby="morador-label"><g:link controller="condomino" action="show" id="${mudancaInstance?.morador?.id}">${mudancaInstance?.morador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${mudancaInstance?.apartamento}">
				<li class="fieldcontain">
					<span id="apartamento-label" class="property-label"><g:message code="mudanca.apartamento.label" default="Apartamento" /></span>
					
						<span class="property-value" aria-labelledby="apartamento-label"><g:fieldValue bean="${mudancaInstance}" field="apartamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mudancaInstance?.bloco}">
				<li class="fieldcontain">
					<span id="bloco-label" class="property-label"><g:message code="mudanca.bloco.label" default="Bloco" /></span>
					
						<span class="property-value" aria-labelledby="bloco-label"><g:fieldValue bean="${mudancaInstance}" field="bloco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mudancaInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="mudanca.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${mudancaInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mudancaInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="mudanca.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${mudancaInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mudancaInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="mudanca.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${mudancaInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:mudancaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${mudancaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
