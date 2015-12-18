
<%@ page import="com.example.Review" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-review" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-review" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="date" title="${message(code: 'review.date.label', default: 'Date')}" />
					
						<th><g:message code="review.game.label" default="Game" /></th>
					
						<g:sortableColumn property="numberOfComments" title="${message(code: 'review.numberOfComments.label', default: 'Number Of Comments')}" />
					
						<th><g:message code="review.review.length" default="Length of review" /></th>
						
						<g:sortableColumn property="review" title="${message(code: 'review.review.label', default: 'Review')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'review.status.label', default: 'Status')}" />
					
						<th><g:message code="review.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reviewInstanceList}" status="i" var="reviewInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reviewInstance.id}">${fieldValue(bean: reviewInstance, field: "date")}</g:link></td>
					
						<td>${fieldValue(bean: reviewInstance, field: "game")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "numberOfComments")}</td>
					
						<td>${reviewInstance.review.size()}</td>
						
						<td>${fieldValue(bean: reviewInstance, field: "review")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reviewInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
