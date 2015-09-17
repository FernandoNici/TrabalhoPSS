
<%@ page import="condominion.Condomino" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'condomino.label', default: 'Condomino')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-condomino" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-condomino" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list condomino">
			
				<g:if test="${condominoInstance?.apartamento}">
				<li class="fieldcontain">
					<span id="apartamento-label" class="property-label"><g:message code="condomino.apartamento.label" default="Apartamento" /></span>
					
						<span class="property-value" aria-labelledby="apartamento-label"><g:fieldValue bean="${condominoInstance}" field="apartamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${condominoInstance?.bloco}">
				<li class="fieldcontain">
					<span id="bloco-label" class="property-label"><g:message code="condomino.bloco.label" default="Bloco" /></span>
					
						<span class="property-value" aria-labelledby="bloco-label"><g:fieldValue bean="${condominoInstance}" field="bloco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${condominoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="condomino.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${condominoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:condominoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${condominoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
