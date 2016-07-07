<%@ page import="primeraprueba.Comentario" %>



<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'autor', 'error')} required">
	<label for="autor">
		<g:message code="comentario.autor.label" default="Autor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="autor" maxlength="50" required="" value="${comentarioInstance?.autor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'texto', 'error')} required">
	<label for="texto">
		<g:message code="comentario.texto.label" default="Texto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="texto" cols="40" rows="5" maxlength="999999" required="" value="${comentarioInstance?.texto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: comentarioInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="comentario.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${comentarioInstance?.fecha}"  />

</div>

