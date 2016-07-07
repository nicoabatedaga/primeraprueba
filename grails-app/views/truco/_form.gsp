<%@ page import="primeraprueba.Truco" %>



<div class="fieldcontain ${hasErrors(bean: trucoInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="truco.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="titulo" cols="40" rows="5" maxlength="1000" required="" value="${trucoInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trucoInstance, field: 'texto', 'error')} required">
	<label for="texto">
		<g:message code="truco.texto.label" default="Texto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="texto" cols="40" rows="5" maxlength="999999" required="" value="${trucoInstance?.texto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trucoInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="truco.comentarios.label" default="Comentarios" />
		
	</label>
	<g:select name="comentarios" from="${primeraprueba.Comentario.list()}" multiple="multiple" optionKey="id" size="5" value="${trucoInstance?.comentarios*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trucoInstance, field: 'denunciado', 'error')} ">
	<label for="denunciado">
		<g:message code="truco.denunciado.label" default="Denunciado" />
		
	</label>
	<g:checkBox name="denunciado" value="${trucoInstance?.denunciado}" />

</div>

<div class="fieldcontain ${hasErrors(bean: trucoInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="truco.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${trucoInstance?.fecha}"  />

</div>

