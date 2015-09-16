<%@ page import="condominion.Mudanca" %>



<div class="fieldcontain ${hasErrors(bean: mudancaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="mudanca.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${mudancaInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mudancaInstance, field: 'morador', 'error')} required">
	<label for="morador">
		<g:message code="mudanca.morador.label" default="Morador" />
		<span class="required-indicator">*</span>
	</label>
	
	<g:select id="morador" name="morador.id" from="${condominion.Condomino.list()}" optionKey="id" required=""  optionValue="${{it.nome}}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mudancaInstance, field: 'apartamento', 'error')} ">
	<label for="apartamento">
		<g:message code="mudanca.apartamento.label" default="Apartamento" />
		
	</label>
	<g:textField name="apartamento" value="${mudancaInstance?.apartamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mudancaInstance, field: 'bloco', 'error')} ">
	<label for="bloco">
		<g:message code="mudanca.bloco.label" default="Bloco" />
		
	</label>
	<g:textField name="bloco" value="${mudancaInstance?.bloco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mudancaInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="mudanca.cpf.label" default="Cpf" />
		
	</label>
	<g:textField name="cpf" value="${mudancaInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mudancaInstance, field: 'rg', 'error')} ">
	<label for="rg">
		<g:message code="mudanca.rg.label" default="Rg" />
		
	</label>
	<g:textField name="rg" value="${mudancaInstance?.rg}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mudancaInstance, field: 'telefone', 'error')} ">
	<label for="telefone">
		<g:message code="mudanca.telefone.label" default="Telefone" />
		
	</label>
	<g:textField name="telefone" value="${mudancaInstance?.telefone}"/>
</div>

