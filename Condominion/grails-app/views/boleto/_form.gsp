<%@ page import="condominion.Boleto" %>



<div class="fieldcontain ${hasErrors(bean: boletoInstance, field: 'sacado', 'error')} ">
	<label for="sacado">
		<g:message code="boleto.sacado.label" default="Sacado" />
		
	</label>
	<g:textField name="sacado" value="${boletoInstance?.sacado}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: boletoInstance, field: 'cedente', 'error')} ">
	<label for="cedente">
		<g:message code="boleto.cedente.label" default="Cedente" />
		
	</label>
	<g:textField name="cedente" value="${boletoInstance?.cedente}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: boletoInstance, field: 'nossoNumero', 'error')} required">
	<label for="nossoNumero">
		<g:message code="boleto.nossoNumero.label" default="Nosso Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nossoNumero" type="number" value="${boletoInstance.nossoNumero}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: boletoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="boleto.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: boletoInstance, field: 'valor')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: boletoInstance, field: 'vencimento', 'error')} ">
	<label for="vencimento">
		<g:message code="boleto.vencimento.label" default="Vencimento" />
		
	</label>
	<g:textField name="vencimento" value="${boletoInstance?.vencimento}"/>
</div>

