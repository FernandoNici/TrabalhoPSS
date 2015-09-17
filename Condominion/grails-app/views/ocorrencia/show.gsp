
<%@ page import="condominion.Ocorrencia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ocorrencia.label', default: 'Ocorrencia')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ocorrencia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ocorrencia" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ocorrencia">
			
				<g:if test="${ocorrenciaInstance?.assunto}">
				<li class="fieldcontain">
					<span id="assunto-label" class="property-label"><g:message code="ocorrencia.assunto.label" default="Assunto" /></span>
					
						<span class="property-value" aria-labelledby="assunto-label"><g:fieldValue bean="${ocorrenciaInstance}" field="assunto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ocorrenciaInstance?.textoOcorrencia}">
				<li class="fieldcontain">
					<span id="textoOcorrencia-label" class="property-label"><g:message code="ocorrencia.textoOcorrencia.label" default="Texto Ocorrencia" /></span>
					
						<span class="property-value" aria-labelledby="textoOcorrencia-label"><g:fieldValue bean="${ocorrenciaInstance}" field="textoOcorrencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ocorrenciaInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="ocorrencia.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${ocorrenciaInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ocorrenciaInstance?.hora}">
				<li class="fieldcontain">
					<span id="hora-label" class="property-label"><g:message code="ocorrencia.hora.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="hora-label"><g:fieldValue bean="${ocorrenciaInstance}" field="hora"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:ocorrenciaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${ocorrenciaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
