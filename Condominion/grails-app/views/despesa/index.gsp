
<%@ page import="condominion.Despesa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'despesa.label', default: 'Despesa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-despesa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-despesa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="data" title="${message(code: 'despesa.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="origem" title="${message(code: 'despesa.origem.label', default: 'Origem')}" />
					
						<g:sortableColumn property="tipoDespesa" title="${message(code: 'despesa.tipoDespesa.label', default: 'Tipo Despesa')}" />
					
						<g:sortableColumn property="valor" title="${message(code: 'despesa.valor.label', default: 'Valor')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${despesaInstanceList}" status="i" var="despesaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${despesaInstance.id}">${fieldValue(bean: despesaInstance, field: "data")}</g:link></td>
					
						<td>${fieldValue(bean: despesaInstance, field: "origem")}</td>
					
						<td>${fieldValue(bean: despesaInstance, field: "tipoDespesa")}</td>
					
						<td>${fieldValue(bean: despesaInstance, field: "valor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${despesaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
