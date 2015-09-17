<%@ page import="condominion.Ocorrencia" %>



<div class="fieldcontain ${hasErrors(bean: ocorrenciaInstance, field: 'assunto', 'error')} ">
	<label for="assunto">
		<g:message code="ocorrencia.assunto.label" default="Assunto" />
		
	</label>
	<g:textField name="assunto" value="${ocorrenciaInstance?.assunto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ocorrenciaInstance, field: 'textoOcorrencia', 'error')} ">
	<label for="textoOcorrencia">
		<g:message code="ocorrencia.textoOcorrencia.label" default="Texto Ocorrencia" />
		
	</label>
	<g:textArea  name="textoOcorrencia" value="${ocorrenciaInstance?.textoOcorrencia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ocorrenciaInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="ocorrencia.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${ocorrenciaInstance?.data}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: ocorrenciaInstance, field: 'hora', 'error')} ">
	<label for="hora">
		<g:message code="ocorrencia.hora.label" default="Hora" />
		
	</label>
	<g:textField name="hora" value="${ocorrenciaInstance?.hora}"/>
</div>

