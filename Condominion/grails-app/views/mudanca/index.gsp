
<%@ page import="condominion.Mudanca" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mudanca.label', default: 'Mudanca')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mudanca" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mudanca" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'mudanca.email.label', default: 'Email')}" />
					
						<th><g:message code="mudanca.morador.label" default="Morador" /></th>
					
						<g:sortableColumn property="apartamento" title="${message(code: 'mudanca.apartamento.label', default: 'Apartamento')}" />
					
						<g:sortableColumn property="bloco" title="${message(code: 'mudanca.bloco.label', default: 'Bloco')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'mudanca.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="rg" title="${message(code: 'mudanca.rg.label', default: 'Rg')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mudancaInstanceList}" status="i" var="mudancaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mudancaInstance.id}">${fieldValue(bean: mudancaInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: mudancaInstance, field: "morador")}</td>
					
						<td>${fieldValue(bean: mudancaInstance, field: "apartamento")}</td>
					
						<td>${fieldValue(bean: mudancaInstance, field: "bloco")}</td>
					
						<td>${fieldValue(bean: mudancaInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: mudancaInstance, field: "rg")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mudancaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
