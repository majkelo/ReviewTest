<%@ page import="com.example.Review" %>



<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="review.comment.label" default="Comment" />
		
	</label>
	<g:select name="comment" from="${com.example.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${reviewInstance?.comment*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="review.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${reviewInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'game', 'error')} required">
	<label for="game">
		<g:message code="review.game.label" default="Game" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="game" name="game.id" from="${com.example.Game.list()}" optionKey="id" required="" value="${reviewInstance?.game?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'numberOfComments', 'error')} required">
	<label for="numberOfComments">
		<g:message code="review.numberOfComments.label" default="Number Of Comments" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfComments" type="number" value="${reviewInstance.numberOfComments}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'review', 'error')} required">
	<label for="review">
		<g:message code="review.review.label" default="Review" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="review" required="" value="${reviewInstance?.review}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="review.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${reviewInstance?.status}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="review.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.example.User.list()}" optionKey="id" required="" value="${reviewInstance?.user?.id}" class="many-to-one"/>

</div>

