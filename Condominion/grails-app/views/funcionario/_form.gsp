<%@ page import="condominion.Funcionario" %>



<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="funcionario.cpf.label" default="Cpf" />
		
	</label>
	<g:textField name="cpf" value="${funcionarioInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="funcionario.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${funcionarioInstance?.nome}"/>
</div>

