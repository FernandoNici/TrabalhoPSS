<%@ page import="condominion.Despesa" %>



<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="despesa.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${despesaInstance?.data}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'origem', 'error')} ">
	<label for="origem">
		<g:message code="despesa.origem.label" default="Origem" />
		
	</label>
	<g:textField name="origem" value="${despesaInstance?.origem}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'tipoDespesa', 'error')} ">
	<label for="tipoDespesa">
		<g:message code="despesa.tipoDespesa.label" default="Tipo Despesa" />
		
	</label>
	<g:textField name="tipoDespesa" value="${despesaInstance?.tipoDespesa}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="despesa.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: despesaInstance, field: 'valor')}" required=""/>
</div>

