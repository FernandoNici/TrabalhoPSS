<%@ page import="condominion.Solicitacao" %>



<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'tipoSolicitacao', 'error')} ">
	<label for="tipoSolicitacao">
		<g:message code="solicitacao.tipoSolicitacao.label" default="Tipo Solicitacao" />
		
	</label>
	<g:select name="tipoSolicitacao" from="${solicitacaoInstance.constraints.tipoSolicitacao.inList}" value="${solicitacaoInstance?.tipoSolicitacao}" valueMessagePrefix="solicitacao.tipoSolicitacao" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'dataSolicitacao', 'error')} required">
	<label for="dataSolicitacao">
		<g:message code="solicitacao.dataSolicitacao.label" default="Data Solicitacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataSolicitacao" precision="day"  value="${solicitacaoInstance?.dataSolicitacao}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="solicitacao.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${solicitacaoInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="solicitacao.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" value="${solicitacaoInstance?.status}" />
</div>

<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="solicitacao.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${comum.Usuario.list()}" optionKey="nome" required="" value="${solicitacaoInstance?.usuario?.id}" class="many-to-one"/>
</div>

