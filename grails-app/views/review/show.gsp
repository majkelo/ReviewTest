
<%@ page import="com.example.Review" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-review" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-review" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list review">
			
				<g:if test="${reviewInstance?.comment}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="review.comment.label" default="Comment" /></span>
					
						<g:each in="${reviewInstance.comment}" var="c">
						<span class="property-value" aria-labelledby="comment-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="review.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${reviewInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.game}">
				<li class="fieldcontain">
					<span id="game-label" class="property-label"><g:message code="review.game.label" default="Game" /></span>
					
						<span class="property-value" aria-labelledby="game-label"><g:link controller="game" action="show" id="${reviewInstance?.game?.id}">${reviewInstance?.game?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.numberOfComments}">
				<li class="fieldcontain">
					<span id="numberOfComments-label" class="property-label"><g:message code="review.numberOfComments.label" default="Number Of Comments" /></span>
					
						<span class="property-value" aria-labelledby="numberOfComments-label"><g:fieldValue bean="${reviewInstance}" field="numberOfComments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.review}">
				<li class="fieldcontain">
					<span id="review-label" class="property-label"><g:message code="review.review.label" default="Review" /></span>
					
						<span class="property-value" aria-labelledby="review-label"><g:fieldValue bean="${reviewInstance}" field="review"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="review.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${reviewInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="review.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${reviewInstance?.user?.id}">${reviewInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:reviewInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${reviewInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
