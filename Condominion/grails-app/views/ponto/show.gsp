
<%@ page import="condominion.Ponto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ponto.label', default: 'Ponto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ponto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ponto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ponto">
			
				<g:if test="${pontoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="ponto.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${pontoInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pontoInstance?.entradaSaida}">
				<li class="fieldcontain">
					<span id="entradaSaida-label" class="property-label"><g:message code="ponto.entradaSaida.label" default="Entrada Saida" /></span>
					
						<span class="property-value" aria-labelledby="entradaSaida-label"><g:fieldValue bean="${pontoInstance}" field="entradaSaida"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pontoInstance?.horario}">
				<li class="fieldcontain">
					<span id="horario-label" class="property-label"><g:message code="ponto.horario.label" default="Horario" /></span>
					
						<span class="property-value" aria-labelledby="horario-label"><g:fieldValue bean="${pontoInstance}" field="horario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pontoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="ponto.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label">
						<g:link controller="usuario" action="show" id="${pontoInstance?.usuario?.id}">
						${pontoInstance?.usuario?.getUsername()}
						</g:link>
						</span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pontoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pontoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
