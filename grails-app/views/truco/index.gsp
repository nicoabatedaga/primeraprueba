
<%@ page import="primeraprueba.Truco" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'truco.label', default: 'Truco')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-truco" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-truco" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'truco.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="texto" title="${message(code: 'truco.texto.label', default: 'Texto')}" />
					
						<g:sortableColumn property="denunciado" title="${message(code: 'truco.denunciado.label', default: 'Denunciado')}" />
					
						<g:sortableColumn property="fecha" title="${message(code: 'truco.fecha.label', default: 'Fecha')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trucoInstanceList}" status="i" var="trucoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trucoInstance.id}">${fieldValue(bean: trucoInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: trucoInstance, field: "texto")}</td>
					
						<td><g:formatBoolean boolean="${trucoInstance.denunciado}" /></td>
					
						<td><g:formatDate date="${trucoInstance.fecha}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trucoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
