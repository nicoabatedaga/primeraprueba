<%@ page import="primeraprueba.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${usuarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'fechaAlta', 'error')} required">
	<label for="fechaAlta">
		<g:message code="usuario.fechaAlta.label" default="Fecha Alta" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaAlta" precision="day"  value="${usuarioInstance?.fechaAlta}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'trucos', 'error')} ">
	<label for="trucos">
		<g:message code="usuario.trucos.label" default="Trucos" />
		
	</label>
	<g:select name="trucos" from="${primeraprueba.Truco.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.trucos*.id}" class="many-to-many"/>

</div>

