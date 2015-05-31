<%@ page import="br.com.ufscar.dsw.agenda.domain.Contato" %>



<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="contato.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="70" required="" value="${contatoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="contato.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" maxlength="70" required="" value="${contatoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="contato.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${contatoInstance?.dataNascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="contato.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${br.com.ufscar.dsw.agenda.reference.Sexo?.values()}" keys="${br.com.ufscar.dsw.agenda.reference.Sexo.values()*.name()}" required="" value="${contatoInstance?.sexo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'celular', 'error')} required">
	<label for="celular">
		<g:message code="contato.celular.label" default="Celular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celular" required="" value="${contatoInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="contato.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${contatoInstance?.telefone}"/>

</div>

