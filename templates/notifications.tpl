
<div class="notifications">

	<!-- IMPORT partials/breadcrumbs.tpl -->
	<div class="d-flex gap-2 justify-content-end" role="toolbar">
		<div class="dropdown me-2">
			<button class="btn btn-ghost btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				{{{ if selectedFilter }}}{{tx(selectedFilter.name)}}{{{ end}}} <span class="caret"></span>
			</button>
			<ul class="dropdown-menu dropdown-menu-end p-1" role="menu">
				{{{ each filters }}}
				{{{ if filters.separator }}}
				<li role="separator" class="dropdown-divider"></li>
				{{{ else }}}
				<li role="presentation" class="category">
					<a class="dropdown-item rounded-1 d-flex gap-3 align-items-center justify-content-between" role="menuitem" href="{config.relative_path}/notifications?filter={filters.filter}">
						<span><i class="fa fa-fw {{{ if filters.selected }}}fa-check{{{ end }}}"></i> {{tx(filters.name)}}</span>
						<span class="">{./count}</span>
					</a>
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
		<!-- IMPORT partials/notifications_list.tpl -->
	</ul>
	<!-- IMPORT partials/paginator.tpl -->
</div>


