
<div class="notifications">

	<!-- IMPORT partials/breadcrumbs.tpl -->
	<div class="btn-toolbar justify-content-end" role="toolbar">
		<div class="btn-group me-2">
			<button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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

		<div class="btn-group">
			<button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<i class="fa fa-eye"></i>
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu dropdown-menu-end" role="menu" aria-labelledby="dropdownMenu1">
				<li role="presentation"><a class="dropdown-item" role="menuitem" href="#" component="notifications/mark_all">[[notifications:mark-all-read]]</a></li>
			</ul>
		</div>
	</div>

	<hr />

	<div class="alert alert-info {{{ if notifications.length }}}hidden{{{ end }}}">
		[[notifications:no-notifs]]
	</div>

	<ul class="notifications-list list-unstyled" data-nextstart="{nextStart}">
	{{{each notifications}}}
		<li data-nid="{notifications.nid}" class="{notifications.readClass} {{{ if !./read}}}text-bg-warning{{{ end }}} d-flex pointer border p-3 mb-2" component="notifications/item">
			<div class="me-2">
				{{{ if notifications.from }}}
				{buildAvatar(notifications.user, "24px", true)}
				{{{ else }}}
				{{{ if notifications.image }}}
				<img width="24" height="24" src="{notifications.image}" />
				{{{ end }}}
				{{{ end }}}
			</div>
			<div>
				<p class="mb-1">
					<a class="text-reset" component="notifications/item/link" href="{notifications.path}">{notifications.bodyShort}</a>
				</p>
				<p class="timestamp">
					<span class="timeago small text-reset" title="{notifications.datetimeISO}"></span>
				</p>
			</div>
		</li>
	{{{end}}}
	</ul>
	<!-- IMPORT partials/paginator.tpl -->
</div>


