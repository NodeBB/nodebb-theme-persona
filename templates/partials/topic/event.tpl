<li component="topic/event" class="timeline-event text-muted" data-topic-event-id="{./id}" data-topic-event-type="{./type}">
	<div class="timeline-badge">
		<i class="fa {{{ if ./icon }}}{./icon}{{{ else }}}fa-circle{{{ end }}}"></i>
	</div>
	<span class="timeline-text">
		{{{ if ./href}}}
		<a href="{config.relative_path}{./href}">{./text}</a>
		{{{ else }}}
		{./text}
		{{{ end }}}
		&nbsp;
	</span>
	{{{ if ./user }}}
		{{{ if ./user.system }}}
		<span class="timeline-text">[[global:system-user]]</span>&nbsp;
		{{{ else }}}
		<span><a href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "16px", true)} &nbsp; {./user.username}</a></span>&nbsp;
		{{{ end }}}
	{{{ end }}}
	<span class="timeago timeline-text" title="{./timestampISO}"></span>

	{{{ if privileges.isAdminOrMod }}}
		&nbsp;<span component="topic/event/delete" data-topic-event-id="{./id}" data-topic-event-type="{./type}" class="timeline-text pointer" title="[[topic:delete-event]]"><i class="fa fa-trash"></i></span>
	{{{ end }}}
</li>

