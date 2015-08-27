
<%@ page import="condominion.Solicitacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'solicitacao.label', default: 'Solicitacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-solicitacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-solicitacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list solicitacao">
			
				<g:if test="${solicitacaoInstance?.tipoSolicitacao}">
				<li class="fieldcontain">
					<span id="tipoSolicitacao-label" class="property-label"><g:message code="solicitacao.tipoSolicitacao.label" default="Tipo Solicitacao" /></span>
					
						<span class="property-value" aria-labelledby="tipoSolicitacao-label"><g:fieldValue bean="${solicitacaoInstance}" field="tipoSolicitacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${solicitacaoInstance?.dataSolicitacao}">
				<li class="fieldcontain">
					<span id="dataSolicitacao-label" class="property-label"><g:message code="solicitacao.dataSolicitacao.label" default="Data Solicitacao" /></span>
					
						<span class="property-value" aria-labelledby="dataSolicitacao-label"><g:formatDate date="${solicitacaoInstance?.dataSolicitacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${solicitacaoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="solicitacao.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${solicitacaoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${solicitacaoInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="solicitacao.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:formatBoolean boolean="${solicitacaoInstance?.status}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${solicitacaoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="solicitacao.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${solicitacaoInstance?.usuario?.id}">${solicitacaoInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:solicitacaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${solicitacaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
