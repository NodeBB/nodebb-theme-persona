<li component="topic/event" class="timeline-event" data-topic-event-id="{id}">
	<div class="timeline-badge">
		<i class="fa {{{ if icon }}}{icon}{{{ else }}}fa-circle{{{ end }}}"></i>
	</div>
	<span class="timeline-text">{text}&nbsp;</span>

	{{{ if user }}}
		{{{ if !./user.system }}}<span><a href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(user, "xs", true)}&nbsp;{./user.username}</a></span>&nbsp;{{{ end }}}
		{{{ if ./user.system }}}<span class="timeline-text">[[global:system-user]]</span>&nbsp;{{{ end }}}
	{{{ else }}}
		<span class="timeline-text">[[global:unknown-user]]</span>&nbsp;
	{{{ end }}}

	<span class="timeago timeline-text" title="{timestampISO}"></span>
</li>