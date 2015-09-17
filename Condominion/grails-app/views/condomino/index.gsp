
<%@ page import="condominion.Condomino" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'condomino.label', default: 'Condomino')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-condomino" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-condomino" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="apartamento" title="${message(code: 'condomino.apartamento.label', default: 'Apartamento')}" />
					
						<g:sortableColumn property="bloco" title="${message(code: 'condomino.bloco.label', default: 'Bloco')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'condomino.nome.label', default: 'Nome')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${condominoInstanceList}" status="i" var="condominoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${condominoInstance.id}">${fieldValue(bean: condominoInstance, field: "apartamento")}</g:link></td>
					
						<td>${fieldValue(bean: condominoInstance, field: "bloco")}</td>
					
						<td>${fieldValue(bean: condominoInstance, field: "nome")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${condominoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
