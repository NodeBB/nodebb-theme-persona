{{{ if ./items.length }}}
<li component="topic/event" class="timeline-event text-muted d-flex align-items-start gap-2 pt-4 px-2 px-lg-0">
	<div class="timeline-badge my-2 my-lg-1">
		<i class="fa fa-fw {{{ if ./icon }}}{./icon}{{{ else }}}fa-circle{{{ end }}} small"></i>
	</div>
	<div class="d-flex flex-column align-items-start">
		<button class="btn btn-sm btn-ghost" type="button" data-bs-toggle="collapse" data-bs-target="#event-collapse-{./id}" aria-expanded="false" aria-controls="collapseExample">
			{{tx("topic:announcers-x", ./items.length)}}
		</button>
		<div class="collapse align-self-start" id="event-collapse-{./id}">
			<div component="topic/event/items">
				{{{ each ./items }}}
				<div class="d-flex gap-2 pt-3 pt-lg-2" data-topic-event-id="{./id}" data-topic-event-type="{./type}">
					<span class="timeline-text small d-flex align-items-center gap-1 flex-wrap flex-grow-1 flex-lg-grow-0">
						{{./text}}
					</span>
					{{{ if (privileges.isAdminOrMod && ./id) }}}
					<span component="topic/event/delete" data-topic-event-id="{./id}" data-topic-event-type="{./type}" class="timeline-text pointer" title="{{tx("topic:delete-event")}}"><i class="fa fa-trash"></i></span>
					{{{ end }}}
				</div>
				{{{ end }}}
			</div>
		</div>
	</div>
</li>
{{{ else }}}
<li component="topic/event" class="timeline-event text-muted d-flex align-items-start align-items-lg-center gap-2 pt-4 px-2 px-lg-0" data-topic-event-id="{./id}" data-topic-event-type="{./type}">
	<div class="timeline-badge">
		<i class="fa fa-fw {{{ if ./icon }}}{./icon}{{{ else }}}fa-circle{{{ end }}} small"></i>
	</div>
	<span class="timeline-text small d-flex align-items-center gap-1 flex-wrap flex-grow-1 flex-lg-grow-0">
		{{./text}}
	</span>
	{{{ if (privileges.isAdminOrMod && ./id) }}}
	<span component="topic/event/delete" data-topic-event-id="{./id}" data-topic-event-type="{./type}" class="timeline-text pointer" title="{{tx("topic:delete-event")}}"><i class="fa fa-trash"></i></span>
	{{{ end }}}
</li>
{{{ end }}}