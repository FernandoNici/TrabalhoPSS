
<%@ page import="condominion.Ocorrencia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ocorrencia.label', default: 'Ocorrencia')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ocorrencia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ocorrencia" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="assunto" title="${message(code: 'ocorrencia.assunto.label', default: 'Assunto')}" />
					
						<g:sortableColumn property="textoOcorrencia" title="${message(code: 'ocorrencia.textoOcorrencia.label', default: 'Texto Ocorrencia')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'ocorrencia.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="hora" title="${message(code: 'ocorrencia.hora.label', default: 'Hora')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ocorrenciaInstanceList}" status="i" var="ocorrenciaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ocorrenciaInstance.id}">${fieldValue(bean: ocorrenciaInstance, field: "assunto")}</g:link></td>
					
						<td>${fieldValue(bean: ocorrenciaInstance, field: "textoOcorrencia")}</td>
					
						<td><g:formatDate date="${ocorrenciaInstance.data}" /></td>
					
						<td>${fieldValue(bean: ocorrenciaInstance, field: "hora")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ocorrenciaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
