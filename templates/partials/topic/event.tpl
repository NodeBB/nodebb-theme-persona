<li component="topic/event" class="timeline-event text-muted" data-topic-event-id="{./id}" data-topic-event-type="{./type}">
	<div class="timeline-badge">
		<i class="fa {{{ if ./icon }}}{./icon}{{{ else }}}fa-circle{{{ end }}}"></i>
	</div>
	<span class="timeline-text">
		{./text}
	</span>
	{{{ if (privileges.isAdminOrMod && ./id) }}}
		&nbsp;<span component="topic/event/delete" data-topic-event-id="{./id}" data-topic-event-type="{./type}" class="timeline-text pointer" title="[[topic:delete-event]]"><i class="fa fa-trash"></i></span>
	{{{ end }}}
</li>

