{{{ if !notifications.length }}}
<div class="no-notifs text-center p-4 d-flex flex-column">
	<div class="p-4"><i class="fa-solid fa-wind fs-2 text-muted"></i></div>
	<div class="text-xs fw-semibold text-muted">[[notifications:no-notifs]]</div>
</div>
{{{ end }}}

{{{ each notifications }}}
<div class="{./readClass}" data-nid="{./nid}" data-path="{./path}" {{{ if ./pid }}}data-pid="{./pid}"{{{ end }}}{{{ if ./tid }}}data-tid="{./tid}"{{{ end }}}>
	<div class="d-flex gap-1 justify-content-between">
		<div class="btn-ghost-sm d-flex gap-2 flex-grow-1 align-items-start">
			<a class="flex-grow-0 flex-shrink-0" href="{{{ if ./user.userslug}}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
				{{{ if (./image && ./from) }}}
				<img class="avatar avatar-rounded" style="--avatar-size: 32px;" src="{./image}" />
				{{{ else }}}
				{{{ if ./icon }}}
				<div class="avatar avatar-rounded" style="--avatar-size: 32px;"><i class="text-secondary fa {./icon}"></i></div>
				{{{ else }}}
				<div class="avatar avatar-rounded" style="--avatar-size: 32px; background-color: {./user.icon:bgColor};">{./user.icon:text}</div>
				{{{ end }}}
				{{{ end }}}
			</a>

			<div class="d-flex flex-grow-1 flex-column align-items-start position-relative">
				<a href="{./path}" class="text-decoration-none d-inline-block text-reset text-break text-sm ff-sans stretched-link" component="notifications/item/link">
					{./bodyShort}
				</a>
				<div class="text-xs text-muted">{{{ if ./timeagoLong }}}{./timeagoLong}{{{ else }}}<span class="timeago" title="{./datetimeISO}"></span>{{{ end }}}</div>
			</div>
		</div>
		<div>
			{{{ if ./nid }}}
			<button class="mark-read btn-ghost-sm flex-grow-0 flex-shrink-0 p-1" style="width: 1.5rem; height: 1.5rem;">
				<i class="unread fa fa-2xs fa-circle text-primary {{{ if ./read }}}hidden{{{ end }}}" aria-label="[[unread:mark-as-read]]"></i>
				<i class="read fa fa-2xs fa-circle-o text-secondary {{{ if !./read }}}hidden{{{ end }}}" aria-label="[[unread:mark-as-unread]]"></i>
			</button>
			{{{ end }}}
		</div>
	</div>
</div>
{{{ if !@last }}}
<hr class="my-1" />
{{{ end }}}
{{{ end }}}
