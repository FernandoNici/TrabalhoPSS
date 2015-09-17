
<%@ page import="condominion.Sindico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sindico.label', default: 'Sindico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sindico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sindico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cpf" title="${message(code: 'sindico.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'sindico.nome.label', default: 'Nome')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sindicoInstanceList}" status="i" var="sindicoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sindicoInstance.id}">${fieldValue(bean: sindicoInstance, field: "cpf")}</g:link></td>
					
						<td>${fieldValue(bean: sindicoInstance, field: "nome")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sindicoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
