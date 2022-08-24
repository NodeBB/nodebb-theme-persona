<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="users">
	<div class="row">
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
					<input class="form-control" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
					<div class="input-group-btn">
						<button class="btn btn-primary">
							<i component="user/search/icon" class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- ENDIF displayUserSearch -->
	</div>

	<ul id="users-container" class="users-container">
		<!-- IMPORT partials/users_list.tpl -->
		<!-- IF anonymousUserCount -->
		<li class="users-box anon-user">
			<div class="avatar avatar-lg avatar-rounded">G</div>
			<br/>
			<div class="user-info">
				<span id="online_anon_count">{anonymousUserCount}</span>
				<span>[[global:guests]]</span>
			</div>
		</li>
		<!-- ENDIF anonymousUserCount -->
	</ul>

	<!-- IMPORT partials/paginator.tpl -->
</div>
