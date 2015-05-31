
<%@ page import="br.com.ufscar.dsw.agenda.domain.Contato"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'contato.label', default: 'Contato')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#show-contato" class="skip" tabindex="-1">
		<g:message code="default.link.skip.label" default="Skip to content&hellip;" />
	</a>
	<div class="nav" role="navigation">
		<ul>
			<li>
				<a class="home" href="${createLink(uri: '/')}">
					<g:message code="default.home.label" />
				</a>
			</li>
			<li>
				<g:link class="list" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link>
			</li>
			<li>
				<g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link>
			</li>
		</ul>
	</div>
	<div id="show-contato" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list contato">
			<g:if test="${contatoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label">
						<g:message code="contato.nome.label" default="Nome" />
					</span>
					<span class="property-value" aria-labelledby="nome-label">
						<g:fieldValue bean="${contatoInstance}" field="nome" />
					</span>
				</li>
			</g:if>
			<g:if test="${contatoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label">
						<g:message code="contato.email.label" default="Email" />
					</span>
					<span class="property-value" aria-labelledby="email-label">
						<g:fieldValue bean="${contatoInstance}" field="email" />
					</span>
				</li>
			</g:if>
			<g:if test="${contatoInstance?.dataNascimento}">
				<li class="fieldcontain">
					<span id="dataNascimento-label" class="property-label">
						<g:message code="contato.dataNascimento.label" default="Data Nascimento" />
					</span>
					<span class="property-value" aria-labelledby="dataNascimento-label">
						<g:formatDate date="${contatoInstance?.dataNascimento}" format="dd/MM/yyyy" />
					</span>
				</li>
			</g:if>
			<g:if test="${contatoInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label">
						<g:message code="contato.sexo.label" default="Sexo" />
					</span>
					<span class="property-value" aria-labelledby="sexo-label">
						<g:fieldValue bean="${contatoInstance}" field="sexo" />
					</span>
				</li>
			</g:if>
			<g:if test="${contatoInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label">
						<g:message code="contato.celular.label" default="Celular" />
					</span>
					<span class="property-value" aria-labelledby="celular-label">
						<g:fieldValue bean="${contatoInstance}" field="celular" />
					</span>
				</li>
			</g:if>
			<g:if test="${contatoInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label">
						<g:message code="contato.telefone.label" default="Telefone" />
					</span>
					<span class="property-value" aria-labelledby="telefone-label">
						<g:fieldValue bean="${contatoInstance}" field="telefone" />
					</span>
				</li>
			</g:if>
		</ol>
		<g:form url="[resource:contatoInstance, action:'delete']" method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${contatoInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
