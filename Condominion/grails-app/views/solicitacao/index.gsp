
<%@ page import="condominion.Solicitacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'solicitacao.label', default: 'Solicitacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-solicitacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-solicitacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tipoSolicitacao" title="${message(code: 'solicitacao.tipoSolicitacao.label', default: 'Tipo Solicitacao')}" />
					
						<g:sortableColumn property="dataSolicitacao" title="${message(code: 'solicitacao.dataSolicitacao.label', default: 'Data Solicitacao')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'solicitacao.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'solicitacao.status.label', default: 'Status')}" />
					
						<th><g:message code="solicitacao.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${solicitacaoInstanceList}" status="i" var="solicitacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${solicitacaoInstance.id}">${fieldValue(bean: solicitacaoInstance, field: "tipoSolicitacao")}</g:link></td>
					
						<td><g:formatDate date="${solicitacaoInstance.dataSolicitacao}" /></td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "descricao")}</td>
					
						<td><g:formatBoolean boolean="${solicitacaoInstance.status}" /></td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "usuario.username")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${solicitacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
