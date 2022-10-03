<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="users">
	<div class="row mb-3">
		<div class="col-lg-6">
		<!-- IMPORT partials/users_list_menu.tpl -->
		</div>
		<div class="col-3 text-end">
			<!-- IF showInviteButton -->
			<button component="user/invite" class="btn btn-success"><i class="fa fa-users"></i> [[users:invite]]</button>
			<!-- ENDIF showInviteButton -->
		</div>
		<!-- IF displayUserSearch -->
		<div class="col-lg-3 col-9">
			<div class="search">
				<div class="input-group">
					<input class="form-control" id="search-user" type="text" placeholder="[[global:search]]"/>
					<button class="btn btn-primary" type="button">
						<i component="user/search/icon" class="fa fa-search"></i>
					</button>
				</div>
			</div>
		</div>
		<!-- ENDIF displayUserSearch -->
	</div>

	<!-- IMPORT partials/users_list.tpl -->

	<!-- IMPORT partials/paginator.tpl -->
</div>
