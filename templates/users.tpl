<div class="users">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<ul class="nav nav-pills">
		<li><a href='{config.relative_path}/users/online'>[[global:online]]</a></li>
		<li><a href='{config.relative_path}/users/sort-posts'>[[users:top_posters]]</a></li>
		<li><a href='{config.relative_path}/users/sort-reputation'>[[users:most_reputation]]</a></li>
		<li><a href='{config.relative_path}/users/map'>[[users:map]]</a></li>
		<!-- IF function.displayUserSearch, {config.allowGuestUserSearching} -->
		<li><a href='{config.relative_path}/users/search'>[[users:search]]</a></li>
		<!-- ENDIF function.displayUserSearch -->
		<!-- IF inviteOnly -->
		<button component="user/invite" class="btn btn-success pull-right"><i class="fa fa-users"></i> [[users:invite]]</button>
		<!-- ENDIF inviteOnly -->
	</ul>

	<br />

	<div class="search {search_display} well">
		<div class="input-group">
			<input class="form-control" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
			<span class="input-group-addon">
				<span id="user-notfound-notify"><i class="fa fa-search"></i></span>
			</span>
		</div>
	</div>

	<ul id="users-container" class="users-container">
		<!-- IMPORT partials/users_list.tpl -->
		<!-- IF anonymousUserCount -->
		<li class="users-box anon-user">
			<img src="{defaultGravatar}" />
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
</div>
