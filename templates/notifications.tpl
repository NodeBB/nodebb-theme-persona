
<div class="notifications">

	<!-- IMPORT partials/breadcrumbs.tpl -->
	<div class="d-flex gap-2 justify-content-end" role="toolbar">
		<div class="btn-group me-2">
			<button class="btn btn-ghost btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				{{{ if selectedFilter }}}{selectedFilter.name}{{{ end}}} <span class="caret"></span>
			</button>
			<ul class="dropdown-menu dropdown-menu-end" role="menu">
				{{{ each filters }}}
				{{{ if filters.separator }}}
				<li role="separator" class="dropdown-divider"></li>
				{{{ else }}}
				<li role="presentation" class="category">
					<a class="dropdown-item" role="menuitem" href="{config.relative_path}/notifications?filter={filters.filter}"><i class="fa fa-fw {{{ if filters.selected }}}fa-check{{{ end }}}"></i> {filters.name}</a>
				</li>
				{{{ end }}}
				{{{ end }}}
			</ul>
		</div>

		<button component="notifications/mark_all" class="btn btn-ghost btn-sm" type="button">
			<i class="fa fa-eye"></i>
			[[notifications:mark-all-read]]
		</button>
	</div>

	<hr />

	<div class="alert alert-info {{{ if notifications.length }}}hidden{{{ end }}}">
		[[notifications:no-notifs]]
	</div>

	<ul component="notifications/list" class="notifications-list list-unstyled" data-nextstart="{nextStart}">
	{{{each notifications}}}
		<li data-nid="{notifications.nid}" class="{notifications.readClass} {{{ if !./read}}}unread{{{ end }}} d-flex pointer border p-3 mb-2 d-flex gap-2" component="notifications/item">
			<div>
				{{{ if notifications.from }}}
				{buildAvatar(notifications.user, "24px", true)}
				{{{ else }}}
				{{{ if notifications.image }}}
				<img width="24" height="24" src="{notifications.image}" />
				{{{ end }}}
				{{{ end }}}
			</div>
			<div class="d-flex flex-column gap-1 flex-grow-1">
				<a class="text-reset" component="notifications/item/link" href="{notifications.path}">{notifications.bodyShort}</a>
				<span class="timeago text-sm text-secondary" title="{notifications.datetimeISO}"></span>
			</div>
			<div>
				{{{ if ./nid }}}
				<button class="mark-read btn btn-ghost btn-sm d-flex align-items-center justify-content-center flex-grow-0 flex-shrink-0 p-1" style="width: 1.5rem; height: 1.5rem;">
					<i class="unread fa fa-2xs fa-circle text-primary {{{ if ./read }}}hidden{{{ end }}}" aria-label="[[unread:mark-as-read]]"></i>
					<i class="read fa fa-2xs fa-circle-o text-secondary {{{ if !./read }}}hidden{{{ end }}}" aria-label="[[unread:mark-as-unread]]"></i>
				</button>
				{{{ end }}}
			</div>
		</li>
	{{{end}}}
	</ul>
	<!-- IMPORT partials/paginator.tpl -->
</div>


