
<%@ page import="condominion.Boleto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'boleto.label', default: 'Boleto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-boleto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-boleto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="sacado" title="${message(code: 'boleto.sacado.label', default: 'Sacado')}" />
					
						<g:sortableColumn property="cedente" title="${message(code: 'boleto.cedente.label', default: 'Cedente')}" />
					
						<g:sortableColumn property="nossoNumero" title="${message(code: 'boleto.nossoNumero.label', default: 'Nosso Numero')}" />
					
						<g:sortableColumn property="valor" title="${message(code: 'boleto.valor.label', default: 'Valor')}" />
					
						<g:sortableColumn property="vencimento" title="${message(code: 'boleto.vencimento.label', default: 'Vencimento')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${boletoInstanceList}" status="i" var="boletoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${boletoInstance.id}">${fieldValue(bean: boletoInstance, field: "sacado")}</g:link></td>
					
						<td>${fieldValue(bean: boletoInstance, field: "cedente")}</td>
					
						<td>${fieldValue(bean: boletoInstance, field: "nossoNumero")}</td>
					
						<td>${fieldValue(bean: boletoInstance, field: "valor")}</td>
					
						<td>${fieldValue(bean: boletoInstance, field: "vencimento")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${boletoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
