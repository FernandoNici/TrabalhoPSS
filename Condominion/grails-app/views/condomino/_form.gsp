<%@ page import="condominion.Condomino" %>



<div class="fieldcontain ${hasErrors(bean: condominoInstance, field: 'apartamento', 'error')} ">
	<label for="apartamento">
		<g:message code="condomino.apartamento.label" default="Apartamento" />
		
	</label>
	<g:textField name="apartamento" value="${condominoInstance?.apartamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: condominoInstance, field: 'bloco', 'error')} ">
	<label for="bloco">
		<g:message code="condomino.bloco.label" default="Bloco" />
		
	</label>
	<g:textField name="bloco" value="${condominoInstance?.bloco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: condominoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="condomino.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${condominoInstance?.nome}"/>
</div>

