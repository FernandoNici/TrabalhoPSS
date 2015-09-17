<%@ page import="condominion.Ponto" %>

<div class="fieldcontain ${hasErrors(bean: pontoInstance, field: 'entradaSaida', 'error')} required">
	<label for="entradaSaida">
		<g:message code="ponto.entradaSaida.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:radio name="entradaSaida" value="Entrada" checked="true"/>Entrada
	<g:radio name="entradaSaida" value="Saida" />Saida
</div>

<div class="fieldcontain ${hasErrors(bean: pontoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="ponto.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${pontoInstance?.data}" readonly = "true"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pontoInstance, field: 'horario', 'error')} ">
	<label for="horario">
		<g:message code="ponto.horario.label" default="Horario" />
		
	</label>
	<g:textField name="horario" value="${pontoInstance?.horario}" readonly = "true"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pontoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="ponto.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${comum.Usuario.list()}" optionKey="id" required="" value="${pontoInstance?.usuario?.id}" optionValue="${{ it.username}}" class="many-to-one"/>
</div>