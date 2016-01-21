<div class="users">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="row">
		<div class="col-lg-6">
		<!-- IMPORT partials/users_list_menu.tpl -->
		</div>
		<div class="col-lg-3">
			<!-- IF inviteOnly -->
			<!-- IF loggedIn -->
			<button component="user/invite" class="btn btn-success pull-right"><i class="fa fa-users"></i> [[users:invite]]</button>
			<!-- ENDIF loggedIn -->
			<!-- ENDIF inviteOnly -->
		</div>
		<!-- IF function.displayUserSearch, {config.allowGuestUserSearching} -->
		<div class="col-lg-3">
			<div class="search">
				<div class="input-group">
					<input class="form-control" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
					<span class="input-group-addon">
						<i class="fa fa-search"></i>
					</span>
				</div>
			</div>
		</div>
		<!-- ENDIF function.displayUserSearch -->
	</div>

	<ul id="users-container" class="users-container">
		<!-- IMPORT partials/users_list.tpl -->
		<!-- IF anonymousUserCount -->
		<li class="users-box anon-user">
			<div class="user-icon">G</div>
			<br/>
			<div class="user-info">
				<span id="online_anon_count">{anonymousUserCount}</span>
				<span>[[global:guests]]</span>
			</div>
		</li>
		<!-- ENDIF anonymousUserCount -->
	</ul>

	<div class="text-center {loadmore_display}">
		<button id="load-more-users-btn" class="btn btn-primary">[[users:load_more]]</button>
	</div>
	<br/>
</div>
