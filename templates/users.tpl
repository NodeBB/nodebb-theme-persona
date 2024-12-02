<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="users">
	<div class="d-flex justify-content-between align-items-center mb-3 flex-wrap gap-3">
		<!-- IMPORT partials/users_list_menu.tpl -->

		<div class="d-flex gap-2 align-items-center">
			{{{ if showInviteButton }}}
			<button component="user/invite" class="btn btn-sm btn-success text-nowrap"><i class="fa fa-users"></i> [[users:invite]]</button>
			{{{ end }}}

			{{{ if displayUserSearch }}}
			<div class="search">
				<div class="input-group">
					<input class="form-control form-control-sm" id="search-user" type="text" placeholder="[[global:search]]"/>
					<button class="btn btn-sm btn-primary" type="button">
						<i component="user/search/icon" class="fa fa-search"></i>
					</button>
				</div>
			</div>
			{{{ end }}}
		</div>
	</div>

	<!-- IMPORT partials/users_list.tpl -->

	<!-- IMPORT partials/paginator.tpl -->
</div>
