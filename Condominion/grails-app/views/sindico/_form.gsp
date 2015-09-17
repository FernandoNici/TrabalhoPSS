<%@ page import="condominion.Sindico" %>



<div class="fieldcontain ${hasErrors(bean: sindicoInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="sindico.cpf.label" default="Cpf" />
		
	</label>
	<g:textField name="cpf" value="${sindicoInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sindicoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="sindico.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${sindicoInstance?.nome}"/>
</div>

